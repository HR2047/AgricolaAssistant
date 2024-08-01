//
//  CustomResourcePanel.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct CustomResourcePanel: View {
    @State private var showModal = false
    @EnvironmentObject var resourceViewModel: ResourceViewModel
    var resource_type: Int
    
    var body: some View {
        let resource_imgname = resourcedataList[resource_type].imgname
        let resource_color = resourcedataList[resource_type].color
        let resource_name = resourcedataList[resource_type].name
        
        ZStack {
            Image(systemName: resource_imgname)
                .foregroundColor(resource_color)
                .scaleEffect(2)
            //                .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
            //                .padding(.top, 10)
                .onTapGesture {
                    self.showModal.toggle()
                }
                .sheet(isPresented: $showModal) {
                    // ここにモーダルの内容を記述します
                    ChangeResourceNum(resource_type: resource_type)
                        .presentationDetents([.medium])
                        .environmentObject(self.resourceViewModel)
                }
            
            // woodに対応するリソースの数を取得して表示
            if let index = resourceViewModel.index(for: resource_name) {
                Text("\(resourceViewModel.resources[index].num)")
            } else {
                Text("Resource not found")
            }
            //Text("0")
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environmentObject(ResourceViewModel())
}
