import 'package:flutter/material.dart';

class StoryDetailsScreen extends StatelessWidget {
  const StoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Cover Image
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            backgroundColor: const Color(0xFF121212),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: const Color(0xFF1E1E1E),
                child: const Center(
                  child: Icon(
                    Icons.book_rounded,
                    size: 80,
                    color: Color(0xFF4CAF50),
                  ),
                ),
              ),
            ),
          ),
          // Story Info & Chapters
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'മഞ്ഞുപെയ്യുന്ന രാത്രികൾ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // Author Info
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        backgroundColor: Color(0xFF4CAF50),
                        child: Icon(Icons.person, size: 18, color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'അരുൺ രാജ്',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      const Text(
                        '4.8 (320)',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Description / Summary
                  const Text(
                    'സംഗ്രഹം (Description)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'ഇതൊരു മിസ്റ്ററി ത്രില്ലർ കഥയാണ്. മലയോര ഗ്രാമത്തിൽ നടക്കുന്ന ദുരൂഹമായ തിരോധാനങ്ങളും അതിനു പിന്നിലെ രഹസ്യങ്ങളും അന്വേഷിക്കുന്ന ഒരു യുവാവിന്റെ കഥ.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Chapters Section Header
                  const Text(
                    'ചാപ്റ്ററുകൾ (Chapters)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Chapters List
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text(
                            'ചാപ്റ്റർ ${index + 1}: തുടക്കം',
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            '10 മിനിറ്റ് വായന',
                            style: TextStyle(color: Colors.grey[500], fontSize: 12),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
                          onTap: () {
                            // TODO: Open Reader Screen
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
      // Bottom Read Button
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xFF121212),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4CAF50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // TODO: Navigate to Reader Screen
            },
            child: const Text(
              'വായിച്ചുതുടങ്ങുക (Start Reading)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
