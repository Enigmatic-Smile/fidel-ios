//
//  Card.swift
//  Fidel
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation
import Fidel

struct Card: Identifiable {
    let id: String
    var consentID: String?
    let last4Digits: String
    let scheme: CardScheme
    var needsVerification: Bool
    var isVerified: Bool
}
