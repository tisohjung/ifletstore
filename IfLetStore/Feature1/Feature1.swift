import ComposableArchitecture

public struct Feature1: Reducer {

  public init() {}

  public var body: some Reducer<State, Action> {
    BindingReducer()
    Reduce<State, Action> { state, action in
      switch action {
      case .onAppear:
        state.subFeature1 = .init()
        state.subFeature2 = .init()
        state.subFeature3 = .init()
        state.subFeature4 = .init()
        state.subFeature5 = .init()
        state.subFeature6 = .init()
        state.subFeature7 = .init()
        state.subFeature8 = .init()
        state.subFeature9 = .init()
        return .none

      case .binding:
        return .none

      case .subFeature1:
        return .none

      case .subFeature2:
        return .none

      case .subFeature3:
        return .none

      case .subFeature4:
        return .none

      case .subFeature5:
        return .none

      case .subFeature6:
        return .none

      case .subFeature7:
        return .none

      case .subFeature8:
        return .none

      case .subFeature9:
        return .none
      }
    }
    .subFeatures1to5()
    .subFeatures6to9()
  }
}

extension Reducer where State == Feature1.State, Action == Feature1.Action {
  func subFeatures1to5() -> some ReducerOf<Self> {
    self
      .ifLet(\.subFeature1, action: /Action.subFeature1) { SubFeature1() }
      .ifLet(\.subFeature2, action: /Action.subFeature2) { SubFeature2() }
      .ifLet(\.subFeature3, action: /Action.subFeature3) { SubFeature3() }
      .ifLet(\.subFeature4, action: /Action.subFeature4) { SubFeature4() }
      .ifLet(\.subFeature5, action: /Action.subFeature5) { SubFeature5() }
  }

  func subFeatures6to9() -> some ReducerOf<Self> {
    self
      .ifLet(\.subFeature6, action: /Action.subFeature6) { SubFeature6() }
      .ifLet(\.subFeature7, action: /Action.subFeature7) { SubFeature7() }
      .ifLet(\.subFeature8, action: /Action.subFeature8) { SubFeature8() }
      .ifLet(\.subFeature9, action: /Action.subFeature9) { SubFeature9() }
  }
}
