//
//  ContentView.swift
//  TodoList
//
//  Created by Ganesh Malaiyappan on 12/8/21.
//

import SwiftUI
import Library

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                AngularGradient(colors: [.blue, .green, .yellow], center:.zero)
                    .ignoresSafeArea()
                VStack{
                    ForEach(1..<11, id: \.self) { _ in
                        EntryRow()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
