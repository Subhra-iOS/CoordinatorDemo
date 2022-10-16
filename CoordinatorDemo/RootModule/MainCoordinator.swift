//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Subhra Roy on 16/10/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {

    var childCoordinators: [Coordinator] = [Coordinator]()

    var navigationController: UINavigationController = UINavigationController()

    func configureCoordinator() {
        let initialViewController = ViewController.instantiateFromStoryBoard()
        initialViewController.mainCoordinator = self
        navigationController.pushViewController(initialViewController, animated: false)
    }

    func showDetails() {
        let detailsViewController = DetailsViewController.instantiateFromStoryBoard()
        detailsViewController.setParse(model: ParseModel(name: "Subhra"))
        navigationController.pushViewController(detailsViewController, animated: true)
    }
}
