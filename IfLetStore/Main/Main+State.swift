//
//  Main+State.swift
//  IfLetStore
//
//  Created by Minho Yi on 1/25/24.
//

import ComposableArchitecture

extension Main {
  public struct State: Equatable {
    public init() {}

    var feature1: Feature1.State?
  }
}
