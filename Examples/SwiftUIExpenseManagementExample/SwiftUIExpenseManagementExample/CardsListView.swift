//
//  CardsListView.swift
//  Fidel
//
//  Created by Corneliu Chitanu on 13/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation
import SwiftUI
import Fidel

struct CardsListView: View {
    @ObservedObject var cardStore: InMemoryCardStore
    private weak var delegate: MainViewDelegate?
    
    init(cardStore: InMemoryCardStore,
         delegate: MainViewDelegate? = nil) {
        self.delegate = delegate
        self.cardStore = cardStore
    }
    
    var body: some View {
        VStack {
            if cardStore.cards.isEmpty {
                Text("No cards added yet")
                    .font(.title)
                    .foregroundColor(.gray)
            } else {
                List(cardStore.cards) { card in
                    CardView(card: card)
                        .onTapGesture {
                            if card.needsVerification && !card.isVerified {
                                delegate?.didTapToVerify(card)
                            }
                        }
                }
            }
            VStack {
                AddCardButton(title: "Personal card") {
                    delegate?.didTapToAddACardInAStreamProgram()
                }
                
                AddCardButton(title: "Corporate card") {
                    delegate?.didTapToAddACorporateCard()
                }
            }
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView(cardStore: InMemoryCardStore())
    }
}
