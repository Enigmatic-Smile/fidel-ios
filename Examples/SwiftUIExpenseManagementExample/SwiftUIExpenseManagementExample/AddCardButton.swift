//
//  AddCardButton.swift
//
//  Created by Corneliu Chitanu on 28/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import SwiftUI

struct AddCardButton: View {
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "plus.rectangle")
            Text(title)
        })
        .frame(width: 220)
        .padding(14)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

struct AddCardButton_Previews: PreviewProvider {
    static var previews: some View {
        AddCardButton(title: "Add card") {}
    }
}
