import 'package:flutter/material.dart'; 

class AccountboxInfo extends StatelessWidget {
  final IconData icon_parameter ;
  final String account_parameter ;

  AccountboxInfo ({required this.icon_parameter ,required this.account_parameter}) ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // icon 
              Icon(icon_parameter,color: Color(0xFF1582DF),),
              SizedBox(width: 10,),
      
              // text 
              Text(account_parameter,style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 16),)
            ],
          ) ,
          Icon(Icons.arrow_forward_ios,color: Color(0xFF1582DF),)
      
        
        ],
      ),
    );
  }
}