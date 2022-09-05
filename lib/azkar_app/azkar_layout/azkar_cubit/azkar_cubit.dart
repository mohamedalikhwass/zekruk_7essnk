import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../network/local/cache_helper.dart';
import '../../moduls/almsbaha.dart';
import '../../moduls/azkar_alastekaz.dart';
import '../../moduls/azkar_almsaa.dart';
import '../../moduls/azkar_alnowm.dart';
import '../../moduls/azkar_alsbah.dart';
import 'azkar_states.dart';

class AzkarCubit extends Cubit <AzkarStates>
{

  AzkarCubit() : super(AzkarInitialState());



 static AzkarCubit get(context )=>BlocProvider.of(context);

 int currentIndex =0;

 List<Widget>screens=
 [
   AzkarAlsbahScreen(),
   AzkarAlmsaaScreen(),
   almsbhaScreen(),
   AzkarAlnowmScreen(),
   AzkarAlastekazScreen(),
 ];

 int titleOfAzkarIndex=0;
 List<String> titleOfAzkar=
 [
   'أذكار الصباح',
   'أذكار المساء',
   'المسبحة',
   'أذكار النوم',
   'أذكار الأستيقاظ',
 ];


 void changeBottomNAvBar(int index)
 {
   currentIndex =index;
   emit(AzkarchangeBottomNAvBarState());


 }


  int alsbahListIndex=1;
 void AzkarAlsbahChangeText(index)
 {
   alsbahListIndex=index;
   emit(AzkarAlsbahChangeTextState());

 }



  int almsaaListIndex=1;
  void AzkarAlmsaaChangeText(index)
  {
    almsaaListIndex=index;
    emit(AzkarAlmsaaChangeTextState());
  }





  int alnwomListIndex=1;
  void AzkarAlnowmChangeText(index)
  {
    alnwomListIndex=index;
    emit(AzkarAlnwomChangeTextState());
  }




  int alastekazListIndex=1;
  void AzkaralastekazChangeText(index)
  {
    alastekazListIndex=index;
    emit(AzkarAlastekazChangeTextState());
  }

  dynamic bottomDownIndex;
  void bottomDown( value)
  {
    if(value is String)
    bottomDownIndex=value;
    emit(BottomDownState());
  }



  int almsbhaListIndex=1;
  void AlmsbhaChangeText(index)
  {
    almsbhaListIndex =index;
    emit(AlmsbhaChangeTextState());
  }


  bool changeSliderTop=true;
  void changeSlider({bool? changeSlider})
  {
    if (changeSlider!= null)
      {
        changeSliderTop =changeSlider;
      }
    else
    {
      changeSliderTop =! changeSliderTop;
    }
    CacheHelper.saveData(key: 'changeSliderTop', value: changeSliderTop).
    then((value) {
      emit(ChangeSliderState());
      print('get${CacheHelper.getData(key: 'changeSliderTop')}');
    });



  }


   bool changeTextTowst=true;
  void changeTextTowstCenter({bool? changeText})
  {
   if(changeText != null) {
     changeTextTowst=changeText;
   }
   else {
     changeTextTowst =! changeTextTowst;
   }
    CacheHelper.saveData(key: 'changeTextTowst', value: changeTextTowst).
    then((value)
    {
      emit( ChangeTextTwostState());
      print('getkhwass${CacheHelper.getData(key: 'changeTextTowst')}');
    });
  }






  double changeTextSize=25.0;
  void changeTextSizeAzkar( {double? changeSize,double? size,})
  {
    if(changeSize != null)
      {
        changeTextSize =changeSize;
      }
    else {
      changeTextSize=size!;
    }
    CacheHelper.saveData(key: 'changeTextSize', value: changeTextSize)
        .then((value){
      emit( ChangeTextSizeState());
      print('get ${CacheHelper.getData(key: 'changeTextSize')}');
    });

  }



  int togelBetweenText=0;
  void togelBetweenTextAlmsbaha(num)
  {

    togelBetweenText = num;
    emit( togelBetweenTextState());
  }



  List<String>masbahaAlslahList=
  [
    'سبحان الله (33)',
    'الحمد لله (33)',
    'الله اكبر (33)',
    //'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير (1) ',
  ];

  List<String>masbahaList=
  [
    'الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد',
    'أستغفر الله ',
    'لَا إِلَهَ إِلَّا اللَّهُ ',
    'لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّ ',
    'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ ',
    'سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ ',
  ];




  bool changeMasbahaList=true;
  void changeMasbaha(value)
  {
    if(changeMasbahaList==true)
      {
        changeMasbahaList=value;
      }
    else if(changeMasbahaList==false)
      {
        changeMasbahaList=value;
      }
    emit(ChangeMasbahaTypeState());
  }



  // late bool gettowst;
  // late double getSize;
  // void getData()
  // {
  //  gettowst = CacheHelper.getData(key: 'changeTextTowst');
  // getSize = CacheHelper.getData(key: 'changeTextSize');
  //  emit(getDataState());
  // }


}