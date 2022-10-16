//
//  DetailsViewController.swift
//  CoordinatorDemo
//
//  Created by Subhra Roy on 16/10/22.
//

import UIKit

class DetailsViewController: UIViewController, CoordinatorBoard {

    private var detailsCoordinator: DetailsCoordinator?
    private var parseModel: Decodable?
    weak private var mainCoordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsCoordinator = DetailsCoordinator(coordinator: mainCoordinator, parse: parseModel)
    }

    func setParse(model: Decodable, mainCoordinator: Coordinator) {
        parseModel = model
        self.mainCoordinator = mainCoordinator
    }
}
