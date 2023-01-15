//
//  StanfordApp.swift
//  Stanford
//
//  Created by Roneo  Chakma on 12/11/2022.
//

import SwiftUI

@main
struct StanfordApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game) 
        }
    }
}
