//
//  NewChecklistItemView.swift
//  ListView
//
//  Created by zalukana on 8.7.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import SwiftUI

struct NewChecklistItemView: View {
    var body: some View {
        VStack {
            Text("Add new item")
            Text("Enter item name")
            Button(action: {
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Add new item")
              }
        }
        Text("Swipe down to cancel.") }
    }
}

struct NewChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewChecklistItemView()
    }
}
