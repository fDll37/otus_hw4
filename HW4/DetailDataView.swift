//
//  DetailDataView.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import SwiftUI

struct DetailDataView: View {
    @Binding var data: Data
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: MoreDetailView(data: $data)) {
                Text(data.info)
                Text(data.name)
            }
        }
        .navigationTitle("Navigation Title")
    }
}

