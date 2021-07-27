//
//  DetailViewController.swift
//  UshakovSV_HW2.7
//
//  Created by Сергей Ушаков on 27.07.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageCover: UIImageView!
    @IBOutlet weak var trackTitleLabel: UILabel!
    
    var track: Track!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageCover.image = UIImage(named: track.title)
        trackTitleLabel.text = track.title
    }
}
