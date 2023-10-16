//
//  AddButton.swift
//  To-Do List
//
//  Created by Kobe on 10/15/23.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("+")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
            
        }
        .frame(height: 50)
    }
}

#Preview {
    AddButton()
}
