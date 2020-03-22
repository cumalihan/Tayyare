//
//  MyFlights.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 21.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct MyFlights: View {
    var sampleTasks = ["Task One","Task Two","Task Three"]
    @State var newTaskTitle = ""
    
    
    
    var rowHeight: CGFloat = 50
    var body: some View {
        NavigationView {
            List {
                ForEach(sampleTasks, id: \.self) { item in
                    
                    HStack {
                        Text(item)
                        Spacer()
                        
                        Button(action: {print("Task done.")}) {
                            Image(systemName: "circle")
                                .imageScale(.large)
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                HStack {
                    TextField("Add Task...",text: $newTaskTitle,onCommit: {print("New task title entered.")})
                    Button(action: {print("New task title entered")}) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    }
                }
                .frame(height: rowHeight)
            .navigationBarTitle(Text("My Flights"))
            }
        }
        
        
    }
}

struct MyFlights_Previews: PreviewProvider {
    static var previews: some View {
        MyFlights()
    }
}
