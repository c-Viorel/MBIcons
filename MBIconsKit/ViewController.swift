//
//  ViewController.swift
//  MBIconsKit
//
//  Created by Viorel Porumbescu on 31/03/2017.
//  Copyright © 2017 Viorel. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {


    @IBOutlet weak var myTable:NSTableView!
    var colorIcons:NSColor = .darkGray {
        didSet{
            myTable.reloadData()
         }
    }
    var filled:Bool = false {
        didSet{
            myTable.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    var ints:Int = 0 ;
    @IBAction func updateColor(_ sender: NSColorWell) {
        colorIcons = sender.color
    }

    @IBAction func changeFilledState(_ sender: NSButton) {
        filled = (sender.state == 1 ) ? true : false
    }
    @IBAction func updateBackgroundColor(_ sender: NSColorWell) {
        myTable.backgroundColor = sender.color
    }
}

extension ViewController: NSTableViewDelegate, NSTableViewDataSource{

    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        if tableColumn?.identifier == "row" {
            let view = tableView.make(withIdentifier: tableColumn!.identifier, owner: self) as! IconCellView

            view.icon.type      = MBIconType(rawValue: row) ?? .book
            view.icon.iconColor = colorIcons
            view.icon.filled  = filled

            view.iconS.type      = MBIconType(rawValue: row) ?? .book
            view.iconS.iconColor = colorIcons
            view.iconS.filled  = filled

            view.iconM.type      = MBIconType(rawValue: row) ?? .book
            view.iconM.iconColor = colorIcons
            view.iconM.filled  = filled

            view.name.stringValue = String(describing: view.icon.type)

            return view
        }
        return nil
    }

    func numberOfRows(in tableView: NSTableView) -> Int {
        return 150
    }



    func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> CustomRowView? {
        let mySelectionRowView = CustomRowView()

        return mySelectionRowView
    }

    
}



class CustomRowView: NSTableRowView {

    let col = NSColor(calibratedRed:0.96, green:0.96, blue:0.96, alpha:0.2)

    override func drawSelection(in dirtyRect: NSRect) {
        if isSelected == true {
                        if isEmphasized {
                            col.set()
                            NSRectFill(NSMakeRect(0, 0, dirtyRect.width, dirtyRect.height ))
                        } else {
            
                            col.set()
                            NSRectFill(NSMakeRect(0, 0, dirtyRect.width, dirtyRect.height ))
                        }
                    }
        //PASS  SELECTION; WE DON'T WANT TO HAVE VISUAL SELECTION FOR THIS ROW
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        //PASS DRAW.

    }

    override func drawSeparator(in dirtyRect: NSRect) {
        let line = NSBezierPath()

        line.move(to: NSMakePoint(dirtyRect.origin.x + 20 , NSMaxY(dirtyRect) ))
        line.line(to: NSMakePoint(dirtyRect.width / 2 - 20, NSMaxY(dirtyRect)))
        line.move(to: NSMakePoint(dirtyRect.origin.x + dirtyRect.width / 2 + 20 , NSMaxY(dirtyRect) ))
        line.line(to: NSMakePoint(dirtyRect.width - 20, NSMaxY(dirtyRect)))
        NSColor.black.set()
        line.lineWidth =  0.5
        line.stroke()
        
    }
    
}

