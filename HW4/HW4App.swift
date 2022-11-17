//
//  HW4App.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import SwiftUI

@main
struct _HWApp: App {
    init() {
        Configurator.shared.registerServices()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
