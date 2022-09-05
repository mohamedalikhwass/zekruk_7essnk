// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:getwidget/getwidget.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../azkar_app/azkar_layout/azkar_cubit/azkar_cubit.dart';
// import '../../azkar_app/azkar_layout/azkar_cubit/azkar_states.dart';
// import '../../network/local/cache_helper.dart';
//
// class AzkarSettingScre  extends StatelessWidget {
//
//   int index =1;
//   int value=1;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AzkarCubit,AzkarStates>(
//       listener: (context, state) {
//
//       },
//       builder: (context, state) {
//         var cubit =AzkarCubit.get(context);
//         //  late double changeText = CacheHelper.getData(key: 'changeTextSize');
//         return Scaffold(
//           appBar: AppBar(title: Text(
//               'الأعدادات' ,
//               textDirection:TextDirection.rtl ,
//               textAlign:TextAlign.right
//           )),
//           body: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//
//               //mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//
//                     FlutterSwitch(
//                       value: cubit.changeSliderTop,
//                       onToggle: (d){
//                         cubit.changeSlider();
//                       },
//                       activeColor: Colors.amber,
//                       showOnOff: true,
//                       inactiveText:'لا',
//                       activeText:'نعم' ,
//                       valueFontSize: 12,
//
//                     ),
//                     Spacer(),
//                     Text('الشريط العلوي',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//
//                     FlutterSwitch(
//                       value: cubit.changeTextTowst,
//                       onToggle: (m){
//                         cubit.changeTextTowstCenter();
//                       },
//                       activeColor: Colors.amber,
//                       showOnOff: true,
//                       inactiveText:'لا',
//                       activeText:'نعم' ,
//                       valueFontSize: 12,
//
//                     ),
//                     Spacer(),
//                     Text('الكلام المنبثق',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(height: 10,),
//                 Column(
//                   children: [
//                     Text('${cubit.changeTextSize.toInt()}     حجم الخط',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 2),
//                     Slider(
//                       value: cubit.changeTextSize,
//                       onChanged: (value)
//                       {
//                         cubit.changeTextSizeAzkar(value);
//                       },
//                       min: 18,
//                       max: 38,
//
//
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//                 Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: Colors.grey,
//                 ),
//                 Spacer(),
//                 Container(
//                   width: double.infinity,
//                   height: 1,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(height: 10,),
//                 Text(
//                   'للأقتراحات والدعم تواصلوا معنا عبر ',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//
//                       iconSize: 50,
//                       onPressed: ()
//                       {
//                         final url=('https://www.instagram.com/mo7amed.5wass/');
//                         openUrl(url: url);
//                       },
//                       icon:Image(
//                         image: AssetImage('assets/images/in.jpg'),
//                         width: 40,
//                         height: 40,
//                         alignment: Alignment.center,
//
//
//                       ),
//                     ),
//                     SizedBox(width:15 ,),
//                     // IconButton(
//                     //    iconSize: 50,
//                     //  color: Colors.blue,
//                     //   onPressed: ()
//                     //   {
//                     //     final url=('https://www.facebook.com/mo7amed3li5wass');
//                     //     openUrl(url: url);
//                     //   },
//                     //   icon:Icon(Icons.facebook_outlined) ,
//                     // ),
//                     // SizedBox(width: 30,),
//                     IconButton(
//                       iconSize: 50,
//                       color: Colors.green,
//                       onPressed: ()
//                       {
//                         final url=('https://wa.me/message/ASFTINQH35PDB1');
//                         openUrl(url: url);
//                       },
//                       icon: Icon(Icons.whatsapp_outlined,),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//   Future<void> urlLauncher(Uri url)
//   async{
//     await launchUrl(url);
//     //{throw'cloud not launch$url';}
//     //https://wa.me/message/ASFTINQH35PDB1
//   }
//
//
//
//   Future openUrl(
//       {
//         required String url,
//         bool inApp =false,
//       })
//   async{
//     if(await canLaunch(url))
//     {
//       await launch(
//         url,
//         forceWebView: inApp,
//         enableJavaScript: true,
//
//       );
//     }
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// class AzkarSettingScreen  extends StatefulWidget {
//
//   @override
//   State<AzkarSettingScreen> createState() => _AzkarSettingScreenState();
// }
//
// class _AzkarSettingScreenState extends State<AzkarSettingScreen> {
//   int index =1;
//   int value=1;
//   bool slider =true;
//   bool tost = true;
//   double sizeText=25;
//
//   @override
//   void initState() {
//
//     super.initState();
//     getSetting();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(
//           'الأعدادات' ,
//           textDirection:TextDirection.rtl ,
//           textAlign:TextAlign.right
//       )),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 20),
//             Row(
//               children: [
//
//                 FlutterSwitch(
//                   value: slider,
//                   onToggle: (d)
//                   async{
//                     SharedPreferences pref= await SharedPreferences.getInstance();
//                     pref.setBool('slider',d );
//                     setState(
//                           () {
//                         slider=d;
//                       },
//                     );
//
//                   },
//                   activeColor: Colors.amber,
//                   showOnOff: true,
//                   inactiveText:'لا',
//                   activeText:'نعم' ,
//                   valueFontSize: 12,
//
//                 ),
//                 Spacer(),
//                 Text('الشريط العلوي',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//
//
//               ],
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey,
//             ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//
//                 FlutterSwitch(
//                   value: tost,
//                   onToggle: (m)
//                   async{
//                     SharedPreferences pref= await SharedPreferences.getInstance();
//                     pref.setBool('tost',m );
//                     setState(
//                           () {
//                         tost=m;
//                       },
//                     );
//
//                   },
//                   activeColor: Colors.amber,
//                   showOnOff: true,
//                   inactiveText:'لا',
//                   activeText:'نعم' ,
//                   valueFontSize: 12,
//
//                 ),
//                 Spacer(),
//                 Text('الكلام المنبثق',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//
//
//               ],
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey,
//             ),
//             SizedBox(height: 10,),
//             Column(
//               children: [
//                 Text('${sizeText.toInt()}     حجم الخط',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Slider(
//                   value: sizeText,
//                   onChanged: (value)
//                   async{
//                     SharedPreferences pref= await SharedPreferences.getInstance();
//                     pref.setDouble('tost',value );
//                     setState(
//                           () {
//                         sizeText=value;
//                       },
//                     );
//                   },
//                   min: 18,
//                   max: 38,
//
//
//                 ),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey,
//             ),
//             Spacer(),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey,
//             ),
//             SizedBox(height: 10,),
//             Text(
//               'للأقتراحات والدعم تواصلوا معنا عبر ',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//
//               ),
//             ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//
//                   iconSize: 50,
//                   onPressed: ()
//                   {
//                     final url=('https://www.instagram.com/mo7amed.5wass/');
//                     openUrl(url: url);
//                   },
//                   icon:Image(
//                     image: AssetImage('assets/images/in.jpg'),
//                     width: 40,
//                     height: 40,
//                     alignment: Alignment.center,
//
//
//                   ),
//                 ),
//                 SizedBox(width:15 ,),
//                 // IconButton(
//                 //    iconSize: 50,
//                 //  color: Colors.blue,
//                 //   onPressed: ()
//                 //   {
//                 //     final url=('https://www.facebook.com/mo7amed3li5wass');
//                 //     openUrl(url: url);
//                 //   },
//                 //   icon:Icon(Icons.facebook_outlined) ,
//                 // ),
//                 // SizedBox(width: 30,),
//                 IconButton(
//                   iconSize: 50,
//                   color: Colors.green,
//                   onPressed: ()
//                   {
//                     final url=('https://wa.me/message/ASFTINQH35PDB1');
//                     openUrl(url: url);
//                   },
//                   icon: Icon(Icons.whatsapp_outlined,),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10,),
//
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> urlLauncher(Uri url)
//   async{
//     await launchUrl(url);
//     //{throw'cloud not launch$url';}
//     //https://wa.me/message/ASFTINQH35PDB1
//   }
//
//   Future openUrl(
//       {
//         required String url,
//         bool inApp =false,
//       })
//   async{
//     if(await canLaunch(url))
//     {
//       await launch(
//         url,
//         forceWebView: inApp,
//         enableJavaScript: true,
//
//       );
//     }
//   }
//
//   void getSetting()
//   async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//
//     setState(
//           () {
//         slider=pref.getBool('slider')??true;
//         tost=pref.getBool('tost')??true;
//         sizeText=pref.getDouble('sizeText')??25;
//       },
//     );
//
//   }
// }
//
