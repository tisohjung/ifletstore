//
//  SubFeature8View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature8View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature8>
  private let store: StoreOf<SubFeature8>

  public init(store: StoreOf<SubFeature8>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature8!")
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
  SubFeature8View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature8()
      }
    )
  )
}
