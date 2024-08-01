//
//  ChangeRectangle.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct ChangeRectangle: View {
    @State var tileData = [(title: "農場", color: Color.green),
                           (title: "家(木)", color: Color.brown),
                           (title: "家(レンガ)", color: Color.brown),
                           (title: "家(石)", color: Color.gray),
                           (title: "畑", color: Color.brown)]
    
    @Binding var color: Color
    @Binding var show: Bool
    
    var body: some View {
        NavigationStack {
            List(0..<tileData.count, id: \.self) { index in
                Button {
                    color = tileData[index].color
                    show.toggle()
                } label: {
                    HStack {
                        Text(tileData[index].title)
                    }
                }
                .foregroundColor(.primary)
            }
        }
        
    }
}


#Preview {
    ContentView()
        .environmentObject(ResourceViewModel())
}
