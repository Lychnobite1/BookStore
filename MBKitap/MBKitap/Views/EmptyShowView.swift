//
//  EmptyView.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 13.08.2023.
//

import SwiftUI

struct EmptyShowView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50){
            Text("Sepete Eklenen Kitap Yok")
                .fontDesign(.serif)
                .font(.title2)
                .fontWeight(.medium)
            Image("illustration-no1")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 256,idealWidth: 280,maxWidth: 360,minHeight: 256,idealHeight: 280,maxHeight: 360,alignment: .center)
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyShowView()
    }
}
