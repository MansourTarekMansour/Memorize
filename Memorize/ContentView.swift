//
//  ContentView.swift
//  Memorize
//
//  Created by mansour tarek on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
        }
    }
}


struct CardView: View {
    var isFaceUp = true
    var body: some View{
        let shape  = RoundedRectangle(cornerRadius: 20.0)
        if isFaceUp {
            ZStack (alignment: .center){
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 5).foregroundColor(.blue)
                Text("🐹").font(.largeTitle)
            }.padding(.all)
        } else {
            RoundedRectangle(cornerRadius: 20.0).fill(.red).padding()
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
