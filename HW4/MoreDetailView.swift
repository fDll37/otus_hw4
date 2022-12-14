//
//  MoreDetailView.swift
//  HW4
//
//  Created by Данил Менделев on 14.12.2022.
//

import SwiftUI

struct MoreDetailView: View {
    @Binding var data: Data
    @State var imageName = "1"
    
    var body: some View {
        NavigationLink(destination: DiagramView(data: $data, imageName: $imageName)) {
            HStack(alignment: .center) {
                Text("Press me and you will see the Image")               
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
