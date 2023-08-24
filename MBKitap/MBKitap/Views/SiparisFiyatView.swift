//
//  SiparisFiyatView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct SiparisFiyatView: View {
    @Binding var toplamTutar : Double
    var body: some View {
        HStack{
            VStack(alignment: .leading,spacing: 10){
                Text("Toplam")
                    .font(.system(size: 19))
                    .fontDesign(.serif)
                Text("\(String(toplamTutar)) TL")
                    .fontDesign(.serif)
                    .font(.system(size: 22))
            }
            
            Spacer()
            Button{
                
            }label: {
                Text("Sipariş Ver")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .font(.title3)
            .fontWeight(.heavy)
            .background(
                LinearGradient(colors: [Color("ColorGreenDark").opacity(0.8),Color("ColorGrayLight").opacity(0.8)], startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .foregroundColor(Color("ColorGrayMedium").opacity(0.9))
            .fontWeight(.bold)
            
        }
        .padding(.horizontal,10)
    }
}

struct SiparisFiyatView_Previews: PreviewProvider {
    static var previews: some View {
        SiparisFiyatView(toplamTutar: .constant(0.0))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

/*
 .font(.title2)
 .fontWeight(.heavy)
 .foregroundStyle(
     LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom)
 )
 .shadow(color: .black.opacity(0.25), radius: 0.2,x: 1,y: 2)
 .padding(.vertical)
 .padding(.horizontal,30)
 .background(LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
 .cornerRadius(40)
 
 */
