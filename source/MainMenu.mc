using Toybox.WatchUi;
using Toybox.Attention;

class MainMenu extends WatchUi.Menu2 {
	
	
	public function initialize() {
		Menu2.initialize({:title=>Rez.Strings.AppName});
		populate();
	}
	
    public function onShow() {
    	Menu2.onShow();
    }

    public function onHide() {
    	Menu2.onHide();
	}
	private function populate() {
		
		addItem(
			new WatchUi.MenuItem(
			Rez.Strings.start,
			Rez.Strings.start_description,
			:StartApp,
			{}
			)
		);
	}
}

class MainMenuInputDelegate extends WatchUi.Menu2InputDelegate {
    
    public function initialize() {
        Menu2InputDelegate.initialize();
    }

    public function onSelect(item) {
        
        if(item.getId() == :StartApp) {
        	WatchUi.pushView(new StartView(), new StartInputDelegate(),WatchUi.SLIDE_LEFT);
        	
        } 
        return true;
        
    }
    public function onBack() {
    	System.exit();
    }
}
