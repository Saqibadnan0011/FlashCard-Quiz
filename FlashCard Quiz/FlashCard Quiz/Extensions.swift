//
//  Extensions.swift
//  FlashCard Quiz
//
//  Created by apple on 01/11/2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self .font(.title)
             .fontWeight(.heavy)
             .foregroundColor(Color("AccentColor"))
    }
}
