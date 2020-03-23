//
//  MyFlights.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 21.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct MyFlights: View {
    @State var newTaskTitle = ""
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: TayyareItems.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \TayyareItems.createdAt, ascending: false)],predicate: NSPredicate(format: "taskDone = %d",false))
    var fetchedItems: FetchedResults<TayyareItems>
    
    
    func saveTask() {
        guard self.newTaskTitle != "" else {
            return
        }
        let newTayyareItem = TayyareItems(context: self.managedObjectContext)
        newTayyareItem.taskTitle = self.newTaskTitle
        newTayyareItem.createdAt = Date()
        newTayyareItem.taskDone = false
        do {
            try self.managedObjectContext.save()
        } catch {
            print(error.localizedDescription)
        }
        self.newTaskTitle = ""
    }
    
    func  markTaskAsDone (at index: Int) {
        let item = fetchedItems[index]
        item.taskDone = true
        
        do {
            try self.managedObjectContext.save()
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    var rowHeight: CGFloat = 50
    var body: some View {
        
        NavigationView() {
            List {
                ForEach(fetchedItems, id: \.self) { item in
                    
                    HStack {
                        Text(item.taskTitle ?? "Empty")
                        Spacer()
                        NavigationLink(destination: FlightsDone()){
                            Button(action: {self.markTaskAsDone(at: self.fetchedItems.firstIndex(of: item)!)}) {
                                Image(systemName: "circle")
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    
                    
                }
                HStack {
                    TextField("Add Task...",text: $newTaskTitle,onCommit: {self.saveTask()})
                    Button(action: {self.saveTask()}) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    }
                }
                .frame(height: rowHeight)
                .navigationBarTitle(Text("My Flights"))
                
            }
        }
        
        
    
        
        
    }
    
    
    
    struct MyFlights_Previews: PreviewProvider {
        
        static var previews: some View {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            return MyFlights().environment(\.managedObjectContext, context)
            
        }    }
    
}
