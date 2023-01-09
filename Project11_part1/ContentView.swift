//
//  ContentView.swift
//  Project11_part1
//
//  Created by K.Takahama on R 5/01/09.
//

import SwiftUI

struct PushButton: View {
    let title: String
    @State var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct ContentView: View {
    //Project11_part1 やっていきやしょう(๑>◡<๑)
    //Toogleボタンの作成
    //カスタムしていきます
    @State private var remenberMe = false
    var body: some View {
        VStack{
            PushButton(title: "Remenber Me", isOn: remenberMe)
            Text(remenberMe ? "On" : "Off")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
