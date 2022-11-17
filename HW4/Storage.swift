//
//  Storage.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import SwiftUI
import Foundation

class Storage:ObservableObject {
    @Published var dataStorage: [Data] = [Data]()
    
    func saveData(_ data: Data) {
        dataStorage.append(data)
    }
    
    func startSave(count: Int) {
        for item in 0..<count {
            self.saveData(Data(info: "info: \(item)", name: "name: \(item)"))
        }
    }
}
