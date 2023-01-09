//
//  ContentView.swift
//  Project11_part1
//
//  Created by K.Takahama on R 5/01/09.
//

import SwiftUI

struct ContentView: View {
    //Project11_part1 [Accepting multi-line text input with TextEditor]
    //やっていきやしょう(๑>◡<๑)
    //TextEditorで複数行のテキスト入力
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
