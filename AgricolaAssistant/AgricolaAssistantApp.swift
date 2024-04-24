//
//  AgricolaAssistantApp.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/17.
//

import SwiftUI

//絶対ここじゃない方がいいグローバル変数&マクロ定義

let WOOD = 0
let CLAY = 1
let REED = 2
let STONE = 3
let GRAIN = 4
let VEGETABLE = 5
let FOOD = 6

var resourceList =  [(name: "wood", num: 0),
                     (name: "clay", num: 1),
                     (name: "reed", num: 0),
                     (name: "stone", num: 0),
                     (name: "grain", num: 0),
                     (name: "vegetable", num: 0),
                     (name: "food", num: 0)]

@main
struct AgricolaAssistantApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
