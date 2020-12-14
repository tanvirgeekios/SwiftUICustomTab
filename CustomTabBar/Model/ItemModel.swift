//
//  ItemModel.swift
//  CustomTabBar
//
//  Created by MD Tanvir Alam on 12/12/20.
//

import Foundation
import SwiftUI

struct Item:Identifiable {
    var id = UUID().uuidString
    var title: String
    var price: String
    var subtitle:String
    var image : String
    var offset : CGFloat = 0
}

var items = [
    Item(title: "Stylish Table Lamp", price: "$500", subtitle: "We have amazing quality lamp wide range", image: "dounot"),
    Item(title: "Modern Chare", price: "$300", subtitle: "We have amazing quality chair", image: "dounot"),
    Item(title: "New Stool", price: "$700", subtitle: "We have amazing quality stool", image: "dounot"),
]
