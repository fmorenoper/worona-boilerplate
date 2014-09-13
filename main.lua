-- ZERO BRANE STUDIO DEBUGGER
 require("mobdebug").start()


-- WORONA INITIALIZATION
local worona = require "worona"
worona:initializeWoronaExtensions()

-- START THE LOG
worona.log:start( { level = "INFO", reset_log = true, console = true, file = "log", previous_file = "previous_log" } )


-- WORONA CONFIGURATION
worona.wp_url = "http://www.worona.org"
worona.current_style = "flat-ui"
worona.app_title = "Worona Blog"
worona.app_about_title = "App about title"
worona.app_about_description = "This is where you can change the text shown in the \"about\" page. Yor text must not be longer than the screen size. Once the app has been built, and uploaded to the storest, you cannot change this text from the online control panel. If you wish to change it, you must change it here, and build and upload de app to the stores again. Thank you for using Worona!"


-- START THE APPLICATION
worona:do_action( "load_style" )
worona:do_action( "init" )

worona:do_action( "go_to_scene", { scene_type = "scene-list", effect = "fade", time = 500 } )

