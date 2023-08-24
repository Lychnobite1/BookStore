//
//  KitapCellView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI
struct KitapCellView: View {
    @State private var isHeart = false
    //@State var count : Int
    @Binding var count : Int
    var kitap : Kitap
    var body: some View {
        //VStack{
            ZStack{
                /*
                Rectangle()
                    .stroke(.black.opacity(0.8))
                    .frame(width: 160,height: 300)
                    .background(.gray.opacity(0.2))
                 
                 Rectangle().fill(.gray.opacity(0.2))
                     .frame(width: 190,height: 200)
                     .cornerRadius(20)
                     .cornerRadius(20)
                */
                /*
                Rectangle().fill(.gray.opacity(0.1))
                    .frame(width: 180,height: 300)
                    .cornerRadius(25)
                 */
                Rectangle().fill(LinearGradient(colors: [Color("ColorGreenLight").opacity(0.3),Color("ColorGreenMedium").opacity(0.1)], startPoint: .top, endPoint: .bottom))
                    .frame(width: 170,height: 280)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black.opacity(0.3))
                    )
                VStack(spacing: 5){
                    Image(kitap.kitap_resim!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110,height: 180)
                    Text(kitap.kitap_ad!)
                        .padding(.horizontal,20)
                        .font(.system(size: 16))
                        .lineLimit(1)
                    
                    Text(kitap.kitap_yazar!)
                        .fontWeight(.bold)
                        //.italic()
                        .font(.system(size: 18))
                        .fontDesign(.serif)
                        .lineLimit(1)
                    Text("\(String(kitap.kitap_fiyat!)) TL" )
                        .font(.title2)
                        .offset(x:-30)
                    
                    
                    
                    
                }
                ZStack{
                    Circle().fill(.white)
                        .frame(width: 35,height: 35)
                    Button{
                        self.isHeart.toggle()
                        if self.isHeart == true {
                            self.count += 1
                            KitapListe.shared.kitapEkle(kitap: kitap)
                            print("\(count)")
                        }
                        else if self.isHeart == false {
                            self.count -= 1
                            KitapListe.shared.kitapCikar(kitap: kitap)
                            print("\(count)")
                        }
                        
                    }label: {
                        Image(systemName: isHeart ? "heart.fill" : "heart")
                            .foregroundColor(.black)
                            .font(.system(size: 23))
                    }
                }
                .offset(x:59,y:-119)
                
            }
            
        
    }
}

struct KitapCellView_Previews: PreviewProvider {
    static let ViewModel = KitapData()
    static var previews: some View {
        KitapCellView(count: .constant(0), kitap: ViewModel.liste[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
