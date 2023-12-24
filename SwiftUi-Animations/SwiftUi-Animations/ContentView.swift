//
//  ContentView.swift
//  SwiftUi-Animations
//
//  Created by Levan Loladze on 23.12.23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    @State private var yOffset: CGFloat = 50.0
    @State private var textSize: CGFloat = 25
    @State private var color = Color.blue
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text("TBC IT Academy")
                .foregroundColor(Color.white)
                .colorMultiply(self.color)
                .offset(y: yOffset)
                .font(.system(size: textSize))
                .onAppear {
                    withAnimation(
                        Animation.easeInOut(duration: 2.0)
                            .repeatForever(autoreverses: true)
                    ) {
                        yOffset = 0.0
                        textSize = 32
                        color = Color.red
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
