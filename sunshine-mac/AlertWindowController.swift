//
//  AlertWindowController.swift
//

import AppKit

class AlertWindow: NSWindow {
    convenience init(text: String) {
        let viewController = AlertViewController(text: text)
        self.init(contentViewController: viewController)
        styleMask.remove(.fullScreen)
        styleMask.remove(.miniaturizable)
        styleMask.remove(.resizable)
        titlebarAppearsTransparent = true
        titleVisibility = .hidden
        title = ""
        level = .floating
    }
}

class AlertViewController: NSViewController {
    convenience init(text: String) {
        let view = NSView(frame: NSRect(x: 0, y: 0, width: 300, height: 150))
        let label = NSTextField(labelWithString: text)
        label.frame = NSRect(x: 20, y: 70, width: 260, height: 60)
        label.alignment = .center
        label.lineBreakMode = .byWordWrapping
        label.cell?.wraps = true
        view.addSubview(label)
        self.init()
        self.view = view
        let okButton = NSButton(title: "OK", target: self, action: #selector(okButtonClicked))
        okButton.frame = NSRect(x: 120, y: 20, width: 60, height: 30)
        self.view.addSubview(okButton)
    }
    @objc func okButtonClicked() {
        view.window?.windowController?.close()
    }
}
