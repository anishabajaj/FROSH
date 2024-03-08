import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: GblockcafePage(),
));


class GblockcafePage extends StatefulWidget {
  @override
  _GblockcafePageState createState() => _GblockcafePageState();
}
class _GblockcafePageState extends State<GblockcafePage>
{
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight;
    return Scaffold(
      backgroundColor: Color(0xff121421),
      appBar: AppBar(
        title: Image.asset('assets/images/tietlogo3.png'),
        backgroundColor: Color(0xff1C2031),
        shadowColor: Colors.black,
      ) ,
      body: Stack(
        clipBehavior: Clip.none,
        alignment :Alignment.center,
        children: [
          buildCoverImage(),
          Positioned (
            top : top,
            child : buildProfileImage(),
          ),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Color(0xff121421),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child:   Image(
        image: NetworkImage('https://i.imgur.com/5inuyT7.jpg'),
      ),
    ),

    width: double.infinity,
    height: coverHeight,



  );

  Widget buildProfileImage()=>Container(
    child: Column(
      children: [
        Text(
          'G-BLOCK',


          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 20.0,),
          ),
        ),

        Text('1.Canteen: The canteen provides multi-cuisine food and soft drinks for the students to enjoy at moderate prices.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text('2.Patiala shahi roll: This shop has a roll for all your cravings, be it vegetarian or non-vegetarian.',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),

        Text(' 3. Food hut: This shop has all the relishing food items answering your hunger anytime. ',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        Text(' 4. JP Foods: This place is famous for its mouth-watering variety of non-vegetarian dishes. ',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Colors.white54, letterSpacing: .5,fontSize: 14.0,),
          ),
        ),
        ],
    ),

  );
}