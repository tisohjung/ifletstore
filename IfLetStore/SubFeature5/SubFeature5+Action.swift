//
//  SubFeature5+Action.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

extension SubFeature5 {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<SubFeature5.State>)
  }
}
