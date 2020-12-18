//
//  ViewController.swift
//  MultipleCustomCells
//
//  Created by Juan Capponi on 12/18/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let table = UITableView()
        
        table.register(SimpleViewCellTableViewCell.self, forCellReuseIdentifier: SimpleViewCellTableViewCell.identifier)
        
        table.register(ImageViewCell.nib(), forCellReuseIdentifier: "ImageViewCell")
        
        table.register(TotoYoViewCell.nib(), forCellReuseIdentifier: "TotoYoViewCell")
        
        return table
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageViewCell", for: indexPath) as! ImageViewCell
            cell.configure(with: "image_1")
            return cell
        } else if indexPath.row < 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TotoYoViewCell", for: indexPath) as! TotoYoViewCell
            cell.configure(with: "image_2")
            cell.ourLabek.text = "Toto and me"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: SimpleViewCellTableViewCell.identifier, for: indexPath)
            cell.textLabel?.text = "Just a simple cell"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                var height:CGFloat = CGFloat()
                if indexPath.row < 5 {
                    height = 60.0
                } else if indexPath.row < 10 {
                    height = 100.0
                } else {
                    height = 50
                }
                return height
            }
}

