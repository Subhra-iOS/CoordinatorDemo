//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Subhra Roy on 16/10/22.
//

import UIKit

class ViewController: UIViewController, CoordinatorBoard {

    weak var mainCoordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOnDetails(_ sender: Any) {
        mainCoordinator?.showDetails()
    }
}
