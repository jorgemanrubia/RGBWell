import Cocoa

class MainWindowController: NSWindowController{
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("R slider value is \(sender.floatValue)")
    }
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        print("G slider value is \(sender.floatValue)")
    }

    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        print("B slider value is \(sender.floatValue)")
    }
}
