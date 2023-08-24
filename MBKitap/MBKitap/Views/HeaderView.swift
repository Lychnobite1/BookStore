//
//  HeaderView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct HeaderView: View {
    @State private var gecis = false
    @State private var alertMesaj = false
    @State private var cikis = false
    @ObservedObject var ViewModel = LoginModel()
    @Binding var count : Int
    var body: some View {
        HStack{
            Button{
                self.alertMesaj = true
            }label: {
                Image(systemName: "arrowshape.turn.up.left")
                    .foregroundColor(.black)
                    .font(.title)
            }
            .alert(isPresented: $alertMesaj){
                Alert(title: Text("Çıkış"),message: Text("Çıkış yapmak istiyor musunuz?") ,primaryButton: .destructive(Text("Evet"),action: {
                    ViewModel.cikis()
                    self.cikis = true
                }), secondaryButton: .cancel(Text("Vazgeç")))
            }
            NavigationLink(destination: LoginView(), isActive: $cikis) {
                EmptyView()
            }
            Spacer()
            LogoView()
            Spacer()
            ZStack{
                Button{
                    if self.count > 0 {
                        
                    }
                    self.gecis = true
                }label: {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.title)
                }
                .sheet(isPresented: $gecis){
                    SepeteEkleView()
                }
                
                ZStack{
                    if self.count > 0 {
                        Circle().fill(.red)
                            .frame(width: 22,height: 22)
                        Text("\(count)")
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                    }
                }.offset(x:15,y:-15)
                    
            }
        }.padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(count: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
