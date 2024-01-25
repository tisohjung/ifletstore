//
//  SubFeature9+Action.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

extension SubFeature9 {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<SubFeature9.State>)
  }
}
