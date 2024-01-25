//
//  SubFeature9View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature9View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature9>
  private let store: StoreOf<SubFeature9>

  public init(store: StoreOf<SubFeature9>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature9!")
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
  SubFeature9View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature9()
      }
    )
  )
}
