//
//  ReceiptRow.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import SwiftUI

struct ReceiptRow: View {
    var receipt: Receipt
    
    var body: some View {
        HStack {
            receipt.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(receipt.dateTime)

            Spacer()
        }
    }
}

struct ReceiptRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ReceiptRow(receipt: receipts[0])
            ReceiptRow(receipt: receipts[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
