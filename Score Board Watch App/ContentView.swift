//
//  ContentView.swift
//  Score Board Watch App
//
//  Created by Evan Perry on 12/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var NumScore = 0;
    @State private var Win = false;
    var body: some View {
    VStack {
        HStack {
            Button(){
                if NumScore >= 10 {
                    Win = true
                    return
                } else {
                    Win = false
                }
                NumScore += 1
            }label: {
                Image(systemName: "arrowshape.up.fill")
            }.padding()
            
            
            
            Text("\(NumScore)")
            Button(){
                if NumScore <= 0 {
                    return
                }
                Win = false
                NumScore -= 1
            }label: {
                Image(systemName: "arrowshape.down.fill")
            }.padding()
        }
        if Win == true {
            Text("You Win!")
                .padding()
                .background(.green)
                .clipShape(.capsule)
        }else {
            Text("\(10 - NumScore)" + " Points Left")
                .padding()
                .background(.red)
                .clipShape(.capsule)
        }
    }
    }
}

#Preview {
    ContentView()
}
