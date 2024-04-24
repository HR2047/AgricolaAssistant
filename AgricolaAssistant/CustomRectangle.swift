//
//  CustomRectangle.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct CustomRectangle: View {
    @State private var showModal = false
    @Binding var rectangle_color: Color //:付けるだけで引数になるっぽい
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(rectangle_color)
                .frame(width: UIScreen.main.bounds.width / 5, height: UIScreen.main.bounds.width / 5)
                .padding(.top, 5)
                .onTapGesture {
                    self.showModal.toggle()
                }
                .sheet(isPresented: $showModal) {
                    // ここにモーダルの内容を記述します
                    Text("タイルの種類変更")
                        .presentationDetents([.medium])
                    ChangeRectangle(color: $rectangle_color, show: $showModal)
                }
            
        }
        //        .padding()
    }
}

#Preview {
    ContentView()
}
