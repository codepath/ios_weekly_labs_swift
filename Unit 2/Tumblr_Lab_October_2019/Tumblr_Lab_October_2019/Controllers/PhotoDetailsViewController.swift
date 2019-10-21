//
//  PhotoDetailsViewController.swift
//  Tumblr_Lab_October_2019
//
//  Created by Jaehee Chung on 10/19/19.
//  Copyright © 2019 Jaehee Chung. All rights reserved.
//

import AlamofireImage
import UIKit

class PhotoDetailsViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var photoImageView: UIImageView!
    
    var photoUrl: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let photoUrl = photoUrl {
            photoImageView.af_setImage(withURL: photoUrl)
        }
    }
    
    @IBAction func photoImageTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "presentFullScreenPhoto", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentFullScreenPhoto"{
            let fullScreenViewController = segue.destination as! FullScreenPhotoViewController
            fullScreenViewController.photoUrl = photoUrl
        }
    }
    
}
