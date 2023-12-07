//
//  ContentView.swift
//  Break
//
//  Created by Pedro Henrique Macedo on 11/03/23.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image("koenigsegg-gemera")
//                .imageScale(.small)
//                .foregroundColor(.green)
//            Text("Hi!")
//            Image(systemName: "scribble.variable")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//                .bold()
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Carousel
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(1...3, id: \.self) { num in
                            Text("Card \(num)")
                                .frame(width: 340, height: 350)
                                .background(Color.purple)
                                .cornerRadius(25)
                        }
                    }
                    .padding()
                }

                // Lorem Ipsum Text
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .padding()
                    .lineLimit(3)

                Spacer()

                // Footer
                Text("Contact Us")
                    .padding()
            }
            .navigationBarItems(trailing: Button("Sign In") {
                // Handle sign-in action
            })
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}



struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

