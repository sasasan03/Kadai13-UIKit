//
//  ViewController.swift
//  Kadai13-UIKit
//
//  Created by sako0602 on 2023/06/18.
//

import UIKit

class ViewController: UIViewController {
    
    let listViewModel = ListViewModel()

    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ListTableViewCell", bundle: nil)
        listTableView.register(nib, forCellReuseIdentifier: "customCell")
        listTableView.delegate = self
        listTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! ListTableViewCell
        cell.cheackMarkImg.image = UIImage(systemName: listViewModel.listArray[indexPath.row].isCheaked ? "checkmark.circle" : "circle.dotted")
        cell.todoText.text = listViewModel.listArray[indexPath.row].name
        return cell
    }
}
