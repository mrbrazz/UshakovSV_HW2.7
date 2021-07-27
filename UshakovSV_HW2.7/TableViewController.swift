//
//  TableViewController.swift
//  UshakovSV_HW2.7
//
//  Created by Сергей Ушаков on 27.07.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var trackList = Track.getTrackList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        let track = trackList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = track.song
        content.secondaryText = track.artist
        
        content.image = UIImage(named: track.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        content.imageProperties.maximumSize = CGSize(width: 80, height: 80)
        content.imageProperties.reservedLayoutSize = CGSize(width: 80, height: 80)
        cell.imageView?.contentMode = .scaleAspectFill
        
        
        cell.contentConfiguration = content
        
        return cell
    }



    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let track = trackList[indexPath.row]
        detailVC.track = track

    }

}
