//
//  ContentView.swift
//  First-VisionOS-Demo
//
//  Created by 洪崧傑 on 2023/7/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var selectedChampion: String = "lucian"
    
    var body: some View {
        
        
        let champions = ["lucian", "aatrox", "ahri", "jinx", "swain"]
        
        
        NavigationSplitView {
            List {
                ForEach(champions, id: \.self) { champion in
                    Text(champion)
                        .onTapGesture {
                            selectedChampion = champion
                        }
                        .listRowBackground(selectedChampion == champion ? Color.gray : Color.clear)
                }
            }
            .navigationTitle(" 🏆 Champions")
        } detail: {

            ChampionDetailView(championName: selectedChampion)

        }
    }
}

#Preview {
    ContentView()
}
