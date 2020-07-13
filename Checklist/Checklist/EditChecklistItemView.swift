//
//  EditChecklistItemView.swift
//  Checklist
//
//  Created by Joey deVilla on 1/25/20.
//  Copyright © 2020 Joey deVilla. All rights reserved.
//

import SwiftUI

struct EditChecklistItemView: View {

  // Properties
  // ==========

  @Binding var checklistItem: ChecklistItem

  // User interface content and layout
  var body: some View {
    Form {
      TextField("Name", text: $checklistItem.name)
      Toggle("Completed", isOn: $checklistItem.isChecked)
    }
  }
}


// Preview
// =======

struct EditChecklistItemView_Previews: PreviewProvider {
  static var previews: some View {
    EditChecklistItemView(checklistItem: .constant(ChecklistItem(name: "Sample item")))
  }
}
