//
//  StaticJsonMapper.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2023-01-26.
//

import Foundation

import Foundation

struct StaticJSONMapper {
    
    static func decode<T: Codable>(file: String) throws -> T {
        
        return try Bundle.main.decode(forResource: file, ofType: "json")
    }
}
