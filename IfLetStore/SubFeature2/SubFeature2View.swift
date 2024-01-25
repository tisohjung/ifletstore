import ComposableArchitecture
import SwiftUI

// MARK: - View

public struct SubFeature2View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<SubFeature2>
  private let store: StoreOf<SubFeature2>

  public init(store: StoreOf<SubFeature2>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, SubFeature2!")
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
  SubFeature2View(
    store: .init(
      initialState: .init(),
      reducer: {
        SubFeature2()
      }
    )
  )
}
