//
//  HomeView.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 10/12/20.
//

import SwiftUI

struct HomeView: View {
    @State var size = "Small"
    @State var currentTab = "All"
    @GestureState var isDragged = false
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                }, label: {
                    SFSymbol.horizontalLine
                        .font(.title)
                        .foregroundColor(.black)
                })
                
                Spacer()
                
                Button(action:{}){
                    SFSymbol.cart
                        .font(.title)
                        .foregroundColor(.black)
                }.overlay(
                    Text("1")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 20)
                        .background(Color.black)
                        .clipShape(Circle())
                        .offset(x: 15, y: -22)
                )
            }.padding(.horizontal)
            HStack{
                VStack(alignment: .leading, spacing: 8){
                    Text("Furniture in\nunique Style")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("We have wide range of furnitures")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                }
                Spacer(minLength: 15)
                Menu(content: {
                    Button(action: {
                        size = "small"
                    }) {
                        Text("Small")
                    }
                    Button(action: {
                        size = "Large"
                    }) {
                        Text("Large")
                    }
                    Button(action: {
                        size = "Medium"
                    }) {
                        Text("Medium")
                    }
                }){
                    Label(title: {
                        Text(size)
                            .foregroundColor(.white)
                    }, icon: {
                        Image(systemName: "slider.vertical.3")
                            .foregroundColor(.white)
                    })
                }.padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.black)
                .clipShape(Capsule())
                
            }
            .padding(.top)
            .padding(.bottom,10)
            
            HStack(){
                ForEach(tabs, id:\.self){tab in
                    Button(action: {
                        currentTab = tab
                    }) {
                        Text(tab)
                            .fontWeight(.bold)
                            .foregroundColor(currentTab == tab ? .black : .gray)
                    }
                    if tab != tabs.last{
                        Spacer(minLength: 0)
                    }
                    
                }
            }
            ScrollView(){
                ForEach(items.indices){ index in
                    ZStack{
                        
                        Color(.black)
                            .cornerRadius(20)
                        
                        Color(.gray)
                            .cornerRadius(20)
                            .padding(.trailing,65)
                        
                        HStack(){
                            Spacer()
                            
                            Button(action: {}, label: {
                                Image(systemName: "suit.heart")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .frame(width:65)
                            })
                            
                            Button(action: {}, label: {
                                Image(systemName: "cart.badge.plus")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .frame(width:65)
                            })
                            
                        }
                        
                        
                        CardView(item: items[index])
                            .offset(x: items[index].offset)
                            .animation(.spring())
                            .gesture(
                                DragGesture()
                                    .updating($isDragged, body: { (value, state, _) in
                                        
                                        // so we can validate for correct drag..
                                        debugPrint(items[index].offset)
                                        state = true
                                        if value.translation.width < 0 && isDragged{
                                                items[index].offset = value.translation.width
                                        }
                                    }).onEnded({ (value) in
                                        if -value.translation.width >= 50{
                                            
                                            items[index].offset = -150
                                        }
                                        else{
                                            items[index].offset = 0
                                        }
                                    }))
                    }.padding(.horizontal)
                    .padding(.top)
                    
                    
                }
            }
            
            Spacer()
        }
        
    }
}

var tabs = ["Tables", "Chairs", "Lamps", "All"]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
