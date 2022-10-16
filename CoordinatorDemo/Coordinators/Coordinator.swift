//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Subhra Roy on 16/10/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get }

    func configureCoordinator()
}

protocol ChildCoordinator: AnyObject{
    func configureChildCoordinator()
    func dismiss()
}
