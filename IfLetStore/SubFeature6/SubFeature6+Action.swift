//
//  SubFeature6+Action.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

extension SubFeature6 {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<SubFeature6.State>)
  }
}
