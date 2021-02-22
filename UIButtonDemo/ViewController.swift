//
//  ViewController.swift
//  UIButtonDemo
//
//  Created by Trista on 2021/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //取得螢幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size

        //為基底的 self.view 設置底色
        self.view.backgroundColor = UIColor.white
        
        //建立預設樣式的按鈕
        //因為各別都使用了UIButton(type:)來初始化一個按鈕，所以可以使用同一個變數myButton建立兩個按鈕,也可以分別建立兩個常數建立兩個按鈕
        //建立了加號+的按鈕
        var myButton = UIButton(type: .contactAdd)
        myButton.center = CGPoint(
          x: fullScreenSize.width * 0.3,
          y: fullScreenSize.height * 0.2)
        
        //按鈕按下後的動作
        //第一個傳入參數是當事件發生時，要呼叫哪一個物件。
        //第二個傳入參數是呼叫的物件要執行的方法，以#selector()來指定，ViewController.clickButton指的就是ViewController類別的clickButton方法。
        //第三個傳入參數是觸發的事件。.touchUpInside是按下觸發
        myButton.addTarget(
            self,
            action: #selector(ViewController.addtype),
            for: .touchUpInside)
        self.view.addSubview(myButton)

        
        //建立預設樣式的按鈕
        //建立了驚嘆號!的按鈕
        myButton = UIButton(type: .infoLight)
        myButton.center = CGPoint(
          x: fullScreenSize.width * 0.6,
          y: fullScreenSize.height * 0.2)
        
        //按鈕按下後的動作
        //第一個傳入參數是當事件發生時，要呼叫哪一個物件。
        //第二個傳入參數是呼叫的物件要執行的方法，以#selector()來指定，ViewController.clickButton指的就是ViewController類別的clickButton方法。
        //第三個傳入參數是觸發的事件。.touchUpInside是按下觸發
        myButton.addTarget(
            self,
            action: #selector(ViewController.infotype),
            for: .touchUpInside)
        self.view.addSubview(myButton)
        
        
        //建立自定義的按鈕
        myButton = UIButton(frame: CGRect(x: 0, y: 0,
                                          width: 150, height: 30))

        //按鈕文字
        myButton.setTitle("按我View變底色", for: .normal)

        //按鈕文字顏色
        myButton.setTitleColor(UIColor.white,for: .normal)

        //按鈕是否可以使用
        myButton.isEnabled = true

        //按鈕背景顏色
        myButton.backgroundColor = UIColor.systemBlue

        //按鈕按下後的動作
        //第一個傳入參數是當事件發生時，要呼叫哪一個物件。
        //第二個傳入參數是呼叫的物件要執行的方法，以#selector()來指定，ViewController.clickButton指的就是ViewController類別的clickButton方法。
        //第三個傳入參數是觸發的事件。.touchUpInside是按下觸發
        myButton.addTarget(
            self,
            action: #selector(ViewController.clickButton),
            for: .touchUpInside)

        //設置位置並加入畫面
        myButton.center = CGPoint(
            x: fullScreenSize.width * 0.4,
            y: fullScreenSize.height * 0.4)
        self.view.addSubview(myButton)
        
        
        //設置使用圖片的按鈕
        //建立一個播放按鈕
        //建立自定義的按鈕後,使用 UIButton 的方法setImage()，設置一個 UIImage 給它即可
        let playButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        //設置播放按鈕的圖片
        //圖片如果為 png 檔案類型，使用UImage(named:)生成元件時，可以不用寫副檔名.png
        //將檔案名稱設定好，程式就會自己找到檔案，如果沒有 @2x 及 @3x 不同解析度的圖片檔案，就會一律使用同樣尺寸的圖片檔案
        playButton.setImage(
            UIImage(named: "play"), for: .normal)

        //設置按下播放按鈕的動作的方法
        //第一個傳入參數是當事件發生時，要呼叫哪一個物件。
        //第二個傳入參數是呼叫的物件要執行的方法，以#selector()來指定，ViewController.play指的就是ViewController類別的play方法。
        //第三個傳入參數是觸發的事件。.touchUpInside是按下觸發
        playButton.addTarget(
            self,
            action: #selector(ViewController.play),
            for: .touchUpInside)

        //設置位置及放入畫面中
        playButton.center = CGPoint(
          x: fullScreenSize.width * 0.3,
          y: fullScreenSize.height * 0.6)
        self.view.addSubview(playButton)

        
        //建立一個停止按鈕
        //建立自定義的按鈕後,使用 UIButton 的方法setImage()，設置一個 UIImage 給它即可
        let stopButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        //設置停止按鈕的圖片
        //圖片如果為 png 檔案類型，使用UImage(named:)生成元件時，可以不用寫副檔名.png
        //將檔案名稱設定好，程式就會自己找到檔案，程式就會自己找到檔案，如果沒有 @2x 及 @3x 不同解析度的圖片檔案，就會一律使用同樣尺寸的圖片檔案
        stopButton.setImage(UIImage(named: "stop"), for: .normal)

        //設置按下停止按鈕的動作的方法
        //第一個傳入參數是當事件發生時，要呼叫哪一個物件。
        //第二個傳入參數是呼叫的物件要執行的方法，以#selector()來指定，ViewController.stop指的就是ViewController類別的stop方法。
        //第三個傳入參數是觸發的事件。.touchUpInside是按下觸發
        stopButton.addTarget(
            self,
            action: #selector(ViewController.stop),
            for: .touchUpInside)

        //設置位置及放入畫面中
        stopButton.center = CGPoint(
          x: fullScreenSize.width * 0.6,
          y: fullScreenSize.height * 0.6)
        self.view.addSubview(stopButton)
 
    }

    
    //按下按鈕後執行動作的方法
    @objc func addtype() {
        print("已按下預設樣式的按鈕＋")
    }
    
    //按下按鈕後執行動作的方法
    @objc func infotype() {
        print("已按下預設樣式的按鈕i")
    }
    
    //按下按鈕後執行動作的方法
    @objc func clickButton() {
        //為基底的 self.view 的底色在兩者間切換顏色
        if self.view.backgroundColor!.isEqual(UIColor.white) {
            self.view.backgroundColor = UIColor.gray
        }else if self.view.backgroundColor!.isEqual(UIColor.gray){
            self.view.backgroundColor = UIColor.white
        }else{
            self.view.backgroundColor = UIColor.gray
        }
    }
    
    //按下按鈕後執行動作的方法
    @objc func play() {
        print("start play")
    }

    //按下按鈕後執行動作的方法
    @objc func stop() {
        print("stop play")
        
    }

}

