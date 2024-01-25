//
//  SubFeature5.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

public struct SubFeature5: Reducer {

  public init() {}

  public var body: some Reducer<State, Action> {
    BindingReducer()
    Reduce<State, Action> { state, action in
      switch action {
      case .onAppear:
        return .none

      case .binding:
        return .none
      }
    }
  }
}
