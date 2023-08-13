import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Province extends StatelessWidget {
  const Province({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Province",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 500, child: Image.asset("assets/image5.png")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "SINDH:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Pros:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Economic Hub (Karachi): Karachi, the provincial capital, is Pakistan's largest city and financial center.\n2. Port City: Karachi's port is a major hub for international trade and commerce.\n3. Cultural Diversity: The province's diversity is reflected in its languages, traditions, and historical landmarks.\n4. Educational and Medical Facilities: Karachi has reputable educational institutions and medical facilities.\n5. Tourism Potential: Coastal areas like Clifton Beach and historical sites like Mohenjo-daro attract tourists.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Cons:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Infrastructure Disparities: Karachi's development contrasts with underdeveloped rural areas.\n2. Ethnic Tensions: The province has experienced ethnic and political tensions.\n3. Water Shortages: Sindh faces water scarcity, leading to agricultural and economic challenges.\n4. Urban Issues: Rapid urbanization in Karachi has led to issues like slums and inadequate public services.\n5.Natural Disasters: The coastal areas are vulnerable to cyclones and flooding.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(width: 500, child: Image.asset("assets/l.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "PUNJAB:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Pros:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Economic Hub: Punjab is the most economically developed province, contributing significantly to the national GDP.\n2. Agricultural Powerhouse: The province's fertile land supports extensive agricultural production, including crops like wheat, rice, and cotton.\n3. Educational Institutions: Punjab is home to some of Pakistan's top educational institutions, including universities and schools.\n4. Cultural Heritage: The province has historical significance with ancient sites and a rich cultural heritage.\n5. Transport Infrastructure: Punjab has well-connected road and rail networks, facilitating trade and transportation.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Cons:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Population Pressure: High population density can strain resources and infrastructure, leading to challenges in service delivery.\n2. Air Pollution: Major cities like Lahore often face severe air quality issues, impacting public health.\n3. Water Scarcity: The province struggles with water availability and management, affecting agricultural output.\n4. Urban Congestion: Rapid urbanization has led to congestion and inadequate urban planning in some areas.\n5. Environmental Degradation: Agricultural practices and industrial activities can contribute to environmental degradation.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child:
                  Container(width: 500, child: Image.asset("assets/kpk.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "KHYBER PAKHTUNKHWA:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Pros:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Natural Beauty: KP is known for its scenic landscapes, including Swat Valley and the Karakoram Range.\n2. Cultural Diversity: The province is home to various ethnic groups, each with its own traditions.\n3. Tourism Potential: Tourists visit for trekking, mountain climbing, and cultural experiences.\n4. Strategic Location: KP's border with Afghanistan contributes to regional dynamics.\n5. Educational Institutions: The province hosts universities and schools, providing educational opportunities.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Cons:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Security Challenges: Proximity to conflict zones and cross-border issues have led to security concerns.\n2. Underdevelopment: Some border areas suffer from underdevelopment, with limited access to basic services.\n3. Militancy: KP has dealt with militancy and terrorism, affecting stability and development.\n4. Natural Disasters: Earthquakes and floods have historically impacted the province.\n5.Infrastructure Gaps: Some regions lack proper infrastructure and connectivity.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(width: 500, child: Image.asset("assets/b.jpeg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "BALOCHISTAN:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Pros:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Natural Resources: The province holds significant mineral and energy resources.\n2. Strategic Location: Balochistan's coastal location provides opportunities for trade and connectivity.\n3. Cultural Diversity: The province is culturally rich with diverse ethnic backgrounds.\n4. Scenic Landscapes: Balochistan features unique landscapes, deserts, and coastal areas.\n5. Livestock Rearing: Nomadic and pastoral communities rely on livestock and animal husbandry.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Cons:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Development Gap: Balochistan faces underdevelopment, with limited access to education and healthcare.\n2. Ethnic and Political Tensions: There have been tensions between the provincial government and ethnic Baloch groups.\n3. Security Concerns: Insurgency and security issues have hampered development.\n4. Infrastructure Deficiencies: The province lacks proper road and transport infrastructure.\n5. Lack of Basic Services: Many areas lack basic amenities like clean water and healthcare.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(width: 500, child: Image.asset("assets/gb.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "GILGIT-BALTISTAN:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Pros:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Natural Beauty: GB's stunning landscapes attract tourists and mountaineers.\n2. Cultural Diversity: The region is home to various ethnic groups and their distinct cultures.\n3. Strategic Importance: Its location near China and the Kashmir region holds strategic significance.\n4. Biodiversity: GB has rich biodiversity, including unique flora and fauna.\n5. Adventure Tourism: The region is a hub for trekking, climbing, and outdoor activities.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Cons:",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "1. Political Status: GB's political status is disputed, affecting representation and governance.\n2. Limited Autonomy: The region's autonomy is limited despite being an autonomous territory.\n3. Socioeconomic Challenges: Issues with education, healthcare, and infrastructure persist.\n4. Isolation: Geographic isolation can lead to challenges in connectivity and development.\n5. Harsh Climate: Extreme weather conditions can impact daily life and infrastructure.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back to Home")),
            )
          ],
        ),
      ),
    );
  }
}
