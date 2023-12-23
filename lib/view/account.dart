// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Account extends ConsumerStatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Account> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesap Sayfası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('URL_OF_USER_PROFILE_IMAGE'),
            ),
            const SizedBox(height: 16),
            Text(
              'Kullanıcı Adı',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('kullaniciadi@example.com'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Profili düzenleme ekranına gitmek için gerekli navigasyon işlemleri
                // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
             
             
              },
              child: const Text('Profili Düzenle'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Çıkış yapmak için gerekli işlemler
                // Örneğin, kullanıcı oturumu kapatma fonksiyonunu çağırabilirsiniz.
              },
              child: const Text('Çıkış Yap'),
            ),
          ],
        ),
      ),
    
      //body: Center(child: Text("account"),),
    );
  }
}