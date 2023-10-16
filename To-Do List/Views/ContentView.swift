//
//  ContentView.swift
//  To-Do List
//
//  Created by Kobe on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView().environmentObject(realmManager)
            
            AddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                    
                }
        }
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottom)
        .background(.white)

    }
}

#Preview {
    ContentView()
}
