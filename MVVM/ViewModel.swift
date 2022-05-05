//
//  ViewModel.swift
//  MVVM
//
//  Created by Vladislav Miroshnichenko on 17.10.2021.
//

import Foundation

protocol ViewModelProtocol {
    
    var count: Int { get }
    var changeHandler: ((ViewModelProtocol) -> Void)? { get set }

    func setCount(value: Int)
    
}

final class ViewModel: ViewModelProtocol {
    
    public var count: Int {
        didSet {
            self.changeHandler?(self)
        }
    }
    
    public var changeHandler: ((ViewModelProtocol) -> Void)?
    
    init() {
        count = 0
    }
    
    public func setCount(value: Int) {
        count = value
    }
}
