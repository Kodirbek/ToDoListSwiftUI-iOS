//
//  HideKeyboardExtension.swift
//  ToDoListSwiftUI
//
//  Created by Abduqodir's MacPro on 2022/06/21.
//

import SwiftUI

#if canImport(UIKit)
extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

#endif
