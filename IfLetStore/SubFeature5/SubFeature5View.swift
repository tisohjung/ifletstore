//
//  SubFeature5View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature5View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature5>
  private let store: StoreOf<SubFeature5>

  public init(store: StoreOf<SubFeature5>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature5!")
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
  SubFeature5View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature5()
      }
    )
  )
}
