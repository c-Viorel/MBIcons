//
//  IconCellView.swift
//  MBIconsKit
//
//  Created by Viorel Porumbescu on 06/04/2017.
//  Copyright © 2017 Viorel. All rights reserved.
//

import Cocoa

class IconCellView: NSTableCellView {

    @IBOutlet weak var icon:MBIconSet!
    @IBOutlet weak var iconS:MBIconSet!
    @IBOutlet weak var iconM:MBIconSet!

    @IBOutlet weak var name:NSTextField!

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

    }
    
}
