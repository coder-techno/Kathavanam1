import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        title: const Text(
          'പ്രൊഫൈൽ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // User Avatar & Name
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF4CAF50),
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'വിബിഷ് ബേബി',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'vibish@kathavanam.com',
              style: TextStyle(fontSize: 14, color: Colors.grey[400]),
            ),
            const SizedBox(height: 24),

            // Stats Row (Stories, Followers, Following)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatItem('കഥകൾ', '12'),
                  _buildDivider(),
                  _buildStatItem('ഫോളോവേഴ്സ്', '1.4k'),
                  _buildDivider(),
                  _buildStatItem('ഫോളോയിങ്', '180'),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Menu Options
            _buildMenuItem(Icons.book_outlined, 'എന്റെ കഥകൾ (My Stories)', () {}),
            _buildMenuItem(Icons.history, 'വായനാ ചരിത്രം (Reading History)', () {}),
            _buildMenuItem(Icons.bookmark_outline, 'സേവ് ചെയ്തവ (Bookmarks)', () {}),
            _buildMenuItem(Icons.edit_note, 'പുതിയ കഥ എഴുതുക (Write Story)', () {}),
            const SizedBox(height: 20),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.redAccent),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'ലോഗ് ഔട്ട് (Logout)',
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String title, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4CAF50)),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Colors.grey[400]),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(height: 30, width: 1, color: Colors.grey[800]);
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF4CAF50)),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
