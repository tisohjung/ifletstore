import ComposableArchitecture

extension SubFeature1 {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<SubFeature1.State>)
  }
}
