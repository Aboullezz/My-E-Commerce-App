//
//  ChatListViewController.swift
//  E-Commerce
//
//  Created by Mohamed Aboullezz on 08/02/2023.
//

import UIKit

class ChatListViewController: UIViewController {
    @IBOutlet weak var chatTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerChatList()
    }
    func registerChatList () {
        chatTableView.register(UINib(nibName: "ChatListTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatListTableViewCell")
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.reloadData()
    }
}
extension ChatListViewController: tableView_Delegate_DataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListTableViewCell", for: indexPath) as! ChatListTableViewCell
        if indexPath.row % 2 == 0 {
            cell.chatStackView.alignment = .leading
        }else {
            cell.chatStackView.alignment = .trailing
        }
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
