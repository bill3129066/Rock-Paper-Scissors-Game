//
//  GameResultViewController.swift
//  Rock paper scissors
//
//  Created by Mac on 2019/1/11.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class GameResultViewController: UIViewController {
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var previousPage: UIButton!

    var result: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        resultText.text = result
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
