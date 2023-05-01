//
//  ContentView.swift
//  CarouselDemo
//
//  Created by 洪崧傑 on 2023/4/10.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color.red, Color.blue]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var body: some View {
        NavigationView {
            // Add a background
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                TabView {
                    // 1st
                    NavigationLink(destination: DetailView()) {
                        Image("bullbasaur")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .padding(45)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                    }
                    .navigationBarTitle("Bulbasaur")
                    
                    // 2nd
                    NavigationLink(destination: DetailView()) {
                        Image("charmander")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .padding(45)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                    }
                    .navigationBarTitle("Charmander")
                    
                    // 3rd
                    NavigationLink(destination: DetailView()) {
                        Image("squirtle")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .shadow(color: .gray, radius: 4, y: 15)
                            .padding(45)
                            .background(.thinMaterial)
                            .cornerRadius(20)
                            .offset(y: -50)
                    }
                    .navigationBarTitle("Squirtle")
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
