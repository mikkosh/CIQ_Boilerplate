

using Toybox.Application;
using Toybox.WatchUi;


class MyApplication extends Application.AppBase {
	
	protected var model;

    function initialize() {
        AppBase.initialize();
        model = new Model();
    }

    // onStart() is called on application start up
    public function onStart(state) {
    	
    }

    // onStop() is called when your application is exiting
    public function onStop(state) {
    
    }

    // Return the initial view of your application here
    function getInitialView() {
    	return [ new SplashScreenView(), new SplashScreenInputDelegate() ];
    }

    function getModel() {
        return model;
    }

}
