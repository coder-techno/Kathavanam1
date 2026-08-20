import 'package:flutter/material.dart';

class ReaderScreen extends StatefulWidget {
  const ReaderScreen({super.key});

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  double _fontSize = 16.0; // ഡിഫോൾട്ട് ഫോണ്ട് സൈസ്
  bool _isSettingsVisible = false; // ടൂൾബാർ കാണിക്കാൻ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // ഡാർക്ക് മോഡ് ബാക്ക്ഗ്രൗണ്ട്
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        title: const Text(
          'ചാപ്റ്റർ 1: തുടക്കം',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        actions: [
          // ഫോണ്ട് സൈസ് മാറ്റാനുള്ള ബട്ടൺ
          IconButton(
            icon: const Icon(Icons.text_format, color: Color(0xFF4CAF50)),
            onPressed: () {
              setState(() {
                _isSettingsVisible = !_isSettingsVisible;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: Colors.white),
            onPressed: () {
              // TODO: Save Bookmark
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // പ്രധാന കഥാഭാഗം
          GestureDetector(
            onTap: () {
              // സ്ക്രീനിൽ തൊട്ടാൽ സെറ്റിംഗ്സ് ഹൈഡ് ചെയ്യാൻ
              if (_isSettingsVisible) {
                setState(() {
                  _isSettingsVisible = false;
                });
              }
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'മഞ്ഞുപെയ്യുന്ന രാത്രികൾ',
                    style: TextStyle(
                      fontSize: _fontSize + 6,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF4CAF50),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'അങ്ങനെ ആ മലയോര ഗ്രാമത്തിലേക്ക് വണ്ടിയുരുണ്ടു കയറുമ്പോൾ സമയം രാത്രി പന്ത്രണ്ട് മണി കഴിഞ്ഞിരുന്നു. കോടമഞ്ഞു മൂടിയ വഴികളിൽ തെരുവ് വിളക്കുകൾ മങ്ങി കത്തിനിൽക്കുന്നു. ദൂരെ ഏതോ കാട്ടുമൃഗത്തിന്റെ കരച്ചിൽ മാത്രം ആ നിശ്ശബ്ദതയെ ഭേദിച്ചു.\n\n'
                    'കാർ നിർത്തിയത് പഴയൊരു തറവാട്ടു വീടിന്റെ മുന്നിലാണ്. വർഷങ്ങളായി ആരുമില്ലാതെ കിടക്കുന്ന ആ വീടിന് മുന്നിൽ നിന്ന് ചുറ്റും നോക്കിയപ്പോൾ അരുണിന് ചെറിയൊരു ഭയം തോന്നി. എങ്കിലും, താൻ അന്വേഷിച്ചിറങ്ങിയ സത്യം കണ്ടെത്തിയേ തീരൂ എന്ന ദൃഢനിശ്ചയത്തോടെ അവൻ ഗേറ്റ് തള്ളിത്തുറന്നു മുന്നോട്ടു നടന്നു...\n\n'
                    'പഴയ തടിപ്പടവുകൾ ചവിട്ടിക്കയറുമ്പോൾ ഓരോ അടയാളവും വലിയ ശബ്ദമുണ്ടാക്കി. വാതിലിന്റെ പൂട്ട് തുറക്കാൻ ശ്രമിക്കുമ്പോൾ പിറകിൽ ഒരു നിഴൽ അനങ്ങുന്നത് പോലെ അവനു തോന്നി. പെട്ടെന്ന് തിരിഞ്ഞു നോക്കിയെങ്കിലും അവിടെ ആരുമുണ്ടായിരുന്നില്ല. കാറ്റിൽ ആടിയുലയുന്ന മരച്ചില്ലകളുടെ നിഴലുകൾ മാത്രമായിരുന്നു അത്.\n\n'
                    'മുറിക്ക് അകത്തേക്ക് കടന്ന അവൻ ടോർച്ച് തെളിച്ചു. മേശപ്പുറത്തു കിടന്നിരുന്ന ആ പഴയ ഡയറി അവന്റെ കണ്ണിൽ പെട്ടു. അതാണ് അവൻ വർഷങ്ങളായി തേടിക്കൊണ്ടിരുന്ന ആ രഹസ്യങ്ങളുടെ താക്കോൽ...',
                    style: TextStyle(
                      fontSize: _fontSize,
                      color: Colors.grey[300],
                      height: 1.8, // വായനാസുഖത്തിനായി ലൈൻ സ്പേസിങ്
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),

          // ഫോണ്ട് സൈസ് അഡ്ജസ്റ്റ് ചെയ്യാനുള്ള ഫ്ലോട്ടിങ് പാനൽ
          if (_isSettingsVisible)
            Positioned(
              top: 10,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF4CAF50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Font Size:', style: TextStyle(color: Colors.white, fontSize: 12)),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white, size: 18),
                      onPressed: () {
                        setState(() {
                          if (_fontSize > 12) _fontSize -= 2;
                        });
                      },
                    ),
                    Text('${_fontSize.toInt()}', style: const TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.white, size: 18),
                      onPressed: () {
                        setState(() {
                          if (_fontSize < 28) _fontSize += 2;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      // താഴെ വായനാ പുരോഗതി (Reading Progress) കാണിക്കാൻ
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        color: const Color(0xFF1E1E1E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('വായിച്ചുകൊണ്ടിരിക്കുന്നു...', style: TextStyle(color: Colors.grey[400], fontSize: 12)),
            const Text('45% വായിച്ചു', style: TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.bold, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
