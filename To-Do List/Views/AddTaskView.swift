//
//  AddTaskView.swift
//  To-Do List
//
//  Created by Kobe on 10/15/23.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter your task", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != ""{
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding(8)
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color.white)
    }
}

#Preview {
    AddTaskView()
}
