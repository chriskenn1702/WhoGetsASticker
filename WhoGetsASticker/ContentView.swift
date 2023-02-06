//
//  ContentView.swift
//  WhoGetsASticker
//
//  Created by Christopher Kennedy on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var students = ["Natasha", "Shuri", "Shaun", "Steve", "Tony", "Bruce"]
    @State var student = ""
    var body: some View {
        VStack {
            Text("Who Gets a Sticker?")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.indigo)
            
            Image("MyMacBuildsApps")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            Spacer()
            
            Text("This Weeks Winner is:")
                .font(.largeTitle)
            
            Spacer()
            
            Text(student)
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(height: 10)
            
            Spacer()
            Spacer()
            
            Button{
                if students.isEmpty{
                    student = "No one tooted this week :("
                } else{
                    student = students.randomElement()!
                }
            } label: {
                Image(systemName: "person.crop.circle.badge.questionmark")
                Text("Select Winner")
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.indigo)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
