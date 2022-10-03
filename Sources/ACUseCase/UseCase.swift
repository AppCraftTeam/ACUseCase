//
//  UseCase.swift
//  ACUseCase
//
//  Created by AppCraft LLC on 8/23/21.
//

import Foundation

public protocol UseCaseInput: AnyObject {
    func subscribe(with output: UseCaseOutput)
}

public protocol UseCaseOutput: AnyObject { }

open class UseCase: UseCaseInput {
    
    // MARK: Properties
    public weak var _output: UseCaseOutput?
    
    // MARK: Initialization
    public init() { }
    
    // MARK: UseCaseInterface
    public func subscribe(with output: UseCaseOutput) {
        self._output = output
    }
}
