//
//  MainView.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct MainView: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<Main>
  private let store: StoreOf<Main>

  public init(store: StoreOf<Main>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, Main!")
      IfLetStore(
        store.scope(state: \.feature1, action: \.feature1),
        then: { store in
          Feature1View(store: store)
        }
      )
    }
    .task {
      await viewStore
        .send(.onAppear)
        .finish()
    }
  }
}

// MARK: - Preview

#Preview {
  MainView(
    store: .init(
      initialState: .init(),
      reducer: {
        Main()
      }
    )
  )
}
