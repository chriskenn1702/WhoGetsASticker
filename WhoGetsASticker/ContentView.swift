//
//  ContentView.swift
//  WhoGetsASticker
//
//  Created by Christopher Kennedy on 2/6/23.
//

import SwiftUI

struct ContentView: View {
//    @State var students: [String] = []
    @State var students = ["Natasha", "Shuri", "Shaun", "Steve", "Tony", "Bruce"]
    @State var winner = ""
    @State var formattedTooters = ""
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
            
            Text(winner)
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(height: 10)
                .minimumScaleFactor(0.8)
            
            Spacer()
            Spacer()
            
            Text(formattedTooters)
                .font(.title2)
            
            Button{
                winner = students.randomElement()!
            } label: {
                Image(systemName: "person.crop.circle.badge.questionmark")
                Text("Select Winner")
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.indigo)
            .disabled(students.isEmpty)
        }
        .padding()
        .onAppear{
            if students.isEmpty{
                winner = "No one tooted this week :("
            } else{
                var appearString = "This weeks Tooters Were:\n\(students[0])"
                if students.count>1{
                    for i in (1...students.count-1){
                        appearString += ", \(students[i])"
                    }
                }
                formattedTooters = appearString
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
