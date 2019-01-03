package require starkit
starkit::startup
set ::HV3_STARKIT 1

source [file join $starkit::topdir uhttpd.tcl]
source [file join $starkit::topdir routes.tcl] ;# for server generated content
source [file join $starkit::topdir hv3 hv3_main.tcl]

set port [uhttpd::create 0 -root [file join $starkit::topdir dxapp pub]]
eval [concat main {-enablejavascript "http://localhost:$port"}]

wm protocol . WM_DELETE_WINDOW exit ;# exit event loop
vwait forever