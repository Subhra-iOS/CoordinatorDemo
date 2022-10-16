//
//  DetailsCoordinator.swift
//  CoordinatorDemo
//
//  Created by Subhra Roy on 16/10/22.
//

import Foundation
import UIKit

class DetailsCoordinator: ChildCoordinator {

    private var baseCorodinator: Coordinator?
    private var parseModel: Decodable?

    init(coordinator: Coordinator?, parse value: Decodable?) {
        self.baseCorodinator = coordinator
        self.parseModel = value
    }

    func configureChildCoordinator() {
        
    }

    func dismiss() {
        baseCorodinator?.navigationController.popViewController(animated: true)
    }
}
