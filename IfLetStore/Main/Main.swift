import ComposableArchitecture

public struct Main: Reducer {

  public init() {}

  public var body: some Reducer<State, Action> {
    BindingReducer()
    Reduce<State, Action> { state, action in
      switch action {
      case .onAppear:
        state.feature1 = .init()
        return .none

      case .binding:
        return .none

      case .feature1:
        return .none
      }
    }
    .ifLet(\.feature1, action: /Action.feature1) {
      Feature1()
    }
  }
}
