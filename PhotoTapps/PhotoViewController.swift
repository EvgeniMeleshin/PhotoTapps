//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Evgeni Meleshin on 02.11.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    

    @IBAction func shareAction(_ sender: UIButton) {
        
        guard let image = image else { return }
        let shareController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool { }
        }
        present(shareController, animated: true)
        
    }
    

}
