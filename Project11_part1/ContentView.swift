//
//  ContentView.swift
//  Project11_part1
//
//  Created by K.Takahama on R 5/01/09.
//

import SwiftUI

struct ContentView: View {
    //Project11_part1 [How to combine Core Data and SwiftUI]
    //やっていきやしょう(๑>◡<๑)
    //CoreDataファイルを作っていきます
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            Button("Add") {
                let firstNames = ["Ginny","Harry","Hrmione","Luna"]
                let lastNames = ["Granger","Lovegood","Potter","Weast"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
