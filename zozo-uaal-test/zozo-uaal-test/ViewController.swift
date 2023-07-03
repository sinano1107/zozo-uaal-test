//
//  ViewController.swift
//  zozo-uaal-test
//
//  Created by 長政輝 on 2023/07/03.
//

import UIKit

class ViewController: UIViewController {
    // UnityのViewの読み込み
    private let unityView = Unity.shared.view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
            print("実行します")
            // addSubView
            self.view.addSubview(self.unityView)
            // 追加したsubViewのサイズをViewControllerのViewのサイズに合わせる
            self.unityView.frame = self.view.bounds
            // 追加したsubViewを背面へ(addSubViewは最前面に追加するため、ViewControllerのViewの後ろに設定する必要がある)
            self.view.sendSubviewToBack(self.unityView)
        }
    }


}

