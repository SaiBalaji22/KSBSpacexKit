//
//  ViewController.swift
//  KSBSpacexKit
//
//  Created by ksbalaji2000@outlook.com on 07/25/2020.
//  Copyright (c) 2020 ksbalaji2000@outlook.com. All rights reserved.
//

import UIKit
import KSBSpacexKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        NetworkService.sharedobj.getCapsules { (capsules) in
            print(capsules.first!)
        }
        
        NetworkService.sharedobj.getCrewMembers{(crewmembers) in
            
            print(crewmembers.first!.name)
        }
        
        NetworkService.sharedobj.getDragons{(dragons) in
            
            print(dragons.first!.heatShield.material)
        }
        
        
        NetworkService.sharedobj.getLandPads{(landpads) in
            
            print(landpads.first!.fullName)
        }
        
        
        
        NetworkService.sharedobj.getRoadster{roadster in
            print(roadster.details)
        }
        
        
        NetworkService.sharedobj.getLaunchPads{(launchpads) in
            
            print(launchpads.first!.region)
            
        }
        
        NetworkService.sharedobj.getStarlinks{(starlinks) in
            print(starlinks.first!.version.rawValue)
        }
        
        
        NetworkService.sharedobj.getLatestLaunches{(launches) in
            print("LATEST LAUNCHES \(launches.details!)")
        }
        
    
        
        
 
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

