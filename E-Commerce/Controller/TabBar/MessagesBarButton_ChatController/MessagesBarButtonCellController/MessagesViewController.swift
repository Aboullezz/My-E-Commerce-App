//
//  MessagesViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 05/02/2023.
//

import UIKit

class MessagesViewController: UIViewController {
    //in Storyboard in table view make seperator = non
    @IBOutlet weak var chatTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Messages"
        registerTableView()
    }
    //    MARK: - Sigue GoTo Chat:
    func registerTableView () {
        chatTableView.register(UINib(nibName: "MessagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MessagesTableViewCell")
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.reloadData()
    }
}
extension MessagesViewController: tableView_Delegate_DataSource {
    //    MARK: - UITableViewDataSource Methods:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCell",for: indexPath)
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main_iPhone1", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ChatListViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

