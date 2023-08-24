//
//  LogoView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack{
            
            
             
            Text("M").font(.title2).bold().offset(x:8)
            Image("kitap")
                .resizable()
                .scaledToFit()
                .frame(width: 55,height: 55)
            Text("B").font(.title2).bold().offset(x:-8)
            
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
