import UIKit

public class DesignableButton: UIControl {
    //MARK: - Properties
    //MARK: IBOutlet
    @IBOutlet public var highlightableViews: [UIView]?
    //MARK: Variables
    //Inspectables
    @IBInspectable public var highlightedEnabled:Bool = true
    @IBInspectable public var highlightAlpha:CGFloat = 0.5{
        didSet{
            if oldValue != highlightAlpha{
                highlightAlpha = max(0,min(highlightAlpha,1))
            }
        }
    }
    //Overriden
    override public var highlighted:Bool{
        didSet{
            if highlightedEnabled{
                refreshHighlightedState()
            }
        }
    }
    
    //MARK: - Configure methods
    override public func awakeFromNib(){
        func configure(){
            for v in subviews{
                v.userInteractionEnabled = false
            }
        }
        
        //
        super.awakeFromNib()
        configure()
    }
    
    //MARK: - Highlight methods
    //MARK: Applying
    private func toggleHighlightedStyle(){
        func alphaToSet()->CGFloat{
            if highlighted{
                return highlightAlpha
            }else{
                return 1.0
            }
        }
        
        //
        let newAlpha = alphaToSet()
        if let views = highlightableViews where views.count > 0{
            for v in views{
                v.alpha = newAlpha
            }
        }else{
            alpha = newAlpha
        }
    }
    
    //MARK: Refreshing
    private func refreshHighlightedState(){
        if highlighted{
            toggleHighlightedStyle()
        }else{
            delay(0.1, closure: { () -> () in
                self.toggleHighlightedStyle()
            })
        }
    }
    
    //Delay Function
    //Credits: Matt Neuburg
    //Link: http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861
    private func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}