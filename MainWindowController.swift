import Cocoa

class MainWindowController: NSWindowController{
    @IBOutlet weak var colorWell: NSColorWell!
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    var alpha = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        updateColor()
    }
    
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        print("R slider value is \(sender.floatValue)")
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        print("G slider value is \(sender.floatValue)")
        g = sender.doubleValue
        updateColor()
    }

    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        print("B slider value is \(sender.floatValue)")
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let color = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(alpha))
        colorWell.color = color
        
    }
}
