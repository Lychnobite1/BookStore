//
//  LoginIslemler.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 14.08.2023.
//

import Foundation
import Firebase
import FirebaseAuth
class LoginModel : ObservableObject {
    @Published var isLoggedIn = false
    func girisYap(mail:String,sifre:String) {
        Auth.auth().signIn(withEmail: mail, password: sifre) { (result, error) in
            if error != nil {
                print("giris Hata")
            }
            else {
                print("Giriş Başarılı")
                self.isLoggedIn = true
            }
        }
    }
    
    func kayitOl(mail:String,sifre:String) {
        Auth.auth().createUser(withEmail: mail, password: sifre) { (result, error) in
            if error != nil {
                print("kayıt ol Hata")
            }
            else {
                print("kayıt başarılı")
            }
        }
    }
    
    func cikis(){
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("çıkış işleminde hata oluştu.")
        }
    }
}
