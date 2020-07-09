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
    @State var newChecklistItemViewIsVisible = false
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
      .navigationBarItems(
        leading: Button(action: { self.newChecklistItemViewIsVisible = true }) {
            HStack {
                Image(systemName: "plus.circle.fill")
                Text("Add item")
            }
        },
        trailing: EditButton()
      )
      .navigationBarTitle("Checklist", displayMode: .inline)
      .onAppear() {
        self.checklist.printChecklistContents()
      }
    }
    .sheet(isPresented: $newChecklistItemViewIsVisible) {
      NewChecklistItemView(checklist: self.checklist)
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

