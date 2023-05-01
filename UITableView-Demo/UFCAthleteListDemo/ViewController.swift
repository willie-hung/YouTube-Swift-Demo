//
//  ViewController.swift
//  UFCAthleteListDemo
//
//  Created by 洪崧傑 on 2023/4/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // List of athletes
    var athletes: [Athlete] = []
    
    // Get our Data Source
    // We are sure that the UFCService exists, hence we use ! in this situation
    var ufcService: UFCService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Initiate the instance
        self.ufcService = UFCService()
        self.athletes = self.ufcService.getAthletes()
        
        // Data Source & Delegate
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    // MARK: Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.athletes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "athleteCell") as! AthleteCell
        
        let currentAthlete = self.athletes[indexPath.row]
        
        cell.athlete = currentAthlete
        
        return cell
    }

}


extension ViewController: UITableViewDelegate {
    // MARK: Delegate
    
    // Implement a swipe action to toggle favorite state
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "", handler: { (action, view, completionHandler) in
            // Update data source when user taps action
            self.athletes[indexPath.row].favorite.toggle()
            
            if
                let cell = self.tableView.cellForRow(at: indexPath) as? AthleteCell,
                let confirmedAthlete = cell.athlete
            {
                cell.accessoryView = confirmedAthlete.favorite ? UIImageView(image: UIImage(systemName: "heart.fill")) : .none
            }
            
            completionHandler(true)
        })
        
        // Set action image
        // Add to favorite: heart, delete from favorite: backward
        action.image = self.athletes[indexPath.row].favorite ? UIImage(systemName: "delete.backward.fill") : UIImage(systemName: "heart.fill")
        action.backgroundColor = self.athletes[indexPath.row].favorite ? .red : .green
        
        // Configuration
        let configuration = UISwipeActionsConfiguration(actions: [action])
        // We doesn't want the delete action trigger when user fully swipe on the cell. Set it to false
        configuration.performsFirstActionWithFullSwipe = false
        return configuration
    }
}

