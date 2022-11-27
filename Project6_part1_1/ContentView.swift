//
//  ContentView.swift
//  Project6_part1_1
//
//  Created by K.Takahama on R 4/11/27.
//

import SwiftUI

struct ContentView: View {
    //ステッパーを使ったアニメーション
    @State private var animationAmount = 1.0
    
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeOut(duration: 1)
                .repeatForever()
            ),in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
