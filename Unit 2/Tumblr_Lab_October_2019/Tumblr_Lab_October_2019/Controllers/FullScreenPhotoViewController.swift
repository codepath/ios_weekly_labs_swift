//
//  FullScreenPhotoViewController.swift
//  Tumblr_Lab_October_2019
//
//  Created by Jaehee Chung on 10/19/19.
//  Copyright © 2019 Jaehee Chung. All rights reserved.
//

import AlamofireImage
import UIKit

class FullScreenPhotoViewController: UIViewController, UIScrollViewDelegate {
    
    // MARK: - Properties
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var scrollView: UIScrollView!
    
    var photoUrl: URL?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        if let photoUrl = photoUrl {
            photoImageView.af_setImage(withURL: photoUrl)
        }
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoImageView
    }
}
