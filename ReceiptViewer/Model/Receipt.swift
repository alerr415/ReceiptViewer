//
//  Receipt.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 06..
//

import Foundation
import SwiftUI

struct Receipt: Hashable, Codable, Identifiable {
    var storename: String
    var storeaddress: String
    var storetaxnumber: String
    
    var dateTime: String
    var id: String
    
    var purchaseditem1name: String
    var purchaseditem1quantity: String
    var purchaseditem1price: String
    
    var purchaseditem2name: String
    var purchaseditem2quantity: String
    var purchaseditem2price: String
    
    var currency: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var merchantLogoName: String
    var logo: Image {
        Image(merchantLogoName)
    }
}
