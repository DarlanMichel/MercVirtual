import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

// class HasuraService{
//   HasuraConnect _connect;
//   String _token;
//
//   void setToken(String token){
//     _token = "Bearer ${token}";
//   }
//
//   HasuraService([HasuraConnect hasuraConnect]){
//     _connect = hasuraConnect ?? newHasura;
//   }
//
//   @override
//   HasuraConnect get connection => _connect;
//
//   void removeToken(){
//     _token = null;
//     _connect.cleanCache();
//     _connect = newHasura;
//   }
//
//   HasuraConnect get newHasura => HasuraConnect(
//       "https://mercadovirtual.herokuapp.com/v1/graphql",
//     token: (_) async{
//         if (_token == null){
//           final user = await FirebaseAuth.instance.currentUser();
//           var tokenId = await user.getIdToken(refresh: true);
//           setToken(tokenId.token);
//         }
//         return _token;
//     }
//   );
// }


class CustomHasuraConnect {
 static HasuraConnect getConnect(FirebaseAuth auth) {
   return HasuraConnect(
     "https://mercadovirtual.herokuapp.com/v1/graphql",
     token: (_) async {
       var user = await auth.currentUser();
       var token = await user.getIdToken(refresh: true);

       if (token != null) {
         return "Bearer ${token.token}";
       } else {
         Modular.to.pushReplacementNamed("/login");
       }
     },
   );
 }
}
