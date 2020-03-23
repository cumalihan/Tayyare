//
//  FlightsDone.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 23.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct FlightsDone: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: TayyareItems.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \TayyareItems.createdAt, ascending: false)],predicate: NSPredicate(format: "taskDone = %d",true))
    var fetchedItems: FetchedResults<TayyareItems>
    var rowHeight: CGFloat = 50
    
    func removeItems(at offsets: IndexSet) {
        for index in offsets {
            let item = fetchedItems[index]
            managedObjectContext.delete(item)
        }
        do {
            try managedObjectContext.save()
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    
    
    var body: some View {
        List {
            ForEach(fetchedItems,id: \.self) { item in
                HStack {
                    Text(item.taskTitle ?? "Empty")
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                .frame(height: self.rowHeight)
                
            }
        .onDelete(perform: removeItems)
        .navigationBarTitle(Text("Flights Done"))
        
        .listStyle(GroupedListStyle())
        
        }
    }
}

struct FlightsDone_Previews: PreviewProvider {
    
    
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        return FlightsDone().environment(\.managedObjectContext, context)
        
    }
    
}
