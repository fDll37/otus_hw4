//
//  Parsing.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import Foundation

class Parsing {
    
    func parsingData(_ data: Data) -> (info: String, name: String) {
        print("info \(data.info)")
        print("name \(data.name)")
        return (info: data.info, name: data.name)
    }
}
