import 'package:flutter/material.dart';
import 'package:openai_reko/screens/result_screen.dart';
import 'package:openai_reko/service/rekomendasi.dart';


const List<String> hpRegions = <String>[
  'Africa',
  'Asia',
  'Europe',
  'North America',
  'Oceania',
  'South America',
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String hpRegionValue = hpRegions.first;
  bool isLoading = false;

  void _getRecommendations() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await RecommendationService.getRecommendation(
        hpRegion: hpRegionValue,
        budget: _controller.text,
      );

      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            gptResponseData: result,
          ),
        ),
      );
    } catch (e) {
      const snackBar = SnackBar(
        content: Text('Gagal mendapatkan rekomendasi'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Phone Recommendation"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Rekomendasi Phone Berbasis AI",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Pilih Region Phone"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    value: hpRegionValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        hpRegionValue = newValue!;
                      });
                    },
                    items: hpRegions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Masukkan Budget"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Masukkan Budget",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Masukkan budget';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _getRecommendations();
                            }
                          },
                          child: const Text("Dapat Rekomendasi"),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}