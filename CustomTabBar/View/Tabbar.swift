//
//  Tabbar.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 9/12/20.
//

import SwiftUI

struct Tabbar: View {
    @State var current = "Home"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection:$current){
                HomeView()
                    .tag("Home")
                Text("Message")
                    .tag("Message")
                Text("Account")
                    .tag("Account")
            }
            HStack(spacing:0){
                //tab button
                TabButton(title: "Home", image: "house.fill", gmk: $current)
                Spacer()
                TabButton(title: "Account", image: "message.fill", gmk: $current)
                Spacer()
                TabButton(title: "Message", image: "person.crop.circle", gmk: $current)
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color.black)
            .clipShape(Capsule())
            .padding(.horizontal,25)
        })
        
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
