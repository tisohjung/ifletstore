import ComposableArchitecture

extension Feature1 {
  @CasePathable
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<Feature1.State>)
    case subFeature1(SubFeature1.Action)
    case subFeature2(SubFeature2.Action)
    case subFeature3(SubFeature3.Action)
    case subFeature4(SubFeature4.Action)
    case subFeature5(SubFeature5.Action)
    case subFeature6(SubFeature6.Action)
    case subFeature7(SubFeature7.Action)
    case subFeature8(SubFeature8.Action)
    case subFeature9(SubFeature9.Action)
  }
}
