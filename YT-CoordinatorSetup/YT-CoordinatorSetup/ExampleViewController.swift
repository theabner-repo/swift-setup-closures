//
//  ExampleViewController.swift
//  YT-CoordinatorSetup
//
//  Created by Abner Castro on 23/10/20.
//  Copyright © 2020 Abner Castro. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private lazy var tableView: UITableView = create {
        $0.backgroundColor = .systemBackground
        $0.tableFooterView = .init()
    }
    
    private let dataSource = Model.examples()
    
    weak var coordinator: ExampleCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Navegación con Coordinator"
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = dataSource[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = dataSource[indexPath.row]
        coordinator?.goToNextViewController(model: model)
    }
    

}
