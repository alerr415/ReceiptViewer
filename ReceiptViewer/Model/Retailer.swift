//
//  Retailer.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import Foundation
import SwiftUI

struct Retailer: Hashable, Codable, Identifiable {
    var id: Int
    var storename: String
    var storeaddress: String
    var storetaxnumber: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
