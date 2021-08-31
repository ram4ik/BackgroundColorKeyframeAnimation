//
//  ContentView.swift
//  BackgroundColorKeyframeAnimation
//
//  Created by ramil on 31.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var switchColor = Color(.red)
    
    var body: some View {
        ZStack {
            if #available(iOS 15.0, *) {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(switchColor)
                    .task {
                        withAnimation(Animation.easeInOut(duration: 1).delay(2)) {
                            switchColor = Color(.yellow)
                        }
                        withAnimation(Animation.easeInOut(duration: 1).delay(4)) {
                            switchColor = Color(.blue)
                        }
                        withAnimation(Animation.easeInOut(duration: 1).delay(6)) {
                            switchColor = Color(.orange)
                        }
                        withAnimation(Animation.easeInOut(duration: 1).delay(8)) {
                            switchColor = Color(.green)
                        }
                        withAnimation(Animation.easeInOut(duration: 1).delay(10)) {
                            switchColor = Color(.purple)
                        }
                        withAnimation(Animation.easeInOut(duration: 1).delay(12)) {
                            switchColor = Color(.red)
                        }
                    }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
