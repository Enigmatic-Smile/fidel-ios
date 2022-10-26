//
//  ContentView.swift
//  SwiftUICocoapodsExample
//
//  Created by Corneliu Chitanu on 25/10/22.
//

import SwiftUI

struct SheetView: View {
    var onAction: () -> Void
    
    var body: some View {
        VStack {
            Image(systemName: "creditcard")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Your SwiftUI view can be created here")
                .padding(10)
            Button("Tap here to connect your card") {
                onAction()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView {
            print("The card connection button was tapped")
        }
    }
}
