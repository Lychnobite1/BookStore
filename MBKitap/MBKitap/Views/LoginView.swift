//
//  ContentView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 12.08.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var mail = ""
    @State private var sifre = ""
    @State private var gecis = false
    @ObservedObject var ViewModel = LoginModel()
    @State private var girisDurum = false
    @State private var showMainView = false
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [Color("ColorGreenLight"),Color("ColorIndigoMedium").opacity(0.7)], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                
                
                ZStack{
                    VStack(alignment: .center, spacing: 50){
                        Image("roket")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .clipShape(Circle())
                        TextField("Email", text: $mail)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black.opacity(0.5),lineWidth: 1)
                            )
                            .shadow(color: .black.opacity(0.5), radius: 2,x: 5,y: 5)
                        
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
                            .shadow(color: .black.opacity(0.5), radius: 2,x: 5,y: 5)
                        Button{
                            if mail != "" && sifre != "" {
                                ViewModel.girisYap(mail: mail, sifre: sifre)
                            }
                            else {
                                self.girisDurum = true
                            }
                        }label: {
                                Text("Giriş")
                                    .padding(12)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                            
                            
                        }
                        .shadow(color: .black, radius: 5,y: 5)
                        .alert(isPresented: $girisDurum) {
                            Alert(title: Text("Hata"),message: Text("Boş yerleri doldurunuz."),dismissButton: .cancel(Text("Tamam")))
                        }
                        .background(
                            NavigationLink(destination: MainView(), isActive: $ViewModel.isLoggedIn) {
                                EmptyView()
                            }
                        )
                        
                        
                        
                        .background(LinearGradient(colors: [Color("ColorGrayLight").opacity(0.5),Color("ColorGrayMedium")], startPoint: .top, endPoint: .bottom))
                        .cornerRadius(10)
                        .offset(y:-25)
                        
                        HStack{
                            Text("Hesabın yok mu?").font(.system(size: 19))
                            Button{
                                self.gecis = true
                            }label: {
                                
                                Text("Kaydol")
                                    .font(.system(size: 19))
                            }
                            .sheet(isPresented: $gecis){
                                RegisterView()
                            }
                            
                            
                        }
                        
                    }.padding(.horizontal,60)
                }
                
                
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
