//
//  ChampionDetailView.swift
//  my-first-vision-os-project
//
//  Created by 洪崧傑 on 2023/7/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ChampionDetailView: View {
    let championName: String
    
    var body: some View {
        VStack {
            Model3D(named: championName) { model in
                model
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
            } placeholder: {
                ProgressView()
            }
        }
        .navigationTitle(championName.capitalized)
        .padding()
    }
}

#Preview {
    ChampionDetailView(championName: "ahri")
}
