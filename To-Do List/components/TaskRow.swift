//
//  TaskRow.swift
//  To-Do List
//
//  Created by Kobe on 10/15/23.
//

import SwiftUI

struct TaskRow: View {
    
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: completed ? "checkmark.circle" : "circle")
            Text(task)
        }
    }
}

#Preview {
    TaskRow(task: "Example task", completed: true)
}
