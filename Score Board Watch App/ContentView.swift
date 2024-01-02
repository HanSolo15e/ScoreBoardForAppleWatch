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
    @State private var RanWin = 0;
    var body: some View {
    HStack(spacing: 10
) {
        VStack(spacing: 10) {
            if Win == true {
                Text("You Win!")
                    .padding()
                    .background(.green)
                    .clipShape(.capsule)
                    
            }else {
                Text("\(10 - NumScore)" + " Points To Win")
                    .padding()
                    .multilineTextAlignment(.center)
                    .clipShape(.capsule)
            }
                
            Button(){
                
            }label: {
                Text("Random Goal")
                    
            }
            .padding()
        }
        VStack {
            Button(){
                if NumScore != 10 {
                    Win = false
                    NumScore += 1
                }
                if NumScore == 10 {
                    Win = true
                    return
                }
                
            }label: {
                Image(systemName: "arrowshape.up.fill")
            }.padding()
                .frame(width: 80, height: 50)
                .buttonStyle(.plain)
                .background(.green)
                .clipShape(.capsule)
            
            
            Text("\(NumScore)")
            Button(){
                if NumScore <= 0 {
                    return
                }
                Win = false
                NumScore -= 1
            }label: {
                Image(systemName: "arrowshape.down.fill")
            }
            .frame(width: 80, height: 50)
            .buttonStyle(.plain)
            .background(.red)
            .clipShape(.capsule)
                
        }
       
    }
    }
}

#Preview {
    ContentView()
}
