import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20settings/AccountBox_Info.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentGeometry.bottomCenter,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Color(0xFF1582DF),
                ),
                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 120,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA), //Color(0xFFF5F7FA)
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
      
                Positioned(
                  bottom: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("img/agency.jpg"),
                    radius: 40,
                  ),
                ),
      
                Positioned(
                  bottom: 80,
                  right: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("icons/edit.svg",height: 20,width: 20,),
                      // IconButton(onPressed: (){}, icon: Icon(Icons.edit,)),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, //  
                          minimumSize: Size(0, 0), // 
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        child: Text("Edit",style: TextStyle(fontSize: 16),),
                      ),
                    ],
                  ),
                ),
      
                Positioned(
                  bottom: 50,
                  child: Text(
                    "Maajid teboun ",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
      
                Positioned(
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF3FAFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 30,
      
                        // width: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.phone, color: Color(0xFF1582DF)),
                              SizedBox(width: 2),
                              Text(
                                "+213 794442926",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF3FAFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 30,
      
                        // width: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.email, color: Color(0xFF1582DF)),
                              SizedBox(width: 2),
                              Text(
                                "MMMMM@gmail.com",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ///////////////////// SECOND PART 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Account",style: Theme.of(context).textTheme.bodyLarge,),
                  SizedBox(height: 4,),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF3FAFF),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xFF1582DF))
                    ),
                    height: 195,
                    width: double.infinity,
                    child: Column(
                      children: [
                        AccountboxInfo(icon_parameter: Icons.notifications_none_outlined, account_parameter: "Notification"),
                        AccountboxInfo(icon_parameter: Icons.favorite_border, account_parameter: "Favorite"),
                        AccountboxInfo(icon_parameter: Icons.restore_rounded, account_parameter: "Reservations"),
                        AccountboxInfo(icon_parameter: Icons.language_outlined, account_parameter: "Language"),
                      ],
                    ),
                    
                  ),
                  SizedBox(height: 4,) ,
      
                  Text("Parametres",style: Theme.of(context).textTheme.bodyLarge,) ,
      
                  SizedBox(height: 4,) ,
      
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF3FAFF),
                      border: Border.all(color: Color(0xFF1582DF)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      children: [
                        AccountboxInfo(icon_parameter: Icons.privacy_tip_outlined, account_parameter: "Privacy"),
                        AccountboxInfo(icon_parameter: Icons.info_outline_rounded, account_parameter: "About"),
                        AccountboxInfo(icon_parameter: Icons.logout_outlined, account_parameter: "Logout")
                      ],
                    ),

                  )
      
      
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
