//
//  MoreDetailView.swift
//  HW4
//
//  Created by Данил Менделев on 14.12.2022.
//

import SwiftUI

struct MoreDetailView: View {
    @Binding var data: Data
    
    var body: some View {
        HStack(alignment: .center) {
            Image("1")
                .resizable()
                .dynamicTypeSize(.medium)
            VStack {
                Text(data.info)
                Spacer()
                Text(data.name)
            }
            .dynamicTypeSize(.medium)
        }
    }
}

//struct MoreDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MoreDetailView()
//    }
//}
