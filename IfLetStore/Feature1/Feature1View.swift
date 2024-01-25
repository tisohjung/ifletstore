import ComposableArchitecture
import SwiftUI

// MARK: - View

public struct Feature1View: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<Feature1>
  private let store: StoreOf<Feature1>

  public init(store: StoreOf<Feature1>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

  public var body: some View {
    VStack {
      Text("Hello, Feature1!")
      IfLetStore(
        store.scope(state: \.subFeature1, action: Feature1.Action.subFeature1),
        then: { store in
          SubFeature1View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature2, action: Feature1.Action.subFeature2),
        then: { store in
          SubFeature2View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature3, action: Feature1.Action.subFeature3),
        then: { store in
          SubFeature3View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature4, action: Feature1.Action.subFeature4),
        then: { store in
          SubFeature4View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature5, action: Feature1.Action.subFeature5),
        then: { store in
          SubFeature5View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature6, action: Feature1.Action.subFeature6),
        then: { store in
          SubFeature6View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature7, action: Feature1.Action.subFeature7),
        then: { store in
          SubFeature7View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature8, action: Feature1.Action.subFeature8),
        then: { store in
          SubFeature8View(store: store)
        }
      )
      IfLetStore(
        store.scope(state: \.subFeature9, action: Feature1.Action.subFeature9),
        then: { store in
          SubFeature9View(store: store)
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
  Feature1View(
    store: .init(
      initialState: .init(),
      reducer: {
        Feature1()
      }
    )
  )
}
