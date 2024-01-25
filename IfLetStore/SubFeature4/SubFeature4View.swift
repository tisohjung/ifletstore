//
//  SubFeature4View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature4View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature4>
  private let store: StoreOf<SubFeature4>

  public init(store: StoreOf<SubFeature4>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature4!")
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
  SubFeature4View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature4()
      }
    )
  )
}
