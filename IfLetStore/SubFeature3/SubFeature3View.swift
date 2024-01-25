//
//  SubFeature3View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature3View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature3>
  private let store: StoreOf<SubFeature3>

  public init(store: StoreOf<SubFeature3>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature3!")
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
  SubFeature3View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature3()
      }
    )
  )
}
