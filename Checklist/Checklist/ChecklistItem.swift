//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Joey deVilla on 1/25/20.
//  Copyright © 2020 Joey deVilla. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable, Codable {

  // Properties
  // ==========
  
  let id = UUID()
  var name: String
  var isChecked: Bool = false
}
