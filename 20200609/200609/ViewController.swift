//
//  ViewController.swift
//  200609
//
//  Created by 김성헌 on 2020/06/09.
//  Copyright © 2020 김성헌. All rights reserved.
//

import UIKit
import ARCL
import CoreLocation
class ViewController: UIViewController {
    let sceneLocationView = SceneLocationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
        //init_variable();
        let coordinate = CLLocationCoordinate2D(latitude: 37.5418814, longitude: 127.07602)
        let location = CLLocation(coordinate: coordinate, altitude: 100)
        let image = UIImage(named: "pin.png")!
        let annotationNode = LocationAnnotationNode(location: location, image: image)
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)

    }
    override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      sceneLocationView.frame = view.bounds
    }
    func init_variable(){
        //let coordinate = CLLocationCoordinate2D(latitude: 51.504571, longitude: -0.019717)
        //let location = CLLocation(coordinate: coordinate, altitude: 300)
        //let image = UIImage(named: "pin")!
        //let annotationNode = LocationAnnotationNode(location: location, image: image)
    }


}

