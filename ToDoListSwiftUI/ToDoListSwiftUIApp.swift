//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Abduqodir's MacPro on 2022/06/20.
//

import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    let persistenceController = PersistenceController.shared
  
  @AppStorage("isDarkMode") var isDarkMode: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
