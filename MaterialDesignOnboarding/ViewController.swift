//
//  ViewController.swift
//  MaterialDesignOnboarding
//
//  Created by Fredrick Ohen on 12/20/16.
//  Copyright © 2016 geeoku. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource {

    @IBOutlet weak var onboardingView: OnboardingView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        onboardingView.dataSource = self
        
    
    }
    // Required methods from Onboarding Data Source
    func onboardingItemsCount() -> Int {
        return 3
    }

    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 106/255, blue: 211/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return [("rocket", "Space City", "Why do we still use outdated onboard design? With Google's new Material Design", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
                
                ("brush", "Powerful Rocket", "Your app will look very professional and up to date", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
               
                ("notification", "Innovative design", "..because you shouldn't skate on design", "", backgroundColorThree, UIColor.white, UIColor.white, titleFont, descriptionFont)
                ][index]

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

