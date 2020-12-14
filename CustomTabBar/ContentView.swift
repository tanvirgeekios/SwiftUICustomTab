//
//  ContentView.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 9/12/20.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        Tabbar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
