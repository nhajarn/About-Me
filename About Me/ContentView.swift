//
//  ContentView.swift
//  About Me
//
//  Created by Hajar on 19/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    @State private var summary = information.summary
    @State private var name = information.name
    @State private var education = information.education


    var body: some View {
        VStack {
            Text("Hello,\nI'm \(name)")
                           .font(.title)
                           .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            
            Text("Eager to Empower and Mentor the Next Generation")
                .font(.headline)
                .multilineTextAlignment(.center)
                           .fontWeight(.bold)
                           .padding(.bottom, 20)
                       
                       Text("Summary")
                           .font(.headline)
                       
                       Text(
                        summary)                .multilineTextAlignment(.center)
                           .padding(.bottom, 10)
                       
           
                        Text("Facts")
                .font(.headline)
            
                        Text(fact)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            
                        Button("Show Random Fact About Me") {
                            fact = information.Facts.randomElement()!
                        }
            HStack {
                            Button(action: {
                                // Open LinkedIn profile link
                                if let url = URL(string: "https://www.linkedin.com/in/alruqihajar/") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image("linkedin")
                                    .resizable()
                                                .frame(width: 50, height: 50)
                                    .foregroundColor(.blue)
                                    .padding(10)
                                    .cornerRadius(10)
                            }
                            .padding(.trailing, 20)
                            
                            Button(action: {
                                // Open Twitter profile link
                                if let url = URL(string: "https://twitter.com/jory871") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image("x")
                                    .resizable()
                                                .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .cornerRadius(10)
                            }
                        }
                       Spacer()
                   }
                   .padding()
    }
}

#Preview {
    ContentView()
}
