//
//  MainViewDelegate.swift
//  Fidel
//
//  Created by Corneliu Chitanu on 15/06/23.
//  Copyright © 2023 Fidel. All rights reserved.
//

import Foundation

protocol MainViewDelegate: AnyObject {
    func didTapToAddACorporateCard()
    func didTapToAddACardInAStreamProgram()
    func didTapToVerify(_ card: Card)
}
