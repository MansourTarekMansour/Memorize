//
//  ContentView.swift
//  Memorize
//
//  Created by mansour tarek on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis =  ["🐯", "🐻‍❄️", "🐻", "🐹", "🐼", "🦊", "🐰", "🐱", "😾", "🐶", "😞", "😄", "🤲","😀", "😆"]
    @State var emogiCount = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emogiCount], id: \.self){emoji in
                    CardView(content: emoji, isFaceUp: true)
                }
            }
            Spacer()
            HStack{
                remove
                Spacer()
                plus
            }.padding(.horizontal)
        }
    }
    
    var remove: some View{
        Button {
            if emogiCount > 1 {
                emogiCount -= 1
            }
        }label: {
            Image(systemName: "minus.circle").font(.largeTitle).foregroundColor(.red)
        }
    }
    var plus: some View{
        Button {
            if emogiCount < emojis.count {
                emogiCount += 1
            }
        }label: {
            Image(systemName: "plus.circle").font(.largeTitle).foregroundColor(.red)
        }
    }
}



struct CardView: View {
    var content: String
    @State var isFaceUp = true
    var body: some View{
        let shape  = RoundedRectangle(cornerRadius: 20.0)
        ZStack (alignment: .center){
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 5).foregroundColor(.red)
                Text(content).font(.largeTitle)
                }
         else {
            RoundedRectangle(cornerRadius: 20.0).fill(.red)
         }
        }.padding(.all).onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
