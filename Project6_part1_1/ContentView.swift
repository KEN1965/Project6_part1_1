//
//  ContentView.swift
//  Project6_part1_1
//
//  Created by K.Takahama on R 4/11/27.
//

import SwiftUI

struct ContentView: View {
    //回転アニメーション
    @State private var animationAmount = 0.0
    
    var body: some View {
            Button("Tap me") {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                    //回転に動きを追加
                    animationAmount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x:0 , y: 1, z: 0))
            }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
