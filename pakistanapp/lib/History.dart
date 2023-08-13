import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  const History({super.key});

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
                "History",
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
              child:
                  Container(width: 500, child: Image.asset("assets/quaid.jpg")),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Quaid-e-Azam Mohammad Ali Jinnah, a visionary leader and the driving force behind the creation of Pakistan, holds a paramount significance on the occasion of 14th August. His unwavering commitment, remarkable political acumen, and relentless struggle led to the realization of an independent nation for the Muslims of the Indian subcontinent in 1947. Through his tireless efforts and unyielding determination, Quaid-e-Azam secured the rights of Muslims and crafted a nation based on the principles of equality, justice, and religious freedom. His clarion call for unity, faith, and discipline continues to resonate, reminding us of the sacrifices made to attain the cherished goal of a sovereign Pakistan, making him an enduring symbol of hope, courage, and nationhood on this significant day.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 500, child: Image.asset("assets/allama.jpg")),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Dr. Allama Iqbal, a visionary philosopher, poet, and intellectual luminary, remains a beacon of inspiration on the occasion of 14th August. His poetic verses ignited the flames of self-discovery and empowerment among the Muslims of the subcontinent, propelling them towards the dream of an independent homeland. Iqbal's philosophy emphasized selfhood, spiritual awakening, and unity, serving as a catalyst for the creation of Pakistan. His idea of a separate Muslim state was a catalyst for the struggle that ultimately led to the birth of a sovereign nation. On this day, we remember and honor Allama Iqbal's profound contributions, which continue to resonate as a testament to the intellectual and spiritual foundations upon which Pakistan was built",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 500, child: Image.asset("assets/Fatima.jpg")),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Fatima Jinnah, fondly known as the Mother of the Nation, holds a special place in the hearts of Pakistanis on the occasion of 14th August. As the sister and close confidante of Quaid-e-Azam Mohammad Ali Jinnah, she played a significant role in the struggle for independence and the subsequent shaping of the nation. Her unwavering support, resilience, and commitment to the ideals of freedom, equality, and progress continue to inspire generations. A prominent dental surgeon, an advocate for women's rights, and a symbol of grace and strength, Fatima Jinnah's legacy reminds us of the vital role women played in Pakistan's journey towards nationhood. On this day, we honor her memory and the contributions she made to the birth and growth of our beloved nation",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 500, child: Image.asset("assets/Liaquat.jpg")),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Liaquat Ali Khan, a steadfast leader and Pakistan's first Prime Minister, holds a significant place in the narrative of 14th August. As a close associate of Quaid-e-Azam Mohammad Ali Jinnah, he played a pivotal role in the early years of the nation, navigating the challenges of post-independence governance and laying the groundwork for a stable Pakistan. Liaquat Ali Khan's commitment to democratic principles, economic development, and foreign policy set the tone for the nascent country's trajectory. Tragically, his life was cut short, but his legacy as a statesman and nation-builder endures, reminding us of the sacrifices made to establish and nurture an independent Pakistan.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
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
