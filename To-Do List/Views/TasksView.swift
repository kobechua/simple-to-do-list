//
//  TasksView.swift
//  To-Do List
//
//  Created by Kobe on 10/15/23.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            List{
                ForEach(realmManager.tasks, id: \.id){
                    task in
                    
                    if !task.isInvalidated{
                        TaskRow(task: task.title, completed: task.completed)
                            .onTapGesture{
                                realmManager.updateTask(id:task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing){
                                Button(role: .destructive){
                                    realmManager
                                        .deleteTask(id: task.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                    

                }
            }.onAppear{
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance()
                    .backgroundColor = UIColor.white
            }.listRowSeparator(.hidden)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color(.white))
    }
}

struct TasksView_Previews: PreviewProvider{
    static var previews: some View{
        TasksView()
            .environmentObject(RealmManager())
    }
}
