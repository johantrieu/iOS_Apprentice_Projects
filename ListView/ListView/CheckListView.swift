//
//  ContentView.swift
//  ListView
//
//  Created by zalukana on 3.7.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import SwiftUI

struct CheckListView: View {

  // Properties
  // ==========
    
    @ObservedObject var checklist = Checklist()


  // User interface content and layout
  var body: some View {
    NavigationView {
      List {
        ForEach(checklist.items) { checklistItem in
          HStack {
            Text(checklistItem.name)
            Spacer()
            Text(checklistItem.isChecked ? "✅" : "🔲")
          }
          .background(Color.white) // This makes the entire row clickable
          .onTapGesture {
            if let matchingIndex = self.checklist.items.firstIndex(where: { $0.id == checklistItem.id }) {
              self.checklist.items[matchingIndex].isChecked.toggle()
            }
            self.checklist.printChecklistContents()
          }
        }
        .onDelete(perform: checklist.deleteListItem)
        .onMove(perform: checklist.moveListItem)
      }
      .navigationBarItems(trailing: EditButton())
      .navigationBarTitle("Checklist")
      .onAppear() {
        self.checklist.printChecklistContents()
      }
    }
  }


  // Methods
  // =======

}


// Preview
// =======

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      CheckListView()
  }
}

