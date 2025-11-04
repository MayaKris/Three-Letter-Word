//
//  ContentView.swift
//  Three Letter Word
//
//  Created by Maya Krishnan on 11/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var letter = ""
    @State private var counter = 0
    let alphabet = "ABCDEFGHIKLMNOPQRSTUVWXYZ"
    var body: some View {
        VStack {
            Text("Three Letter Word")
                .font(.largeTitle)
                .bold()
                .padding()
            Text("Tap the gray box to change the letter.")
            CustomLetterBox(color: .gray, text: letter)
                .onTapGesture {
                    let position = alphabet.index(alphabet.startIndex, offsetBy: counter)
                    counter += 1
                    if counter == alphabet.count {
                        counter = 0
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}

struct CustomLetterBox: View {
    let color : Color
    let text : String
    var body: some View {
        ZStack {
            color
            Text(text)
                .font(.system(size: 90))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120)
    }
}
