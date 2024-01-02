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
    @State private var RanWin = 10;
    let RanWinTable = [5,10,15,20]
    var body: some View {
        HStack(spacing: 20) {
            VStack(spacing: 10) {
                if Win == true {
                    Text("You Win!")
                        .padding()
                        .background(.green)
                        .clipShape(.capsule)
                    
                }else {
                    Text("\(RanWin - NumScore)" + " Points To Win")
                        .padding()
                        .multilineTextAlignment(.center)
                        .clipShape(.capsule)
                }
                
                Button("Random Goal"){
                    RanWin = RanWinTable.randomElement() ?? 10
                    NumScore = 0
                    Win = false
                }
                .buttonStyle(.plain)
                .padding(10)
                .background(.fill)
                .clipShape(.buttonBorder)
            }
            VStack {
                Button(){
                    if NumScore != RanWin {
                        Win = false
                        NumScore += 1
                    }
                    if NumScore == RanWin {
                        Win = true
                        return
                    }
                    
                }label: {
                    Image(systemName: "arrowshape.up.fill")
                        .padding(.vertical, 15)
                        .padding(.horizontal, 25)
                        .background(.green)
                        .clipShape(.capsule)
                }
                .buttonStyle(.plain)
                
                
                
                Text("\(NumScore)")
                Button(){
                    if NumScore <= 0 {
                        return
                    }
                    Win = false
                    NumScore -= 1
                }label: {
                    Image(systemName: "arrowshape.down.fill")
                        .padding(.vertical, 15)
                        .padding(.horizontal, 25)
                        .background(.red)
                        .clipShape(.capsule)
                    
                }.buttonStyle(.plain)
                
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
