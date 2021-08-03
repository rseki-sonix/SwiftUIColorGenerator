//
//  String+.swift
//  
//
//  Created by rseki on 2021/08/02.
//

import Foundation

extension String {
    enum Case {
        case lowerCase
        case upperCase
    }

    var snakeCaseToPascalCase: String {
        let splited = self.split(separator: "_").map { String($0).changeFirstCharacterCase(.upperCase) }
        return splited.joined()
    }

    func changeFirstCharacterCase(_ characterCase: Case) -> String {
        guard !self.isEmpty else { return self }
        var string = self
        var first = String(string.removeFirst())
        switch characterCase {
        case .lowerCase: first = first.lowercased()
        case .upperCase: first = first.uppercased()
        }
        return first + string
    }
}
