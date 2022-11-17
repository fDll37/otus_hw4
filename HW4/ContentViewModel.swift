//
//  ContentViewModel.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import SwiftUI
import Foundation

class ContentViewModel: ObservableObject {
    
    @Injected var network: Network?
    @Injected var storage: Storage?
    @Injected var parsing: Parsing?
    
    
    func startAllServices() {
        storage?.saveData(network?.createConnect(extraDigit: 1) ?? Data(info: "nil", name: "nil"))
        parsing?.parsingData(storage?.dataStorage[0] ?? Data(info: "nil", name: "nil"))
    }
    
}
