//
//  SubFeature7View.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature7View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature7>
  private let store: StoreOf<SubFeature7>

  public init(store: StoreOf<SubFeature7>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature7!")
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
  SubFeature7View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature7()
      }
    )
  )
}
