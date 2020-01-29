//
//  ContentView.swift
//  Animations
//
//  Created by Dmitry Reshetnik on 29.01.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var animationAmount: CGFloat = 1
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        
//        Button("Tap Me") {
//            //self.animationAmount += 1
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        //.scaleEffect(animationAmount)
//        //.animation(.interpolatingSpring(stiffness: 50, damping: 1))
//        //.blur(radius: (animationAmount - 1) * 3)
//        .overlay(
//            Circle()
//                .stroke(Color.red)
//                .scaleEffect(animationAmount)
//                .opacity(Double(2 - animationAmount))
//                .animation(
//                    Animation.easeInOut(duration: 1)
//                        //.delay(1)
//                        //.repeatCount(3, autoreverses: true)
//                        .repeatForever(autoreverses: false)
//                )
//        )
//        .onAppear {
//            self.animationAmount = 2
//        }
//        print(animationAmount)
//
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                Animation.easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                self.animationAmount += 1
//            }
//            .padding(40)
//            .background(Color.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
