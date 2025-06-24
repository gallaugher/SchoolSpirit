//  ContentView.swift
//  SchoolSpirit
//  Created by John Gallaugher on 6/24/25.
//  YouTube.com/profgallaugher - gallaugher.bsky.social

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
//                .background(.maroonBC)
//                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .frame(width: 350, height: 350)
                .animation(.default, value: imageName)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .animation(.default, value: message)
            
            Spacer()
            
            HStack {
                Button {
                    message = "We Are BC!"
                    imageName = "eagleLogo"
                } label: {
                    // label
//                    Image(systemName: "graduationcap")
                    Image("eagleLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 28)
                    Text("Who Are We?")
                }
                
                Button("🦅 How is Baldwin?") {
                    message = "Flyin' High!"
                    imageName = "baldwin"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.goldBC)
            .foregroundStyle(.maroonBC)
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
