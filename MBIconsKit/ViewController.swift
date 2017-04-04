//
//  ViewController.swift
//  MBIconsKit
//
//  Created by Viorel Porumbescu on 31/03/2017.
//  Copyright © 2017 Viorel. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {


    @IBOutlet weak var collectionView: NSCollectionView!
    var colorIcons:NSColor = .blue {
        didSet{
            collectionView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.allowsMultipleSelection = true
        collectionView?.register(NSNib.init(nibNamed: "SBItem", bundle: nil), forItemWithIdentifier: "SBItem")

    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    @IBAction func updateColor(_ sender: NSColorWell) {
        colorIcons = sender.color
    }
    @IBAction func updateBackgroundColor(_ sender: NSColorWell) {
        collectionView.backgroundColors = [sender.color, .lightGray]
    }
    @IBAction func updateSize(_ sender: NSSlider) {
        let size = CGFloat(sender.floatValue)
        collectionView.maxItemSize = NSMakeSize(size, size)
        collectionView.minItemSize = NSMakeSize(size, size)
        collectionView.reloadData()
    }

}
extension ViewController: NSCollectionViewDelegate, NSCollectionViewDataSource,NSCollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 150
    }
    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "SBItem", for: indexPath) as? SBItem
        item?.icon.type = MBIconType(rawValue: indexPath.last!) ?? .bookmarkRemove
        item?.icon.iconColor = colorIcons
        return item!

    }
    
}

