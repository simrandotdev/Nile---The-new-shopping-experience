//
//  BundleFileError.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2023-01-26.
//

import Foundation

extension Bundle {
    
    enum BundleFileError: Error {
        case fileNotFound
        case corruptedContent
    }
}
