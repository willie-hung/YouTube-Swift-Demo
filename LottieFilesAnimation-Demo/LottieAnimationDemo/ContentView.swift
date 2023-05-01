//
//  ContentView.swift
//  LottieAnimationDemo
//
//  Created by 洪崧傑 on 2023/4/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Download LottieFiles
        LottieView(lottieFile: "apple")
            .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
