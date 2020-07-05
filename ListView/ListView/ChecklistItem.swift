//
//  ChecklistItem.swift
//  ListView
//
//  Created by zalukana on 5.7.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
