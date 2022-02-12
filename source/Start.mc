using Toybox.WatchUi;
using Toybox.Graphics as Gfx;
using Toybox.Timer;
using Toybox.Attention;

class StartView extends WatchUi.View {
	

    public function initialize() {
        View.initialize();
    }

    // Load your resources here
    public function onLayout(dc) {
        setLayout(Rez.Layouts.StartLayout(dc));
		View.onLayout(dc);
    }
	


    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    public function onShow() {
    	View.onShow();
    }

    // Update the view
    public function onUpdate(dc) {
		
		View.onUpdate(dc);
        
    }

}

class StartInputDelegate extends WatchUi.BehaviorDelegate {

	function initialize() {
        BehaviorDelegate.initialize();
    }
	
    public function onMenu() {
    	
		return true;
    }

    public function onNextPage() {
		
		return true;
    }

    public function onPreviousPage() {
		
		return true;
    }

    function onBack() {
    	
		return true; // disable back
    }

}