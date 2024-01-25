import ComposableArchitecture

extension Feature1 {
  public struct State: Equatable {
    public init() {}

    var subFeature1: SubFeature1.State?
    var subFeature2: SubFeature2.State?
    var subFeature3: SubFeature3.State?
    var subFeature4: SubFeature4.State?
    var subFeature5: SubFeature5.State?
    var subFeature6: SubFeature6.State?
    var subFeature7: SubFeature7.State?
    var subFeature8: SubFeature8.State?
    var subFeature9: SubFeature9.State?
  }
}
