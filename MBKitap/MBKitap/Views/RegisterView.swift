//
//  RegisterView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 14.08.2023.
//

import SwiftUI
import Firebase
import FirebaseAuth
struct RegisterView: View {
    enum AlertType {
        case showsifreFarkli,showBosYer,none
    }
    @State private var mail = ""
    @State private var sifre = ""
    @State private var sifreTekrar = ""
    @State private var showBosYer = false
    @State private var showSifreFarkli = false
    @State private var showAlert = false
    @State private var alertType : AlertType = .none
    @Environment(\.presentationMode) var pm
    
    @ObservedObject var ViewModel = LoginModel()
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("ColorGreenLight"),Color("ColorIndigoMedium").opacity(0.7)], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
                VStack(alignment: .center, spacing: 50){
                    TextField("Email", text: $mail)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black.opacity(0.5),lineWidth: 1)
                        )
                        
                        
                    SecureField("Şifre", text: $sifre)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black.opacity(0.5),lineWidth: 1)
                        )
                        .offset(y:-20)
                    SecureField("Şifre Tekrar", text: $sifreTekrar)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black.opacity(0.5),lineWidth: 1)
                        )
                        .offset(y:-40)
                    Button{
                        if sifre == "" || sifreTekrar == "" {
                            alertType = .showBosYer
                            showAlert = true
                        }
                        else if sifre != sifreTekrar {
                            alertType = .showsifreFarkli
                            showAlert = true
                        }
                        else {
                            ViewModel.kayitOl(mail: mail, sifre: sifre)
                            pm.wrappedValue.dismiss()
                        }
                    }label: {
                        Text("Kayıt Ol")
                            .padding(12)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            
                    }
                    .alert(isPresented: $showAlert) {
                        switch alertType {
                        case .showBosYer:
                            return Alert(title: Text("Hata"), message: Text("Boş yerleri doldurun."), dismissButton: .default(Text("OK")))
                        case .showsifreFarkli:
                            return Alert(title: Text("Hata"), message: Text("Şifreler aynı değil."), dismissButton: .default(Text("OK")))
                        case .none:
                            return Alert(title: Text(""), message: nil, dismissButton: .default(Text("OK")))
                        }
                    }
                    .background(LinearGradient(colors: [Color("ColorGrayLight").opacity(0.5),Color("ColorGrayMedium")], startPoint: .top, endPoint: .bottom))
                    .cornerRadius(10)
                    .offset(y:-25)
                    
                    
                    
                    
                    
                    
                }.padding(.horizontal,60)
            }
                
            
               
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
