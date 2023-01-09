//
//  DataController.swift
//  Project11_part1
//
//  Created by K.Takahama on R 5/01/09.
//
import CoreData
import Foundation

class DataCOntroller: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
