//
//  SubFeature6View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature6View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature6>
  private let store: StoreOf<SubFeature6>

  public init(store: StoreOf<SubFeature6>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature6!")
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
  SubFeature6View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature6()
      }
    )
  )
}
