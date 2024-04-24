//
//  CustomResourcePanel.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct CustomResourcePanel: View {
    @State private var showModal = false
    var resourse_name: String
    var resourse_color: Color
    var resourse_type: Int
    var body: some View {
        ZStack {
            Image(systemName: resourse_name)
                .foregroundColor(resourse_color)
                .scaleEffect(2)
            //                .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
            //                .padding(.top, 10)
                .onTapGesture {
                    self.showModal.toggle()
                }
                .sheet(isPresented: $showModal) {
                    // ここにモーダルの内容を記述します
                    ChangeResourceNum(resourse_name: resourse_name, resourse_color: resourse_color)
                        .presentationDetents([.medium])
                }
            
            Text("\(resourceList[resourse_type].num)")
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
