//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ranjan Akarsh on 15/06/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
