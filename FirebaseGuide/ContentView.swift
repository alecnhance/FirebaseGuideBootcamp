//
//  ContentView.swift
//  FirebaseGuide
//
//  Created by Alec Hance on 1/27/25.
//

import SwiftUI

//this is a meaningless change

struct ContentView: View {
    @State var data: Int = 0
    var vm: FirebaseViewModel = FirebaseViewModel.vm
    var body: some View {
        VStack {
            Image("IMG_7882")
                .resizable()
                .scaledToFill()
                .frame(width: 0.75 * UIScreen.main.bounds.width, height: 0.75 * UIScreen.main.bounds.width)
                .cornerRadius(0.75 * UIScreen.main.bounds.width)
            Button {
                // Implement firebase here
            } label: {
                Text("Read Alec's IQ")
                    .frame(maxWidth: .infinity)
            }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.black)
                .cornerRadius(25)
                .padding(.horizontal, 0.2 * UIScreen.main.bounds.width)
                .padding(.vertical, 10)
            Text("Data: \(data)").padding(10)
            Button {
                // Implement Firebase here
            } label: {
                Text("Write IQ to Buzz")
                    .frame(maxWidth: .infinity)
            }
                .buttonStyle(BorderedProminentButtonStyle())
                .cornerRadius(25)
                .tint(.black)
                .padding(.horizontal, 0.2 * UIScreen.main.bounds.width)
                .padding(.vertical, 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
