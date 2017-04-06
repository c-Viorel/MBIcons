//
//  MBIconSet.swift
//  MBIconsKitFilled
//
//  Created by Viorel Porumbescu on 31/03/2017.
//  Copyright © 2017 Viorel. All rights reserved.
//

import Cocoa

class MBIconSet: NSView {

    @IBInspectable var iconColor:NSColor = .darkGray {
        didSet{
            self.needsDisplay = true
        }
    }
    
    @IBInspectable var iconDescription:String = "book" {
        didSet{
            type = typeForDescription(description: iconDescription)
            self.needsDisplay = true
        }
    }


    var type:MBIconType = .book {
        didSet{
            self.needsDisplay = true
        }
    }

    var filled:Bool = false {
        didSet{
            self.needsDisplay = true
        }
    }


    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
    }

    init(frame frameRect: NSRect, type:MBIconType) {
        super.init(frame: frameRect)
        self.type = type
    }
    
    required init?(coder: NSCoder) {
       super.init(coder: coder)

    }


    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        if filled {
            drawFilledIcon(dirtyRect: dirtyRect)
        } else {
            drawUnfilledIcon(dirtyRect: dirtyRect)
        }

    }


    func drawFilledIcon(dirtyRect:NSRect){
        switch type {
        case .book:
            MBIconsKitFilled.drawBook(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookBookmark:
            MBIconsKitFilled.drawBookBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmark:
            MBIconsKitFilled.drawBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmarkAdd:
            MBIconsKitFilled.drawBookmarkAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmarkRemove:
            MBIconsKitFilled.drawBookmarkRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box:
            MBIconsKitFilled.drawBox(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box2:
            MBIconsKitFilled.drawBox2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box3:
            MBIconsKitFilled.drawBox3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .boxBookmark:
            MBIconsKitFilled.drawBoxBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .boxFilled:
            MBIconsKitFilled.drawBoxFilled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .certificate:
            MBIconsKitFilled.drawCertificate(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboard:
            MBIconsKitFilled.drawClipboard(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardAdd:
            MBIconsKitFilled.drawClipboardAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardChecked:
            MBIconsKitFilled.drawClipboardChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardDownload:
            MBIconsKitFilled.drawClipboardDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardEdit:
            MBIconsKitFilled.drawClipboardEdit(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardList:
            MBIconsKitFilled.drawClipboardList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardRemove:
            MBIconsKitFilled.drawClipboardRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardText:
            MBIconsKitFilled.drawClipboardText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardUpload:
            MBIconsKitFilled.drawClipboardUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloud:
            MBIconsKitFilled.drawClipboardUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudDownload:
            MBIconsKitFilled.drawCloudDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudError:
            MBIconsKitFilled.drawCloudError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudUpload:
            MBIconsKitFilled.drawCloudUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .combinationLock:
            MBIconsKitFilled.drawCombinationLock(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document:
            MBIconsKitFilled.drawDocument(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document2:
            MBIconsKitFilled.drawDocuments2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document3:
            MBIconsKitFilled.drawDocuments3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentAdd:
            MBIconsKitFilled.drawDocumentAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentBookmark:
            MBIconsKitFilled.drawDocumentBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCancel:
            MBIconsKitFilled.drawDocumentCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCertificate:
            MBIconsKitFilled.drawDocumentCertificate(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentChecked:
            MBIconsKitFilled.drawDocumentChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCloud:
            MBIconsKitFilled.drawDocumentCloud(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCode:
            MBIconsKitFilled.drawDocumentCloud(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentDiagrams:
            MBIconsKitFilled.drawDocumentDiagrams(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentDownload:
            MBIconsKitFilled.drawDocumentDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentEdit:
            MBIconsKitFilled.drawDocumentEdit(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentError:
            MBIconsKitFilled.drawDocumentError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentFont:
            MBIconsKitFilled.drawDocumentFont(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentForbidden:
            MBIconsKitFilled.drawDocumentForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentGraph:
            MBIconsKitFilled.drawDocumentGraph(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentImage:
            MBIconsKitFilled.drawDocumentImage(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentInformation:
            MBIconsKitFilled.drawDocumentInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentList :
            MBIconsKitFilled.drawDocumentList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentLocked:
            MBIconsKitFilled.drawDocumentLocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentMovie:
            MBIconsKitFilled.drawDocumentMovie(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentMusic:
            MBIconsKitFilled.drawDocumentMusic(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentPlay:
            MBIconsKitFilled.drawDocumentPlay(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentRecording:
            MBIconsKitFilled.drawDocumentRecording(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentRemove:
            MBIconsKitFilled.drawDocumentRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentScan:
            MBIconsKitFilled.drawDocumentScan(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentSearch:
            MBIconsKitFilled.drawDocumentSearch(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentShred:
            MBIconsKitFilled.drawDocumentShred(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentStar:
            MBIconsKitFilled.drawDocumentStar(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText:
            MBIconsKitFilled.drawDocumentText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText2:
            MBIconsKitFilled.drawDocumentText2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText3:
            MBIconsKitFilled.drawDocumentText3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentTime:
            MBIconsKitFilled.drawDocumentTime(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentUnlocked:
            MBIconsKitFilled.drawDocumentUnlocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentUpload:
            MBIconsKitFilled.drawDocumentUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentZip:
            MBIconsKitFilled.drawDocumentZip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentTable:
            MBIconsKitFilled.drawDocumentTable(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .eye:
            MBIconsKitFilled.drawEye(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .eyeHidden:
            MBIconsKitFilled.drawEyeHidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag:
            MBIconsKitFilled.drawFlag(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag2:
            MBIconsKitFilled.drawFlag2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag3:
            MBIconsKitFilled.drawFlag3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag4:
            MBIconsKitFilled.drawFlag4(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folder :
            MBIconsKitFilled.drawFolder(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folder2:
            MBIconsKitFilled.drawFolder2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderAdd:
            MBIconsKitFilled.drawFolderAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderBookmark:
            MBIconsKitFilled.drawFolderBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderCancel:
            MBIconsKitFilled.drawFolderCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderChecked:
            MBIconsKitFilled.drawFolderChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderDownload:
            MBIconsKitFilled.drawForlderDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderError:
            MBIconsKitFilled.drawFolderError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderForbidden:
            MBIconsKitFilled.drawFolderForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderInformation:
            MBIconsKitFilled.drawFolderInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderLocked:
            MBIconsKitFilled.drawFolderLocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderRemove:
            MBIconsKitFilled.drawFolderRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderSearch:
            MBIconsKitFilled.drawFolderRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderUnlocked:
            MBIconsKitFilled.drawFolderUnlocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderUpload:
            MBIconsKitFilled.drawFolderUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folders:
            MBIconsKitFilled.drawFolders(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .iconRoundedLock:
            MBIconsKitFilled.drawLockRounded(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inbox:
            MBIconsKitFilled.drawInbox(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxDocument:
            MBIconsKitFilled.drawInboxDocument(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxDownload:
            MBIconsKitFilled.drawInboxDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxFilled:
            MBIconsKitFilled.drawInboxFilled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxUpload:
            MBIconsKitFilled.drawInboxUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxes:
            MBIconsKitFilled.drawInboxes(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .infoDocumentText:
            MBIconsKitFilled.drawDocumentText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .information:
            MBIconsKitFilled.drawInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .information2:
            MBIconsKitFilled.drawInformation2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .key:
            MBIconsKitFilled.drawKey(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .key2:
            MBIconsKitFilled.drawKey2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lock2:
            MBIconsKitFilled.drawLock2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockOpen:
            MBIconsKitFilled.drawLockOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockOpen2:
            MBIconsKitFilled.drawLockOpen2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockRounded:
            MBIconsKitFilled.drawLockRounded(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockRoundedOpen:
            MBIconsKitFilled.drawLockRoundedOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockStripes:
            MBIconsKitFilled.drawLockStripes(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailAdd:
            MBIconsKitFilled.drawMailAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailCancel:
            MBIconsKitFilled.drawMailCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailChecked:
            MBIconsKitFilled.drawMailChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelope:
            MBIconsKitFilled.drawMailEnvelope(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeClosed:
            MBIconsKitFilled.drawMailEnvelopeClosed(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeClosed2:
            MBIconsKitFilled.drawMailEnvelopeClosed2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpen:
            MBIconsKitFilled.drawMailEnvelopeOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpen2:
            MBIconsKitFilled.drawMailEnvelopeOpen2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpened3:
            MBIconsKitFilled.drawMailEnvelopeOpened3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailError:
            MBIconsKitFilled.drawMailError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailForbidden:
            MBIconsKitFilled.drawMailForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailRemove:
            MBIconsKitFilled.drawMailRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .note:
            MBIconsKitFilled.drawNote(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteAdd:
            MBIconsKitFilled.drawNoteAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteChecked:
            MBIconsKitFilled.drawNoteChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteImportant:
            MBIconsKitFilled.drawNoteImportant(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteList:
            MBIconsKitFilled.drawNoteList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteRemove:
            MBIconsKitFilled.drawNoteRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteText:
            MBIconsKitFilled.drawNoteText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook:
            MBIconsKitFilled.drawNotebook(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook2:
            MBIconsKitFilled.drawNotebook2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook3:
            MBIconsKitFilled.drawNotebook3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook4:
            MBIconsKitFilled.drawNotebook4(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebookList:
            MBIconsKitFilled.drawNotebookList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebookText:
            MBIconsKitFilled.drawNotebookText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .package2:
            MBIconsKitFilled.drawPackage2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .paperclip:
            MBIconsKitFilled.drawPaperclip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .pen:
            MBIconsKitFilled.drawPen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .penAngled:
            MBIconsKitFilled.drawPenAngled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .printer:
            MBIconsKitFilled.drawPrinter(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .printerText:
            MBIconsKitFilled.drawPrinterText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .search:
            MBIconsKitFilled.drawSearch(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .searchMinus:
            MBIconsKitFilled.drawSearchMinus(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .searchPlus:
            MBIconsKitFilled.drawSearchPlus(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .shredder:
            MBIconsKitFilled.drawShredder(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .star:
            MBIconsKitFilled.drawStar(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagAdd:
            MBIconsKitFilled.drawTagAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagCancel:
            MBIconsKitFilled.drawTagCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagChecked:
            MBIconsKitFilled.drawTagChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagCord:
            MBIconsKitFilled.drawTagCord(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagRemove:
            MBIconsKitFilled.drawTagRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tags:
            MBIconsKitFilled.drawTags(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .trashCan:
            MBIconsKitFilled.drawTrashCan(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .trashCan2:
            MBIconsKitFilled.drawTrashCan2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .zip:
            MBIconsKitFilled.drawZip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)

        }
    }
    func drawUnfilledIcon(dirtyRect:NSRect) {
        switch type {
        case .book:
            MBIconsKit.drawBook(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookBookmark:
            MBIconsKit.drawBookBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmark:
            MBIconsKit.drawBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmarkAdd:
            MBIconsKit.drawBookmarkAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .bookmarkRemove:
            MBIconsKit.drawBookmarkRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box:
            MBIconsKit.drawBox(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box2:
            MBIconsKit.drawBox2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .box3:
            MBIconsKit.drawBox3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .boxBookmark:
            MBIconsKit.drawBoxBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .boxFilled:
            MBIconsKit.drawBoxFilled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .certificate:
            MBIconsKit.drawCertificate(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboard:
            MBIconsKit.drawClipboard(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardAdd:
            MBIconsKit.drawClipboardAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardChecked:
            MBIconsKit.drawClipboardChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardDownload:
            MBIconsKit.drawClipboardDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardEdit:
            MBIconsKit.drawClipboardEdit(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardList:
            MBIconsKit.drawClipboardList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardRemove:
            MBIconsKit.drawClipboardRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardText:
            MBIconsKit.drawClipboardText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .clipboardUpload:
            MBIconsKit.drawClipboardUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloud:
            MBIconsKit.drawClipboardUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudDownload:
            MBIconsKit.drawCloudDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudError:
            MBIconsKit.drawCloudError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .cloudUpload:
            MBIconsKit.drawCloudUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .combinationLock:
            MBIconsKit.drawCombinationLock(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document:
            MBIconsKit.drawDocument(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document2:
            MBIconsKit.drawDocuments2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .document3:
            MBIconsKit.drawDocuments3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentAdd:
            MBIconsKit.drawDocumentAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentBookmark:
            MBIconsKit.drawDocumentBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCancel:
            MBIconsKit.drawDocumentCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCertificate:
            MBIconsKit.drawDocumentCertificate(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentChecked:
            MBIconsKit.drawDocumentChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCloud:
            MBIconsKit.drawDocumentCloud(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentCode:
            MBIconsKit.drawDocumentCloud(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentDiagrams:
            MBIconsKit.drawDocumentDiagrams(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentDownload:
            MBIconsKit.drawDocumentDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentEdit:
            MBIconsKit.drawDocumentEdit(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentError:
            MBIconsKit.drawDocumentError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentFont:
            MBIconsKit.drawDocumentFont(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentForbidden:
            MBIconsKit.drawDocumentForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentGraph:
            MBIconsKit.drawDocumentGraph(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentImage:
            MBIconsKit.drawDocumentImage(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentInformation:
            MBIconsKit.drawDocumentInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentList :
            MBIconsKit.drawDocumentList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentLocked:
            MBIconsKit.drawDocumentLocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentMovie:
            MBIconsKit.drawDocumentMovie(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentMusic:
            MBIconsKit.drawDocumentMusic(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentPlay:
            MBIconsKit.drawDocumentPlay(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentRecording:
            MBIconsKit.drawDocumentRecording(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentRemove:
            MBIconsKit.drawDocumentRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentScan:
            MBIconsKit.drawDocumentScan(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentSearch:
            MBIconsKit.drawDocumentSearch(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentShred:
            MBIconsKit.drawDocumentShred(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentStar:
            MBIconsKit.drawDocumentStar(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText:
            MBIconsKit.drawDocumentText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText2:
            MBIconsKit.drawDocumentText2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentText3:
            MBIconsKit.drawDocumentText3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentTime:
            MBIconsKit.drawDocumentTime(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentUnlocked:
            MBIconsKit.drawDocumentUnlocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentUpload:
            MBIconsKit.drawDocumentUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentZip:
            MBIconsKit.drawDocumentZip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .documentTable:
            MBIconsKit.drawDocumentTable(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .eye:
            MBIconsKit.drawEye(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .eyeHidden:
            MBIconsKit.drawEyeHidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag:
            MBIconsKit.drawFlag(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag2:
            MBIconsKit.drawFlag2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag3:
            MBIconsKit.drawFlag3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .flag4:
            MBIconsKit.drawFlag4(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folder :
            MBIconsKit.drawFolder(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folder2:
            MBIconsKit.drawFolder2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderAdd:
            MBIconsKit.drawFolderAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderBookmark:
            MBIconsKit.drawFolderBookmark(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderCancel:
            MBIconsKit.drawFolderCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderChecked:
            MBIconsKit.drawFolderChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderDownload:
            MBIconsKit.drawForlderDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderError:
            MBIconsKit.drawFolderError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderForbidden:
            MBIconsKit.drawFolderForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderInformation:
            MBIconsKit.drawFolderInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderLocked:
            MBIconsKit.drawFolderLocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderRemove:
            MBIconsKit.drawFolderRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderSearch:
            MBIconsKit.drawFolderRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderUnlocked:
            MBIconsKit.drawFolderUnlocked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folderUpload:
            MBIconsKit.drawFolderUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .folders:
            MBIconsKit.drawFolders(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .iconRoundedLock:
            MBIconsKit.drawLockRounded(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inbox:
            MBIconsKit.drawInbox(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxDocument:
            MBIconsKit.drawInboxDocument(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxDownload:
            MBIconsKit.drawInboxDownload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxFilled:
            MBIconsKit.drawInboxFilled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxUpload:
            MBIconsKit.drawInboxUpload(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .inboxes:
            MBIconsKit.drawInboxes(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .infoDocumentText:
            MBIconsKit.drawDocumentText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .information:
            MBIconsKit.drawInformation(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .information2:
            MBIconsKit.drawInformation2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .key:
            MBIconsKit.drawKey(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .key2:
            MBIconsKit.drawKey2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lock2:
            MBIconsKit.drawLock2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockOpen:
            MBIconsKit.drawLockOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockOpen2:
            MBIconsKit.drawLockOpen2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockRounded:
            MBIconsKit.drawLockRounded(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockRoundedOpen:
            MBIconsKit.drawLockRoundedOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .lockStripes:
            MBIconsKit.drawLockStripes(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailAdd:
            MBIconsKit.drawMailAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailCancel:
            MBIconsKit.drawMailCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailChecked:
            MBIconsKit.drawMailChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelope:
            MBIconsKit.drawMailEnvelope(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeClosed:
            MBIconsKit.drawMailEnvelopeClosed(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeClosed2:
            MBIconsKit.drawMailEnvelopeClosed2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpen:
            MBIconsKit.drawMailEnvelopeOpen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpen2:
            MBIconsKit.drawMailEnvelopeOpen2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailEnvelopeOpened3:
            MBIconsKit.drawMailEnvelopeOpened3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailError:
            MBIconsKit.drawMailError(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailForbidden:
            MBIconsKit.drawMailForbidden(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .mailRemove:
            MBIconsKit.drawMailRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .note:
            MBIconsKit.drawNote(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteAdd:
            MBIconsKit.drawNoteAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteChecked:
            MBIconsKit.drawNoteChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteImportant:
            MBIconsKit.drawNoteImportant(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteList:
            MBIconsKit.drawNoteList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteRemove:
            MBIconsKit.drawNoteRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .noteText:
            MBIconsKit.drawNoteText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook:
            MBIconsKit.drawNotebook(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook2:
            MBIconsKit.drawNotebook2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook3:
            MBIconsKit.drawNotebook3(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebook4:
            MBIconsKit.drawNotebook4(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebookList:
            MBIconsKit.drawNotebookList(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .notebookText:
            MBIconsKit.drawNotebookText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .package2:
            MBIconsKit.drawPackage2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .paperclip:
            MBIconsKit.drawPaperclip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .pen:
            MBIconsKit.drawPen(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .penAngled:
            MBIconsKit.drawPenAngled(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .printer:
            MBIconsKit.drawPrinter(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .printerText:
            MBIconsKit.drawPrinterText(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .search:
            MBIconsKit.drawSearch(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .searchMinus:
            MBIconsKit.drawSearchMinus(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .searchPlus:
            MBIconsKit.drawSearchPlus(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .shredder:
            MBIconsKit.drawShredder(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .star:
            MBIconsKit.drawStar(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagAdd:
            MBIconsKit.drawTagAdd(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagCancel:
            MBIconsKit.drawTagCancel(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagChecked:
            MBIconsKit.drawTagChecked(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagCord:
            MBIconsKit.drawTagCord(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tagRemove:
            MBIconsKit.drawTagRemove(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .tags:
            MBIconsKit.drawTags(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .trashCan:
            MBIconsKit.drawTrashCan(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .trashCan2:
            MBIconsKit.drawTrashCan2(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)
        case .zip:
            MBIconsKit.drawZip(frame: dirtyRect, resizing: .aspectFit, fillColor: iconColor)

        }

    }


    private func typeForDescription(description:String) ->  MBIconType {
        switch description {
        case "book":                return MBIconType.book
        case "bookBookmark":        return MBIconType.bookBookmark
        case "bookmark" :           return MBIconType.bookmark
        case "bookmarkAdd":         return MBIconType.bookmarkAdd
        case "bookmarkRemove":      return MBIconType.bookmarkRemove
        case "box":                 return MBIconType.box
        case "box2":                return MBIconType.box2
        case "box3":                return MBIconType.box3
        case "boxBookmark":         return MBIconType.boxBookmark
        case "boxFilled":           return MBIconType.boxFilled
        case "certificate":         return MBIconType.certificate
        case "clipboard":           return MBIconType.clipboard
        case "clipboardAdd":        return MBIconType.clipboardAdd
        case "clipboardChecked":    return MBIconType.clipboardChecked
        case "clipboardDownload":   return MBIconType.clipboardDownload
        case "clipboardEdit":       return MBIconType.clipboardEdit
        case "clipboardList":       return MBIconType.clipboardList
        case "clipboardRemove":     return MBIconType.clipboardRemove
        case "clipboardText":       return MBIconType.clipboardText
        case "clipboardUpload":     return MBIconType.clipboardUpload
        case "cloud":               return MBIconType.cloud
        case "cloudDownload":       return MBIconType.cloudDownload
        case "cloudError":          return MBIconType.cloudError
        case "cloudUpload":         return MBIconType.cloudUpload
        case "combinationLock":     return MBIconType.combinationLock
        case "document":            return MBIconType.document
        case "document2":           return MBIconType.document2
        case "document3":           return MBIconType.document3
        case "documentAdd":         return MBIconType.documentAdd
        case "documentBookmark":    return MBIconType.documentBookmark
        case "documentCancel":      return MBIconType.documentCancel
        case "documentCertificate": return MBIconType.documentCertificate
        case "documentChecked":     return MBIconType.documentChecked
        case "documentCloud":       return MBIconType.documentCloud
        case "documentCode":        return MBIconType.documentCode
        case "documentDiagrams":    return MBIconType.documentDiagrams
        case "documentDownload":    return MBIconType.documentDownload
        case "documentEdit":        return MBIconType.documentEdit
        case "documentError":       return MBIconType.documentError
        case "documentFont":        return MBIconType.documentFont
        case "documentForbidden":   return MBIconType.documentForbidden
        case "documentGraph":       return MBIconType.documentGraph
        case "documentImage":       return MBIconType.documentImage
        case "documentInformation": return MBIconType.documentInformation
        case "documentList":        return MBIconType.documentList
        case "documentLocked":      return MBIconType.documentLocked
        case "documentMovie":       return MBIconType.documentMovie
        case "documentMusic":       return MBIconType.documentMusic
        case "documentPlay":        return MBIconType.documentPlay
        case "documentRecording":   return MBIconType.documentRecording
        case "documentRemove":      return MBIconType.documentRemove
        case "documentScan":        return MBIconType.documentScan
        case "documentSearch":      return MBIconType.documentSearch
        case "documentShred":       return MBIconType.documentShred
        case "documentStar":        return MBIconType.documentStar
        case "documentText":        return MBIconType.documentText
        case "documentText2":       return MBIconType.documentText2
        case "documentText3":       return MBIconType.documentText3
        case "documentTime":        return MBIconType.documentTime
        case "documentUnlocked":    return MBIconType.documentUnlocked
        case "documentUpload":      return MBIconType.documentUpload
        case "documentZip":         return MBIconType.documentZip
        case "documentTable":       return MBIconType.documentTable
        case "eye":                 return MBIconType.eye
        case "eyeHidden":           return MBIconType.eyeHidden
        case "flag":                return MBIconType.flag
        case "flag2":               return MBIconType.flag2
        case "flag3":               return MBIconType.flag3
        case "flag4":               return MBIconType.flag
        case "folder":              return MBIconType.folder
        case "folder2":             return MBIconType.folder2
        case "folderAdd":           return MBIconType.folderAdd
        case "folderBookmark":      return MBIconType.folderBookmark
        case "folderCancel":        return MBIconType.folderCancel
        case "folderChecked":       return MBIconType.folderChecked
        case "folderDownload":      return MBIconType.folderDownload
        case "folderError":         return MBIconType.folderError
        case "folderForbidden":     return MBIconType.folderForbidden
        case "folderInformation":   return MBIconType.folderInformation
        case "folderLocked":        return MBIconType.folderLocked
        case "folderRemove":        return MBIconType.folderRemove
        case "folderSearch":        return MBIconType.folderSearch
        case "folderUnlocked":      return MBIconType.folderUnlocked
        case "folderUpload":        return MBIconType.folderUpload
        case "folders":             return MBIconType.folders
        case "iconRoundedLock":     return MBIconType.iconRoundedLock
        case "inbox":               return MBIconType.inbox
        case "inboxDocument":       return MBIconType.inboxDocument
        case "inboxDownload":       return MBIconType.inboxDownload
        case "inboxFilled":         return MBIconType.inboxFilled
        case "inboxUpload":         return MBIconType.inboxUpload
        case "inboxes":             return MBIconType.inboxes
        case "infoDocumentText":    return MBIconType.infoDocumentText
        case "information":         return MBIconType.information
        case "information2":        return MBIconType.information2
        case "key":                 return MBIconType.key
        case "key2":                return MBIconType.key2
        case "lock2":               return MBIconType.lock2
        case "lockOpen":            return MBIconType.lockOpen
        case "lockOpen2":           return MBIconType.lockOpen2
        case "lockRounded":         return MBIconType.lockRounded
        case "lockRoundedOpen":     return MBIconType.lockRoundedOpen
        case "lockStripes":         return MBIconType.lockStripes
        case "mailAdd":             return MBIconType.mailAdd
        case "mailCancel":          return MBIconType.mailCancel
        case "mailChecked":         return MBIconType.mailChecked
        case "mailEnvelope":        return MBIconType.mailEnvelope
        case "mailEnvelopeClosed":  return MBIconType.mailEnvelopeClosed
        case "mailEnvelopeClosed2": return MBIconType.mailEnvelopeClosed2
        case "mailEnvelopeOpen":    return MBIconType.mailEnvelopeOpen
        case "mailEnvelopeOpen2":   return MBIconType.mailEnvelopeOpen2
        case "mailEnvelopeOpened3": return MBIconType.mailEnvelopeOpened3
        case "mailError":           return MBIconType.mailError
        case "mailForbidden":       return MBIconType.mailForbidden
        case "mailRemove":          return MBIconType.mailRemove
        case "note":                return MBIconType.note
        case "noteAdd":             return MBIconType.noteAdd
        case "noteChecked":         return MBIconType.noteChecked
        case "noteImportant":       return MBIconType.noteImportant
        case "noteList":            return MBIconType.noteList
        case "noteRemove":          return MBIconType.noteRemove
        case "noteText":            return MBIconType.noteText
        case "notebook":            return MBIconType.notebook
        case "notebook2":           return MBIconType.notebook2
        case "notebook3":           return MBIconType.notebook3
        case "notebook4":           return MBIconType.notebook4
        case "notebookList":        return MBIconType.notebookList
        case "notebookText":        return MBIconType.notebookText
        case "package2":            return MBIconType.package2
        case "paperclip":           return MBIconType.paperclip
        case "pen":                 return MBIconType.pen
        case "penAngled":           return MBIconType.penAngled
        case "printer":             return MBIconType.printer
        case "printerText":         return MBIconType.printerText
        case "search":              return MBIconType.search
        case "searchMinus":         return MBIconType.searchMinus
        case "searchPlus":          return MBIconType.searchPlus
        case "shredder":            return MBIconType.shredder
        case "star":                return MBIconType.star
        case "tagAdd":              return MBIconType.tagAdd
        case "tagCancel":           return MBIconType.tagCancel
        case "tagChecked":          return MBIconType.tagChecked
        case "tagCord":             return MBIconType.tagCord
        case "tagRemove":           return MBIconType.tagRemove
        case "tags":                return MBIconType.tags
        case "trashCan":            return MBIconType.trashCan
        case "trashCan2":           return MBIconType.trashCan2
        case "zip":                 return MBIconType.zip
        default:
            return MBIconType.book
        }
    }

}


enum MBIconType:Int {
    case book
    case bookBookmark
    case bookmark
    case bookmarkAdd
    case bookmarkRemove
    case box
    case box2
    case box3
    case boxBookmark
    case boxFilled
    case certificate
    case clipboard
    case clipboardAdd
    case clipboardChecked
    case clipboardDownload
    case clipboardEdit
    case clipboardList
    case clipboardRemove
    case clipboardText
    case clipboardUpload
    case cloud
    case cloudDownload
    case cloudError
    case cloudUpload
    case combinationLock
    case document
    case document2
    case document3
    case documentAdd
    case documentBookmark
    case documentCancel
    case documentCertificate
    case documentChecked
    case documentCloud
    case documentCode
    case documentDiagrams
    case documentDownload
    case documentEdit
    case documentError
    case documentFont
    case documentForbidden
    case documentGraph
    case documentImage
    case documentInformation
    case documentList
    case documentLocked
    case documentMovie
    case documentMusic
    case documentPlay
    case documentRecording
    case documentRemove
    case documentScan
    case documentSearch
    case documentShred
    case documentStar
    case documentText
    case documentText2
    case documentText3
    case documentTime
    case documentUnlocked
    case documentUpload
    case documentZip
    case documentTable
    case eye
    case eyeHidden
    case flag
    case flag2
    case flag3
    case flag4
    case folder
    case folder2
    case folderAdd
    case folderBookmark
    case folderCancel
    case folderChecked
    case folderDownload
    case folderError
    case folderForbidden
    case folderInformation
    case folderLocked
    case folderRemove
    case folderSearch
    case folderUnlocked
    case folderUpload
    case folders
    case iconRoundedLock
    case inbox
    case inboxDocument
    case inboxDownload
    case inboxFilled
    case inboxUpload
    case inboxes
    case infoDocumentText
    case information
    case information2
    case key
    case key2
    case lock2
    case lockOpen
    case lockOpen2
    case lockRounded
    case lockRoundedOpen
    case lockStripes
    case mailAdd
    case mailCancel
    case mailChecked
    case mailEnvelope
    case mailEnvelopeClosed
    case mailEnvelopeClosed2
    case mailEnvelopeOpen
    case mailEnvelopeOpen2
    case mailEnvelopeOpened3
    case mailError
    case mailForbidden
    case mailRemove
    case note
    case noteAdd
    case noteChecked
    case noteImportant
    case noteList
    case noteRemove
    case noteText
    case notebook
    case notebook2
    case notebook3
    case notebook4
    case notebookList
    case notebookText
    case package2
    case paperclip
    case pen
    case penAngled
    case printer
    case printerText
    case search
    case searchMinus
    case searchPlus
    case shredder
    case star
    case tagAdd
    case tagCancel
    case tagChecked
    case tagCord
    case tagRemove
    case tags
    case trashCan
    case trashCan2
    case zip
}

