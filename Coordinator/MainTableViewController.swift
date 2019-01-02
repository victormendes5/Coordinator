//
//  MainTableViewController.swift
//  Coordinator
//
//  Created by Victor Mendes on 27/12/18.
//  Copyright © 2018 João Mendes | Stone. All rights reserved.
//

import UIKit
import Moya

class MainTableViewController: UITableViewController {

    internal var listEntity: ListEntity?
    
    internal let reuseIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.request()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listEntity?.links.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath)
        cell.textLabel?.text = self.listEntity?.links[indexPath.row].rel
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainTableViewController {
    
    func request() {
        let provider = MoyaProvider<Requests>()
        
        provider.request(.list) { (result) in
            switch result {
            case .success(let response):
                let decoder = JSONDecoder()
                do {
                    let decode = try decoder.decode(ListEntity.self, from: response.data)
                    self.listEntity = decode
                    self.tableView.reloadData()
                    
                } catch let fail {
                    print(fail)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
