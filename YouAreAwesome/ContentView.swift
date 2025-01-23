//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Enzo Arantes on 1/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)

            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "When the genius bar needs help, they call you!",
                                "You make me Smile!",
                                "You are Great", "You are Fantastic!",
                                "Fabulous? That's You!"]
                message = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count{
                    messageNumber = 0
                }
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if (imageNumber > 9)
                {
                    imageNumber = 0
                }
                print(imageNumber)
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
