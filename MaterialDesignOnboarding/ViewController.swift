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
    
    func onboardingItemsCount() -> Int {
        
    }

    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

