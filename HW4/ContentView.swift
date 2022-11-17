//
//  ContentView.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ContentViewModel()
    @ObservedObject var storage = Storage()
    
    
    var body: some View {
        
        Text("Main view")
            .onAppear{
                storage.startSave(count: 5)
                model.startAllServices()
            }
        List {
            ForEach($storage.dataStorage) { data in
                DetailDataView(data: data)
            }
        }
    }
}
