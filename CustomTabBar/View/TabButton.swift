//
//  TabButton.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 9/12/20.
//

import SwiftUI

struct TabButton: View {
    var title:String
    var image:String
    
    @Binding var gmk:String
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                gmk = title
            }
        }, label: {
            Image(systemName: image)
                .resizable()
                .renderingMode(.template)
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
            if (gmk == title){
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }).padding(.vertical,10)
        .padding()
        .background(Color.white.opacity(gmk == title ? 0.08 : 0))
        .clipShape(Capsule())
        
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
