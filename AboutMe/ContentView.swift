//
//  ContentView.swift
//  AboutMe
//
//  Created by Nicole Nunez on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isButtonClicked = false
   
    var body: some View {
            VStack {
                
                Image("nicole")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 0.0)
                    .frame(height: 350.0)
                    .clipShape(Circle())
                    .background(Image("studio"))
                VStack{
                  
                Text("About Me!")
                    .bold()
                    .font(.title)
                    .padding(0.0)
                    .foregroundColor(.white)
                    
                Text("Hi, my name is Nicole!")
                    .foregroundColor(.white)
                    .bold()
               
                
                Button("Click Me") {
                    isButtonClicked = true
                }
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.446, saturation: 0.592, brightness: 0.359))
                .buttonStyle(/*@PLACEHOLDER=Button Style@*/DefaultButtonStyle())
                    if isButtonClicked{
                        Text("A few facts about me: I am sort-of a published writer! I live in Tipton CA, currently in the 100 degree weather! Unpopular opinion would be that I think crumbl cookies are overrated!")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        
                    }
                }
                .padding(.vertical, 10.0)
                .frame(width: 250.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.365, saturation: 0.427, brightness: 0.691)/*@END_MENU_TOKEN@*/)
               
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(red: 194/255, green: 239/255, blue: 179/255))
                    .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
