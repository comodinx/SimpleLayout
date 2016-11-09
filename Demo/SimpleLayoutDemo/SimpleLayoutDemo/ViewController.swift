//
//  ViewController.swift
//  SimpleLayout
//
//  Created by Nicolas Molina on 09/26/2016.
//  Copyright (c) 2016 Nicolas Molina. All rights reserved.
//

import UIKit
import SimpleLayout

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    fileprivate func setup()
    {
        // Add background view
        let background = UIView()
        background.backgroundColor = .green
        view.addSubview(background)
        SimpleLayout.addMarginZero(background, toItem: view)

        // Add children
        let children1 = UIView()
        children1.backgroundColor = .white
        background.addSubview(children1)
        SimpleLayout.addMarginTop(children1, toItem: background, constant: 10.0)
        SimpleLayout.addMarginLeft(children1, toItem: background, constant: 10.0)
        SimpleLayout.addSize(children1, constant: 100.0)
        setupInformation(children1, text1: "M. Top: 10", text2: "M. Left: 10", textSize: "Size: 100")

        // Add children
        let children2 = UIView()
        children2.backgroundColor = .white
        background.addSubview(children2)
        SimpleLayout.addMarginTop(children2, toItem: background, constant: 10.0)
        SimpleLayout.addMarginRight(children2, toItem: background, constant: 10.0)
        SimpleLayout.addSize(children2, constant: 100.0)
        setupInformation(children2, text1: "M. Top: 10", text2: "M. Right: 10", textSize: "Size: 100")

        // Add children
        let children3 = UIView()
        children3.backgroundColor = .white
        background.addSubview(children3)
        SimpleLayout.addMarginBottom(children3, toItem: background, constant: 10.0)
        SimpleLayout.addMarginLeft(children3, toItem: background, constant: 10.0)
        SimpleLayout.addSize(children3, constant: 100.0)
        setupInformation(children3, text1: "M Bottom: 10", text2: "M. Left: 10", textSize: "Size: 100")

        // Add children
        let children4 = UIView()
        children4.backgroundColor = .white
        background.addSubview(children4)
        SimpleLayout.addMarginBottom(children4, toItem: background, constant: 10.0)
        SimpleLayout.addMarginRight(children4, toItem: background, constant: 10.0)
        SimpleLayout.addSize(children4, constant: 100.0)
        setupInformation(children4, text1: "M. Bottom: 10", text2: "M. Right: 10", textSize: "Size: 100")

        // Add children
        let children5 = UIView()
        children5.backgroundColor = .red
        background.addSubview(children5)
        SimpleLayout.addCenter(children5, toItem: background)
        SimpleLayout.addSize(children5, constant: 100.0)
        setupInformation(children5, text1: "Center X: 0", text2: "Center Y: 0", textSize: "Size: 100")

        // Add children
        let children6 = UIView()
        children6.backgroundColor = .gray
        background.addSubview(children6)
        SimpleLayout.addMarginTrailing(children6, toItem: background, constant: 20.0)
        SimpleLayout.addCenterY(children6, toItem: background)
        SimpleLayout.addSize(children6, constant: 115.0)
        setupInformation(children6, text1: "M. Trailing: 20.0", text2: "Center Y: 0", textSize: "Size: 115")

        // Add children
        let children7 = UIView()
        children7.backgroundColor = .gray
        background.addSubview(children7)
        SimpleLayout.addMarginLeading(children7, toItem: background, constant: 15.0)
        SimpleLayout.addCenterY(children7, toItem: background)
        SimpleLayout.addSize(children7, constant: 110.0)
        setupInformation(children7, text1: "M. Leading: 15.0", text2: "Center Y: 0", textSize: "Size: 110")
    }

    fileprivate func setupInformation(_ view: UIView, text1: String, text2: String, textSize: String?)
    {
        let label1 = UILabel()
        label1.text = text1
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 11.0)
        view.addSubview(label1)
        label1.sl_addMarginTop(view, constant: 10.0)
        label1.sl_addMarginLeft(view, constant: 10.0)
        label1.sl_addMarginRight(view, constant: 10.0)

        let label2 = UILabel()
        label2.text = text2
        label2.textColor = .black
        label2.font = UIFont.systemFont(ofSize: 11.0)
        view.addSubview(label2)
        label2.sl_addMarginBottom(view, constant: 10.0)
        label2.sl_addMarginLeft(view, constant: 10.0)
        label2.sl_addMarginRight(view, constant: 10.0)

        let label3 = UILabel()
        label3.text = textSize
        label3.textColor = .black
        label3.font = UIFont.systemFont(ofSize: 11.0)
        view.addSubview(label3)
        label3.sl_addCenterY(view)
        label3.sl_addMarginLeft(view, constant: 10.0)
        label3.sl_addMarginRight(view, constant: 10.0)
    }
    
}
