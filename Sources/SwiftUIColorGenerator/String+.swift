//
//  String+.swift
//  
//
//  Created by rseki on 2021/08/02.
//

import Foundation

extension String {
    var firstLowerCased: String {
        guard !self.isEmpty else { return self }
        var string = self
        let first = string.removeFirst()
        return first.lowercased() + string
    }
}
