//
//  MainView.swift
//  SwiftUICocoapodsExample
//
//  Created by Corneliu Chitanu on 26/10/22.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    @State private var isSheetOpened: Bool = false
    
    var body: some View {
        Button("Open a SwiftUI sheet") {
            isSheetOpened.toggle()
        }.sheet(isPresented: $isSheetOpened) {
            SheetViewController()
        }
    }
}
