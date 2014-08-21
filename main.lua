-- ZERO BRANE STUDIO DEBUGGER
 --require("mobdebug").start()

-- WORONA INITIALIZATION
local worona = require "worona"
worona:initializeWoronaExtensions()

-- START THE LOG
worona.log:start( { level = "INFO", reset_log = true, console = true, file = "log", previous_file = "previous_log" } )


-- WORONA CONFIGURATION
worona.wp_url = "http://test.turismob.com"
worona.current_style = "flat-ui"

-- START THE APPLICATION
worona:do_action( "load_style" )
worona:do_action( "init" )
