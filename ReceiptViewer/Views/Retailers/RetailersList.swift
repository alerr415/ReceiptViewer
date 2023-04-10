//
//  RetailersList.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import SwiftUI

struct RetailersList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Retailer] {
        retailers.filter { retailer in
            (!showFavoritesOnly || retailer.isFavorite)
        }
    }
    
    var body: some View {
//        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("Kedvencek")
                }
                ForEach(filteredLandmarks) { retailer in
                    NavigationLink {
                        ReceiptsList()
                    } label: {
                        RetailerRow(retailer: retailer)
                    }
                }
            }
            .navigationTitle("Kereskedők")
//        }
    }
}

struct RetailersList_Previews: PreviewProvider {
    static var previews: some View {
        RetailersList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
