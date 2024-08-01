//
//  CustomFence.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/30.
//

import SwiftUI

struct CustomFence: View {
    @Binding var showFence: Bool
    let horizontal: Bool
    let fmode: Bool
    
    var body: some View {
        VStack {
            if horizontal {
                Rectangle()
                    .foregroundStyle(showFence ? Color.brown : fmode ? Color(red: 0.9, green: 0.9, blue: 0.9) : Color.white)
                    .frame(width: UIScreen.main.bounds.width / 4.5, height: 5)
                    .padding(.top, 5)
                    .onTapGesture {
                        showFence.toggle() // showFenceをトグルする
                    }
                    .disabled(!fmode) // showFenceがfalseの場合はジェスチャーを無効にする
            } else {
                Rectangle()
                    .foregroundStyle(showFence ? Color.brown : fmode ? Color(red: 0.9, green: 0.9, blue: 0.9) : Color.white)
                    .frame(width: 5, height: UIScreen.main.bounds.width / 4.5)
                    .padding(.top, 5)
                    .onTapGesture {
                        showFence.toggle() // showFenceをトグルする
                    }
                    .disabled(!fmode) // showFenceがfalseの場合はジェスチャーを無効にする
            }
        }
    }
}
