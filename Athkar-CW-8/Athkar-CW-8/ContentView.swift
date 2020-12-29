//
//  ContentView.swift
//  Athkar-CW-8
//
//  Created by mariam alfoudari on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0,0]
    var body: some View {
        VStack(alignment: .trailing ) {
        ThekerButton(counter: $counter[0], label: "الحمدالله")
        ThekerButton(counter: $counter[1], label: "استغفرالله ")
        ThekerButton(counter: $counter[2], label: "سبحان الله و بحمده")
    }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ThekerButton: View {
    @Binding var counter: Int
    let label: String
    
    var body: some View {
        HStack{
           Text(label)
            .font(.largeTitle)
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    .background(Color.green)
                    .clipShape(Circle())
                    .padding()
            })
        }
    }
    
}
