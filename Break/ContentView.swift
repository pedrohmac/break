//
//  ContentView.swift
//  Break
//
//  Created by Pedro Henrique Macedo on 11/03/23.
//

import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.backgroundColor = .red
        imageView.image = UIImage(named: "ford-mustang")
        imageView.contentMode = .scaleAspectFit
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                // Carousel
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
//                        ForEach(1...3, id: \.self) { num in
//                            Text("Card \(num)")
//                                .frame(width: 340, height: 350)
//                                .background(Color.white.gradient)
////                                .background(imageView)
//                                .cornerRadius(25)
//                                .foregroundStyle(.gray)
//                                .font(.headline)
//                                .shadow(color: Color(white: 0.9, opacity: 0.99), radius: 4, x: 3, y: 3)
//                        }
                        ForEach(1...3, id: \.self) { num in
                                                    ZStack {
                                                        Image("ford-mustang") // Replace with your image
                                                            .resizable()
                                                            .scaledToFill()
                                                            .frame(width: 340, height: 350)
                                                            .shadow(color: Color(white: 0.9, opacity: 0.5), radius: 8, x: 3, y: 3)
                                                        Text("Card \(num)")
                                                    }
                                                    .frame(width: 340, height: 350)
                                                    .background(Color.white.gradient)
                                                    .cornerRadius(10)
                                                    .foregroundStyle(.white)
                                                    .font(.title)
                                                    .shadow(color: Color(white: 0.5, opacity: 0.5), radius: 8, x: 3, y: 3)
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
                Button(action: {
                    // Handle button action
                }) {
                    Text("Contact Us")
                        .foregroundColor(.white)
                        .frame(minWidth: 100, maxWidth: 250)
                        .padding()
                        .background(Color.blue.gradient)
                        .cornerRadius(50)
                }
                .padding()
            }
            .navigationBarItems(trailing: Button("Sign In") {
                // Handle sign-in action
            })
            .navigationBarTitle("Home", displayMode: .inline)
            .background(Color.clear.edgesIgnoringSafeArea(.all))
        }
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

