import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../modeles (copie)/loading.dart';
import '../modeles (copie)/pays.dart';
import '../modeles (copie)/utile/request_extension.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}


class _Page1State extends State<Page1> {
  String NomaAffiche= "?";
  String NomaAffiche2='';
  TextEditingController _NomdeVilleControler= TextEditingController();
  void AfficheVille () async{
    NomaAffiche=_NomdeVilleControler.text;
    NomaAffiche2= await RestCountries(NomaAffiche);
     
    setState(() {
   RestCountries(NomaAffiche);
     
  });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

       body: Center(
        child: Column(
          children: [
             SizedBox(height: 20,),
            Text("Voici les informations sur la populaion, la devise:", style: TextStyle(fontSize: 20),),
               SizedBox(height: 20,),
                 
                Container(
                  height: 200,
                  width: 200,
                  child: TextFormField(
                    controller: _NomdeVilleControler,
                    decoration: InputDecoration(
                      hintText: "Nom de ville", 
                      
                    ),

                  ),
                ),
               Text('$NomaAffiche2', style: TextStyle(fontSize: 30),),
            
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (() async{
          AfficheVille();
        
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.search, color: Colors.red,
        ),
      
    ),


    
      
      
    );
   
  }
  Stream<Loading> get loadingPaysStream =>
      _loadingPaysSubject.stream;
  final _loadingPaysSubject = BehaviorSubject<Loading>();

  RestCountries (
   String NomdePays) async {
     RequestExtension<Pays> requestExtension= RequestExtension();
     _loadingPaysSubject.add(Loading(loading: true,message: 'chargement en cours'));
     String retour='TTTTTTTTTTTTTTTTTT';
     Pays response= await requestExtension.get(NomdePays);

     //Future< dynamic > response= requestExtension.get(NomdePays);
    
     
     print(NomdePays);
     print('%%%%%%%%%%%%%%%5555555555555555555%%%%%%%%%%%%%%%%%%%%%%%%');
     print(response.capital!.first);

    //Pays ? response1;
      
     //response.then((value){

    //   print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
     // response1= value as Pays;
      //print('########################################################################');
     //print(response1!.name!.official.toString());
     // });
     // NomaAffiche2 = response1!.capital as String;
     print('222222222222222222222222222222222');
     retour= " la population est : "+""+ (response.population).toString()+ " ,la capitale est : "+ (response.capital!.first);
     print(retour);
     return retour;
}
  
}