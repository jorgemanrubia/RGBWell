import Cocoa

class MainWindowController: NSWindowController{
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("R slider value is \(sender.integerValue)")
    }
}
