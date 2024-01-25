//
//  Main+Action.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

extension Main {
  @CasePathable
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<Main.State>)
    case feature1(Feature1.Action)
  }
}
