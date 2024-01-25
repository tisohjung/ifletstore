import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct SubFeature1View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature1>
  private let store: StoreOf<SubFeature1>

  public init(store: StoreOf<SubFeature1>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature1!")
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
  SubFeature1View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature1()
      }
    )
  )
}
