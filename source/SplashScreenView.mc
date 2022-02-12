using Toybox.WatchUi;
using Toybox.Timer;

class SplashScreenInputDelegate extends WatchUi.BehaviorDelegate
{	
    public function initialize() {
        BehaviorDelegate.initialize();
    }
    
    public function onBack() {
    	System.exit();
    }
    
}

class SplashScreenView extends WatchUi.View {

	private var timer;
	private var model;
	
    public function initialize() {
        View.initialize();
    }

	public function onLayout(dc) {
    	setLayout( Rez.Layouts.SplashLayout( dc ) );
    	timer = new Timer.Timer();
    	timer.start(method(:timerCallback), 500, false);
    	
    	var splashImg = View.findDrawableById("splash_screen");
    	var adjustX = (splashImg.width - dc.getWidth()) / 2;
    	var adjustY = (splashImg.height - dc.getHeight()) / 2;
    	splashImg.setLocation(splashImg.locX-adjustX, splashImg.locY-adjustY);  	
    }
	
	public function timerCallback() {
		timer.stop();
		WatchUi.pushView(new MainMenu(), new MainMenuInputDelegate(), WatchUi.SLIDE_IMMEDIATE);
		return true;
	}

}
