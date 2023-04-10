//
//  ContentView.swift
//  ReceiptViewer
//
//  Created by Alejandro R. Rodriguez on 2022. 07. 06..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("backgroundC").ignoresSafeArea()
                VStack(spacing: 24){
                    Logo()
                    Text("NoneReceipt")
                        .foregroundColor(.orange)
                        .font(.largeTitle).bold()
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                    LogIn()
                        .padding(.all, 36)
                }
            }
            .navigationTitle("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
