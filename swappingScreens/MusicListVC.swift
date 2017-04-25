//
//  MusicListVC.swift
//  swappingScreens
//
//  Created by Tina Isienyi on 25/04/2017.
//  Copyright © 2017 Tina Isienyi. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
    }

    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Love Me Now"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationView = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destinationView.selectedSong = song
                
            }
    }

    }

}
