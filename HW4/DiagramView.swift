//
//  DiagramView.swift
//  HW4
//
//  Created by Данил Менделев on 14.12.2022.
//

import SwiftUI

struct DiagramView: View {
    @Binding var data: Data
    @Binding var imageName: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(imageName)
                .resizable()
                .dynamicTypeSize(.medium)
            VStack {
                Text(data.info)
                Text(data.name)
            }
            .dynamicTypeSize(.medium)
        }
    }
}

//struct DiagramView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiagramView()
//    }
//}
