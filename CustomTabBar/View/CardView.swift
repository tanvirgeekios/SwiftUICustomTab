//
//  CardView.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 12/12/20.
//

import SwiftUI

struct CardView: View {
    var item:Item
    var body: some View {
        HStack(){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width/3.2)
            VStack(alignment:.leading, spacing:10){
                Text(item.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Text(item.subtitle)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
            }
            Spacer(minLength: 0)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: -5, y: 5)
        
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
