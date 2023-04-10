//
//  RetailerRow.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 06..
//

import SwiftUI

struct RetailerRow: View {
    var retailer: Retailer
    
    var body: some View {
        HStack {
            retailer.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(retailer.storename)

            Spacer()
            
            if retailer.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RetailerRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RetailerRow(retailer: retailers[0])
            RetailerRow(retailer: retailers[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
