//
//  ContentView.swift
//  Shared
//
//  Created by Luke Drushell on 7/1/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var temps: [Int] = [60]
    @State private var location = "Los Angeles"
    @State private var HL: [Int] = [92, 57]
    
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text("\(location)")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .regular, design: .default))
                        .padding(.top, 80)
                    Text(" \(temps[0])º")
                        .foregroundColor(.white)
                        .font(.system(size: 105, weight: .light, design: .default))
                    Text("Clear")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 25, weight: .medium, design: .default))
                    Text("H:\(HL[0])º   L:\(HL[1])º")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .medium, design: .default))
                }
                VStack {
                        Text("Clear conditions will continue all day.")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .padding(5)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .multilineTextAlignment(.leading)
                    Divider()
                        .padding(-10)
                        .frame(width: UIScreen.main.bounds.width*0.95)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(6...12, id: \.self, content: { index in
                                
                                let random = Int.random(in: 0...1)
                                
                                VStack {
                                    Text(index == 6 ? "Now" : "\(index) AM")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .bold, design: .default))
                                    Image(systemName: random == 0 ? "moon.fill" : "sun.max.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25, alignment: .center)
                                        .foregroundColor(random == 0 ? Color.white : Color.yellow)
                                        .padding(10)
                                    Text("60º")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22, weight: .bold, design: .default))
                                        .padding(.bottom)
                                }
                            }) .padding(.leading)
                            .padding(.trailing)
                        }
                    }
                }
                .background(.ultraThinMaterial)
                .background(Color.blue.opacity(0.5))
                .cornerRadius(10)
                .padding()
                
                Text("So far it's just the normal weather app but maybe someday I'll turn this into a real one.")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .padding(20)
                    .frame(width: UIScreen.main.bounds.width*0.95)
                    .background(.ultraThinMaterial)
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(10)
                
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
