README
======

File Layout
-----------

/Build.bat
    Main build script.

/build
    Output folder for the build (do not check this into Subversion!)

/content
    DocBook documents, images, samples, and other content.
    Note that we use XInclude to refer to recursively include content
    into the book.  Book parts and chapters are defined in subdirectories
    with their associated images and samples.

/resources
    Additional configuration data and resources required to generate
    the book.

/tools
    Tools required to generate the book.


Prerequisites
-------------

Generating the book requires the following programs to be installed:

- Java JRE 1.4 or more recent.
- Subversion command-line client.
- Windows (sorry)


How to Build
------------

Run the Build.bat batch file in the root directory of the Book.
This will produce output in the "build\image" folder including
XHtml, CHM and PDF versions of the docs.

Note that the build uses the "svn export" command to export content
for inclusion in the XHtml rendered version of the book.  Consequently
new content files must be scheduled for addition in Subversion (using
"svn add") before running the build.  Otherwise those content files will
not be copied as required.


Remarks
-------

At this time we are using a patched version of the DocBook XSL
to work around an incompatibility with the Xerces XInclude processor.
Refer to the patch file in the "tools" folder.

