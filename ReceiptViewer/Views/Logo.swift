//
//  Logo.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 09..
//

import SwiftUI

struct Logo: View {
    var body: some View {
        VStack{
            CircleImage(image: Image("new_logo_profile_pic_enhanced")) 
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
