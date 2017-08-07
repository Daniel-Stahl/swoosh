//
//  LeagueVC.swift
//  swoosh
//
//  Created by Daniel Stahl on 8/7/17.
//  Copyright © 2017 Daniel Stahl. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLegue(legueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLegue(legueType: "womens")
    }
    
    @IBAction func OnCoedTapped(_ sender: Any) {
        selectLegue(legueType: "coed")
    }
    
    func selectLegue(legueType: String) {
        player.desiredLegue = legueType
        nextBtn.isEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
