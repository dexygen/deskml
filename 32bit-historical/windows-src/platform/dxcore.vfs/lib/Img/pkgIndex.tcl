# Tcl package index file - handcrafted by David Zolli <kroc@kroc.tk>
#
# Include Windows + linux x86 + Mac OSX binaries

switch -- $::tcl_platform(platform) {
  "unix" {
    package ifneeded zlibtcl 1.0 [list load [file join $dir zlibtcl[info shared]]]
    package ifneeded pngtcl 1.0 [list load [file join $dir pngtcl[info shared]]]
    package ifneeded tifftcl 1.0 [list load [file join $dir tifftcl[info shared]]]
    package ifneeded jpegtcl 1.0 [list load [file join $dir jpegtcl[info shared]]]
  }
  "windows" {
    package ifneeded zlibtcl 1.0 [list load [file join $dir zlibtcl[info shared]]]
    package ifneeded pngtcl 1.0 [list load [file join $dir pngtcl[info shared]]]
    package ifneeded tifftcl 1.0 [list load [file join $dir tifftcl[info shared]]]
    package ifneeded jpegtcl 1.0 [list load [file join $dir jpegtcl[info shared]]]
  }
  "Darwin" {
    package ifneeded zlibtcl 1.2.1 [list load [file join $dir zlibtcl[info shared]]]
    package ifneeded pngtcl 1.2.6 [list load [file join $dir pngtcl[info shared]]]
    package ifneeded tifftcl 3.6.1 [list load [file join $dir tifftcl[info shared]]]
    package ifneeded jpegtcl 1.0 [list load [file join $dir jpegtcl[info shared]]]
  }
  "default" {
    puts stderr "Unsupported platform sorry: Windows, linux x86 and Mac OSX binaries are wrapped in this starkit."
    return
  }
}

package ifneeded img::base 1.3 [list load [file join $dir libtkimg[info shared]]]

package ifneeded Img 1.3 {
  package require img::bmp
  package require img::gif
  package require img::ps
  package require img::window
  package require img::xbm
  package require img::xpm
  package require img::ico
  package require img::pcx
  package require img::ppm
  package require img::sgi
  package require img::sun
  package require img::tga
  package require img::jpeg
  package require img::png
  package require img::tiff
  package require img::pixmap
  package provide Img 1.3
}

package ifneeded "img::bmp" 1.3 [list load [file join $dir tkimgbmp[info shared]]]
package ifneeded "img::gif" 1.3 [list load [file join $dir tkimggif[info shared]]]
package ifneeded "img::ico" 1.3 [list load [file join $dir tkimgico[info shared]]]
package ifneeded "img::jpeg" 1.3 [list load [file join $dir tkimgjpeg[info shared]]]
package ifneeded "img::pcx" 1.3 [list load [file join $dir tkimgpcx[info shared]]]
package ifneeded "img::pixmap" 1.3 [list load [file join $dir tkimgpixmap[info shared]]]
package ifneeded "img::png" 1.3 [list load [file join $dir tkimgpng[info shared]]]
package ifneeded "img::ppm" 1.3 [list load [file join $dir tkimgppm[info shared]]]
package ifneeded "img::ps" 1.3 [list load [file join $dir tkimgps[info shared]]]
package ifneeded "img::sgi" 1.3 [list load [file join $dir tkimgsgi[info shared]]]
package ifneeded "img::sun" 1.3 [list load [file join $dir tkimgsun[info shared]]]
package ifneeded "img::tga" 1.3 [list load [file join $dir tkimgtga[info shared]]]
package ifneeded "img::tiff" 1.3 [list load [file join $dir tkimgtiff[info shared]]]
package ifneeded "img::window" 1.3 [list load [file join $dir tkimgwindow[info shared]]]
package ifneeded "img::xbm" 1.3 [list load [file join $dir tkimgxbm[info shared]]]
package ifneeded "img::xpm" 1.3 [list load [file join $dir tkimgxpm[info shared]]]
