//
//  MerchantLogo.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 07..
//

import SwiftUI

struct MerchantLogo: View {
    var logo: Image
    
    var body: some View {
        logo
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct MerchantLogo_Previews: PreviewProvider {
    static var previews: some View {
        MerchantLogo(logo: Image("tesco"))
    }
}
