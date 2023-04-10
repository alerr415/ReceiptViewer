//
//  ReceiptsList.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import SwiftUI

struct ReceiptsList: View {
    var body: some View {
        VStack {
            List (receipts) { receipt in
                NavigationLink{
                    ReceiptDetail(receipt: receipt)
                } label: {
                    ReceiptRow(receipt: receipt)
                }
            }
            .navigationTitle("Nyugták")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ReceiptsList_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptsList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
