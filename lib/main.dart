import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zekrk_7snak/shaerd/blocoserver/blocObserver.dart';
import 'package:zekrk_7snak/styles/themes.dart';

import 'azkar_app/azkar_layout/azkar_cubit/azkar_cubit.dart';
import 'azkar_app/azkar_layout/azkar_layout.dart';

import 'azkar_app/moduls/azkar_setting.dart';
import 'network/local/cache_helper.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
 await CacheHelper.init();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  late bool settingTextTowst;
  late bool settingSlider;
  late double settingTextSize;
   settingTextTowst =CacheHelper.getData(key: 'changeTextTowst')??true;
   settingSlider =CacheHelper.getData(key: 'changeSliderTop')??true;
   settingTextSize =CacheHelper.getData(key: 'changeTextSize')??25.0;
  BlocOverrides.runZoned(
        () {


      runApp(MyApp(
          settingTextTowst,
          settingSlider,
          settingTextSize,
          ));
      //await CacheHelper.init();
    },
    blocObserver: MyBlocObserver(),
  );

}

class MyApp extends StatelessWidget {

  final  bool settingTextTowst;
  final bool settingSlider;
  final double settingTextSize;

    MyApp(
      this.settingTextTowst,
       this.settingSlider,
       this.settingTextSize
       );

   

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds:3 )).then((value)
   {
     FlutterNativeSplash.remove();
   });

    return MultiBlocProvider(
      providers:
      [
        BlocProvider(
          create: (context)=>AzkarCubit()..changeTextTowstCenter(changeText: settingTextTowst)..changeSlider(changeSlider: settingSlider)..changeTextSizeAzkar(changeSize: settingTextSize),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,


        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,





        home:Directionality(
            textDirection:TextDirection.rtl ,
            child: AzkarLayout()),
      ),
    );


  }
}

