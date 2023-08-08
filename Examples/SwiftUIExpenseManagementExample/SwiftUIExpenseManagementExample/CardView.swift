//
//  CardView.swift
//  Fidel
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation
import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack {
            if card.needsVerification {
                HStack {
                    Spacer()
                    Image(systemName: cardStateImageName(card))
                        .foregroundColor(card.isVerified ? .green : .red)
                        .font(.system(size: 20))
                }
                .accessibilityElement(children: .contain)
            }
            Spacer()
            HStack {
                Spacer()
                Text("**** \(card.last4Digits)")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .accessibilityElement(children: .contain)
        }
        .accessibilityElement(children: .contain)
        .frame(height: 200)
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
    }
    
    private func cardStateImageName(_ card: Card) -> String {
        card.isVerified ? "checkmark.circle.fill" : "xmark.circle.fill"
    }
    
    private func cardStateImageIdentifier(_ card: Card) -> String {
        card.isVerified ? "cardIsVerified" : "cardNotVerified"
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(id: "", last4Digits: "1234", scheme: .visa, needsVerification: true, isVerified: false))
    }
}
