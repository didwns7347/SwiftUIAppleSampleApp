//
//  ContentView.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.leading)
                .padding(.all, 49.0)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
