//
//  Checklist.swift
//  ListView
//
//  Created by zalukana on 5.7.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import Foundation

class Checklist: ObservableObject {
    
    @Published var items = [
      ChecklistItem(name: "Walk the dog", isChecked: false),
      ChecklistItem(name: "Brush my teeth", isChecked: false),
      ChecklistItem(name: "Learn iOS development", isChecked: true),
      ChecklistItem(name: "Soccer practice", isChecked: false),
      ChecklistItem(name: "Eat ice cream", isChecked: false),
    ]
    
    func printChecklistContents() {
      for item in items {
        print(item)
      }
      print("===================")
    }

    func deleteListItem(whichElement: IndexSet) {
      items.remove(atOffsets: whichElement)
      printChecklistContents()
    }

    func moveListItem(whichElement: IndexSet, destination: Int) {
      items.move(fromOffsets: whichElement, toOffset: destination)
      printChecklistContents()
    }
}
