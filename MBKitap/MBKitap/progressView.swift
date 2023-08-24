//
//  progressView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 14.08.2023.
//

import SwiftUI

struct progressView: View {
    enum AlertType {
        case showsifreFarkli,showBosYer,none
    }
    @State private var sifre = ""
    @State private var sifreTekrar = ""
    @State private var showSifreFarkli = false
    @State private var showBosYer = false
    @State private var mesaj = ""
    @State private var showAlert = false
    @State private var alertType : AlertType = .none
    var body: some View {
        VStack(spacing: 15){
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
                    mesaj = "boş yer var"
                    self.showBosYer = true
                    alertType = .showBosYer
                    showAlert = true
                }
                else if sifre != sifreTekrar {
                    self.showSifreFarkli = true
                    alertType = .showsifreFarkli
                    showAlert = true
                }
                else {
                    mesaj = "kayıt başarılı"
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
            /*
            .alert(isPresented: $showBosYer){
                Alert(title: Text("Hata"),message: Text("Boş yerleri doldurun."),dismissButton: .cancel(Text("Tamam")))
            }
            
            .alert(isPresented: $showSifreFarkli){
                Alert(title: Text("Hata"),message: Text("Şifreler farklı."),dismissButton: .cancel(Text("Tamam")))
            }
             */
              
            .background(LinearGradient(colors: [Color("ColorGrayLight").opacity(0.5),Color("ColorGrayMedium")], startPoint: .top, endPoint: .bottom))
            .cornerRadius(10)
            .offset(y:-25)
            Text(mesaj)
            
        }
    }
}

struct progressView_Previews: PreviewProvider {
    static var previews: some View {
        progressView()
    }
}
