//
//  XCAssetsError.swift
//  
//
//  Created by rseki on 2021/08/02.
//

import Foundation

enum XCAssetsError: Error {
    case notDirectory
    case notXCAssets

    var message: String {
        switch self {
        case .notDirectory: return "URL is not Directory."
        case .notXCAssets: return "URL is not XCAssets."
        }
    }
}
