//
//  IfLetStoreApp.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct IfLetStoreApp: App {
  let store: StoreOf<Main> = .init(
    initialState: .init(),
    reducer: { Main() }
  )
  var body: some Scene {
    WindowGroup {
      MainView(store: store)
    }
  }
}
