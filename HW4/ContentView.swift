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
    @State private var dataExample = Data(info: "Type of Data", name: "Super diagram")
    
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            NavigationView{
                List {
                    ForEach($storage.dataStorage) { data in
                        DetailDataView(data: data)
                    }
                }
                
            }
            .onAppear{
                storage.startSave(count: 5)
                model.startAllServices()
            }
            NavigationView {
                VStack {
                    MoreDetailView(data: $dataExample)
                    Divider()
                    MoreDetailView(data: $dataExample)
                }
                .navigationTitle("MVVM")
            }
        }
    }
}
