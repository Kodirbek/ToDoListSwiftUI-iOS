//
//  ListRowItemView.swift
//  ToDoListSwiftUI
//
//  Created by Abduqodir's MacPro on 2022/06/24.
//

import SwiftUI

struct ListRowItemView: View {
  @Environment(\.managedObjectContext) var viewContext
  @ObservedObject var item: Item
  
  var body: some View {
    Toggle(isOn: $item.completion) {
      Text(item.task ?? "")
        .font(.system(.title2, design: .rounded))
        .fontWeight(.heavy)
        .foregroundColor(item.completion ? Color.pink : Color.primary)
        .padding(.vertical, 12)
        .animation(.default)
    } //: Toggle
    .toggleStyle(CheckboxStyle())
    .onReceive(item.objectWillChange) { _ in
      if self.viewContext.hasChanges {
        try? self.viewContext.save()
      }
    }
  }
}


