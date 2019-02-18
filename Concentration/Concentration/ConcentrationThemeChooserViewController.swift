//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Héctor Rogel on 18/02/2019.
//  Copyright © 2019 Héctor Rogel. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let themes = [ "Sports":"⚽️🏀🏈⚾️🎾🥊⛳️🏓🏸🎱",
                   "Animals":"🐶🐱🐭🐥🐊🐿🦍🦁🐯🐷",
                   "Faces":"😇🤨🤪😑🤠🤯😡😎🤓😭"]

    @IBAction func ChooseTheme(_ sender: Any) {
        if let cvc = splitViewDetailConcentrationViewController {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                cvc.theme = theme
            }
        } else if let cvc = lastSeguedToConcentrationViewController {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                cvc.theme = theme
            }
           navigationController?.pushViewController(cvc, animated: true)
        } else {
            performSegue(withIdentifier: "Choose theme", sender: sender)
        }
    }
    
    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
        return splitViewController?.viewControllers.last as? ConcentrationViewController
    }
    
    private var lastSeguedToConcentrationViewController: ConcentrationViewController?
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
                
            }
        }
    }
    

}
