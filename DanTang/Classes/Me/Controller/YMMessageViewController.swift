//
//  YMMessageViewController.swift
//  DanTang
//
//  Created by Perry_Ji on 16/7/23.
//  Copyright © 2016年 hrscy. All rights reserved.
//

import UIKit

let messageCellID = "messageCellID"

class YMMessageViewController: YMBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    /// 创建 tableView
    private func setupTableView() {
        let tableView = UITableView()
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: messageCellID)
        tableView.tableFooterView = UIView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension YMMessageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(messageCellID)
        cell?.textLabel?.text = "消息---" + String(indexPath.row)
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
