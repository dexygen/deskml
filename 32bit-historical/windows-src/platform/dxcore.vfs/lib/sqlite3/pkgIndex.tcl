#
# Tcl package index file
#
# Note sqlite*3* init specifically
#
package ifneeded sqlite3 3.5.1 \
    [list load [file join $dir tclsqlite3.dll] Sqlite3]
