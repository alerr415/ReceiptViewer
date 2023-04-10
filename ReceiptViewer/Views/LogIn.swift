//
//  LogIn.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 09..
//

import SwiftUI

struct LogIn: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("Email")
                .font(.callout).bold()
            TextField("pelda@email.com", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Jelszó")
                .font(.callout).bold()
            SecureField("jelszó", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack{
                NavigationLink (destination: RetailersList(), label: {
                    Text("Bejelentkezés")
                    Spacer()
                })
                .padding()
                .background(Color(UIColor.systemGreen))
                .cornerRadius(10)
                .foregroundColor(Color.white)
            }
        }
        .padding(.all, 36)
        .background(Color(UIColor.systemGray6))
        .cornerRadius(40)
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
