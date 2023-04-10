//
//  ReceiptDetail.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import SwiftUI

struct ReceiptDetail: View {
    var receipt: Receipt
    
    var body: some View {
        ScrollView{
            VStack(spacing: 35) {
                MerchantLogo(logo: receipt.logo)
                
                Text(receipt.storename)
                    .font(.title)
                    .multilineTextAlignment(.center)

                VStack (spacing: 30) {
                    Text(receipt.storeaddress)
                    Text("Adószám: " + receipt.storetaxnumber)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Text("----------------- " + " NYUGTA " + " -----------------" )
                    .font(.headline)
                
                HStack (spacing: 15) {
                    Text(receipt.purchaseditem1quantity)
                    Text("x")
                    Text(receipt.purchaseditem1name)
                    Spacer()
                    Text(receipt.purchaseditem1price)
                    Text(receipt.currency)
                }
                
                HStack (spacing: 15) {
                    Text(receipt.purchaseditem2quantity)
                    Text("x")
                    Text(receipt.purchaseditem2name)
                    Spacer()
                    Text(receipt.purchaseditem2price)
                    Text(receipt.currency)
                }
                
                HStack{
                    Text("Összesen:")
                        .font(.headline).bold()
                    Spacer()
                    if (receipt.storename.starts(with: "A")){
                        Text("1660   " + receipt.currency) //hardcoded sum
                    }
                    else{
                        Text("290   " + receipt.currency) //hardcoded sum
                    }
                }
                
                Divider()
                
                Text(receipt.dateTime)
                    .font(.title2)
                Text("TID: " + receipt.id)
                    .font(.title2)
            }
            .padding()
            .navigationTitle("Tekintse a nyugtáját!")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ReceiptDetail_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptDetail(receipt: receipts[2])
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
