//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Ranjan Akarsh on 14/06/21.
//

import Foundation

extension Bundle {
    
    func decode <T: Codable>(_ file: String) -> T {
        // locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file in bundle.")
        }
        
        // create property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file from bundle.")
        }
        
        // create decoder
        let decoder = JSONDecoder()
        
        // create property for decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // return the ready-to-use data
        return loaded
    }
}
