import ComposableArchitecture

extension SubFeature2 {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<SubFeature2.State>)
  }
}
