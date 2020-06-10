import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Colors.white,
           body: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Container(
                 height: 120,
                 padding: EdgeInsets.only(top:50, right: 20, left: 20, bottom: 10),
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.grey[200],
                         ),
                         child: TextField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.search,color: Colors.grey),
                             border: InputBorder.none,
                             hintStyle: TextStyle(color: Colors.grey),
                             hintText: 'search',
                           ),
                         )
                       ),
                     ),
                     SizedBox(width: 20),
                     Icon(Icons.camera_alt, color:Colors.grey[800], size: 30,)
                   ],
                 ),
               ),
               Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline: TextBaseline.alphabetic,
                           children: <Widget>[
                             Text('stories', style: TextStyle(color: Colors.grey[900], fontWeight:FontWeight.bold, fontSize: 22, letterSpacing: 1.2, )),
                             Text('See Archive'),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Container(
                           height: 180,
                           child: ListView(
                             scrollDirection: Axis.horizontal,
                             children: <Widget>[
                               storyBar(
                                 storyImage: 'assets/images/story/3.jpg',
                                  userImage: 'assets/images/story/2.jpg',
                                   userName: 'M Sadqain',
                                   ),
                               storyBar(
                                 storyImage: 'assets/images/story/2.jpg',
                                  userImage: 'assets/images/story/3.jpg',
                                   userName: 'M Owais',
                                   ),
                               storyBar(
                                 storyImage: 'assets/images/story/6.jpg',
                                  userImage: 'assets/images/story/4.jpg',
                                   userName: 'Usama',
                                   ),
                               storyBar(
                                 storyImage: 'assets/images/story/4.jpg',
                                  userImage: 'assets/images/story/5.jpg',
                                   userName: 'Hassnain',
                                   ),
                               storyBar(
                                 storyImage: 'assets/images/story/3.jpg',
                                  userImage: 'assets/images/story/1.jpg',
                                   userName: 'Hyder ali',
                                   ),
                               storyBar(
                                 storyImage: 'assets/images/story/6.jpg',
                                  userImage: 'assets/images/story/2.jpg',
                                   userName: 'Gulam Akbar',
                                   ),

                             ],
                           ),
                         ),
                         SizedBox(height: 40,),
                         feedbar(
                           userName: 'sadqain',
                           userImage: 'assets/images/story/3.jpg',
                           feedTime: '1 hr ago',
                           feedText:  'All the  lorem ipsis uahsdjm aushd uausdd iuasd iuasbdd iasb saidb',
                           feedImage: 'assets/images/story/3.jpg',
                         ),
                             SizedBox(height: 40,),
                         feedbar(
                           userName: 'M owais',
                           userImage: 'assets/images/story/2.jpg',
                           feedTime: '1 hr ago',
                           feedText:  'All the  lorem ipsis uahsdjm aushd uausdd iuasd iuasbdd iasb saidb',
                           feedImage: 'assets/images/story/5.jpg',
                         ),
                             SizedBox(height: 40,),
                         feedbar(
                           userName: 'Usama',
                           userImage: 'assets/images/story/6.jpg',
                           feedTime: '1 hr ago',
                           feedText:  'All the  lorem ipsis uahsdjm aushd uausdd iuasd iuasbdd iasb saidb',
                           feedImage: 'assets/images/story/6.jpg',
                         ),
                             SizedBox(height: 40,),
                         feedbar(
                           userName: 'Hassnain',
                           userImage: 'assets/images/story/4.jpg',
                           feedTime: '1 hr ago',
                           feedText:  'All the  lorem ipsis uahsdjm aushd uausdd iuasd iuasbdd iasb saidb',
                           feedImage: 'assets/images/story/3.jpg',
                         ),
                             SizedBox(height: 40,),
                         feedbar(
                           userName: 'Aliza',
                           userImage: 'assets/images/story/5.jpg',
                           feedTime: '1 hr ago',
                           feedText:  'All the  lorem ipsis uahsdjm aushd uausdd iuasd iuasbdd iasb saidb',
                           feedImage: 'assets/images/story/2.jpg',
                         ),
                      ],
                    ),
                  ),
                ),                
               )
             ],
           ),
      );
  }

Widget storyBar({storyImage, userImage, userName}){
  return AspectRatio(
    aspectRatio: 1.4/2,
    child: Container(
      margin: EdgeInsets.only(right:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover
          )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.1),

          ]
        ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Container(
             width: 40,
             height: 40,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               border: Border.all(color:Colors.white, width: 2),
               image: DecorationImage(
                 image: AssetImage(userImage),
                 fit: BoxFit.cover
                 ),
             ),
           ),
             Text(userName, style: TextStyle(color:Colors.white),),
          ],
        ),
      ),
    ),
    );
}

Widget feedbar({userName, userImage, feedTime, feedText, feedImage}){
  return Container(
       margin: EdgeInsets.only(bottom: 20),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Container(
                     width: 50,
                     height: 50,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         image: AssetImage(userImage),
                         fit: BoxFit.cover  
                         )
                     )
                     ),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                        Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                        SizedBox(width: 3,),
                        Text(feedTime , style: TextStyle(color: Colors.grey)),
                       ],
                     )
                 ],
                 ),
                 IconButton(
                   icon: Icon(Icons.more_horiz, size: 30, color:Colors.grey[400]),
                   onPressed: () {

                   },

                 ),
             ],
           ),
           SizedBox(height: 20,),
           Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5,letterSpacing: 1),),
           SizedBox(height: 20,),
           Container(
             height: 200,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               image: DecorationImage(
                 image: AssetImage(feedImage),
                 fit: BoxFit.cover,
                 ),
             ),
           ),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                  likesemoji(),
                  Transform.translate(
                    offset: Offset(-5, 0),
                     child: loveemoji(),
                  ),
                  Text('2.5k',style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
               ],),
                  Text('400 comments',style: TextStyle(fontSize: 14,color: Colors.grey[800]),),

             ],
             ),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                   likestab(isActive: true),
                   commentBox(),
                   sharing(),
               ],
             )
         ],
       ),
  );
}



Widget likesemoji(){

return Container(
  width: 25,
  height: 25,
  decoration: BoxDecoration(
    color: Colors.blue,
    shape: BoxShape.circle,
    border: Border.all(color: Colors.white),
  ),
  child: Center(
    child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
  ),
);

}


Widget loveemoji(){

return Container(
  width: 25,
  height: 25,
  decoration: BoxDecoration(
    color: Colors.red,
    shape: BoxShape.circle,
    border: Border.all(color: Colors.white),
  ),
  child: Center(
    child: Icon(Icons.favorite, size: 12, color: Colors.white,),
  ),
);


}


Widget likestab({isActive}){

return Container(
padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
decoration: BoxDecoration(
  border: Border.all(color: Colors.grey[200]),
  borderRadius: BorderRadius.circular(50),
),
child: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
     Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
     SizedBox(width: 5,),
     Text('Like', style: TextStyle(color: isActive ? Colors.blue : Colors.grey),),
    ],
  ),
),
);

}


Widget commentBox(){

return Container(
padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
decoration: BoxDecoration(
  border: Border.all(color: Colors.grey[200]),
  borderRadius: BorderRadius.circular(50),
),
child: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
     Icon(Icons.chat, color:  Colors.grey,size: 18,),
     SizedBox(width: 5,),
     Text('Comment', style: TextStyle(color:Colors.grey),),
    ],
  ),
),
);

}


Widget sharing(){

return Container(
padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
decoration: BoxDecoration(
  border: Border.all(color: Colors.grey[200]),
  borderRadius: BorderRadius.circular(50),
),
child: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
     Icon(Icons.share, color:  Colors.grey,size: 18,),
     SizedBox(width: 5,),
     Text('Share', style: TextStyle(color:Colors.grey),),
    ],
  ),
),
);

}


}