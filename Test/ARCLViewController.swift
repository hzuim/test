//
//  ARCLViewController.swift
//  Test
//
//  Created by Hugo Azenha Zuim on 03/09/2019.
//  Copyright © 2019 Hugo Azenha Zuim. All rights reserved.
//

import Foundation
import ARCL
import AVFoundation

class ARCLViewController: UIViewController {
    var sceneLocationView = SceneLocationView()
    
    override func viewWillAppear(_ animated: Bool) {
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Pause the view's session
        
        sceneLocationView.pause()
        sceneLocationView.removeFromSuperview()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sceneLocationView.frame = view.bounds
    }
}
