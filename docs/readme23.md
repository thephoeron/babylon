# BABYLON Version 2.3

## What is BABYLON

BABYLON is a modular, configurable, hybrid environment for developing expert
systems. It provides the following knowledge representation formalisms:

- frames,
- rules,
- logic (Prolog) and
- constraints.

BABYLON is implemented and embedded in Common Lisp.

The archive contains all the sources that are needed to compile
and run BABYLON on different hard and software platforms (Mac, Sun, ...).

Version 2.3 is a maintenance release of 2.2 with some reworking to make it
more portable. To this end, the whole babylon implementation is put into the
:babylon package. So put your knowledge bases into th :babylon package or use
the :babylon package. Also included is some documentation (in the doc
directory) in RTF (Rich Text Format) and some more complex examples (see
axtra sample kb and the texi and model-k directories).

## More details about BABYLON can be found in:

Christaller, T., Di Primio, F., Voss, A. (Hrsg.).<br>
Die KI-Werkbank Babylon.<br>
Eine offene und portable Entwicklungsumgebung fuer Expertensysteme.<br>
Addison-Wesley, 1989, ISBN 3-89319-155-0<br>
(in German)

or

Christaller, T., Di Primio, F., Voss, A. (eds).<br>
The AI-Workbench BABYLON.<br>
An open and portable development environment for expert systems.<br>
Academic Press, London, 1992, ISBN 0-12-174235-0;

and

Guesgen, H.-W.,<br>
CONSAT: A system for constraint satisfaction.<br>
Research Notes in Artificial Intelligence, Morgan Kaufman, San Mateo, 1989.

## Lisp Implementations Supported

In principle, Babylon should run on any Common Lisp implementation.
The current version 2.3 has actually been tested with

| Lisp implementation                           | Platform               |
|-----------------------------------------------|------------------------|
| Macintosh Common Lisp 2.0.1                   | Apple Macintosh        |
|                                               |                        |
| Allegro Common Lisp 4.1 and 4.2,              | SUN                    |
| CLisp (january 1994),                         |                        |
| CMU (version 16e) and                         |                        |
| AKCL 1.615                                    |                        |

Support for Lisp Machines has been stopped. I do not have one available
any more.

## How to Get Babylon

You can get babylon from http://www.gmd.de/ using one of the Mosaic versions
for example or by anonymous ftp from ftp.gmd.de

 - FTP the distribution from ftp.gmd.de:

     ftp ftp.gmd.de
     Name: anonymous
     Password: <email-address>
     cd GMD/ai-research/Software/Babylon
     get Babylon-2.3.sit.hqx                    <-  for macintosh users or
     binary
     get Babylon-2.3.tar.Z                      <-  for unix users
     quit

 - untar the distribution file (unix):

     zcat Babylon-2.3.tar.Z | tar -xvf -

 - or unstuff Babylon-2.3.sit.hqx (Stuffit Expander) on your Macintosh.

This will create a directory "Babylon-2.3" with all the subdirectories.


## How to Install Babylon

### On an Apple Macintosh:

Start MCL (Macintosh Common Lisp) and load the make.cl file.

You will be asked:
Use development options for compiling files? (y or n)
Answer y if you want to record source files, documentation strings etc.
This will cost some space in the saved babylon image but makes developing much
easier. Type n otherwise.

After some time a dialog will pop up. Select which versions of the diffent
processors you want to have included in the babylon image. Preselected are all
the normal versions of the processors. Now push the Save as... button to get
a File Selection Dialog. Choose a name and place for the babylon image and
click the Save button. You will need about 3MB for the complete babylon image.
If you click the Abort button, you will find a Cinfigure Image ... menu entry
in the Babylon menu. You may use this menu entry to continue making the image
after doing some other customization of your lisp environment (comiple and/or
load some files etc.).

After some time you will be asked:
Load graphic frame browser? (y or n)
Answer y if you want to have a graphic oriented browser of the babylon frame
inheritance structures. Make sure your MCL examples folder does contain
the file scrolling-windows and the library the file scrollers, because both
are used by the implementation of the frame browser. Compile both files
if you have not done this already.
;Loading #P"IHD:Applications:MCL 2.0:examples:SCROLLING-WINDOWS.fasl"...
;Loading #P"IHD:Applications:MCL 2.0:library:SCROLLERS.fasl"...

After compiling and loading all you wanted you will be asked:
Is your AntiVirus software temporarily disabled? (y or n)
Answer y after temporary switching off Gatekeeper in the Gatekeepe Controls
for example or allow MCL to write the resource fork of other files.
Do whatever you have to, to disallow your virus preventing software to intervene.
Answer y now.

After some time the babylon image (application) will appear on disk and MCL
will quit. You can start babylon now by double clicking the babylon image.

### On any other systems:

Edit the make.cl file and change the following:

```lisp
(defvar *babylon-root-directory*
  #-:MCL "/home/juergen/Babylon/Babylon-2.3/" ; <--- change the pathname string here!!!!
  #+:MCL (namestring
          (make-pathname :directory (pathname-directory *loading-file-source-file*))))
```

and edit the make-sun.cl file and change the following:

```lisp
(defbabylon-translation "babhome^" ">home>juergen>Babylon>Babylon-2.3>") ; <--- change!!!
```

> Note: use `>` as the pathname seperators here!!!

After having edited both files to set the babylon home directory you should compile
and make a babylon image.

If you have one of the Lisp implementations mentioned above, do the following:

1. change to the Babylon-2.3 directory
   ```sh
   > cd Babylon-2.3
   ```

2. start your lisp
   ```sh
   > clisp
   ```

3. load the make.cl file
   ```lisp
   > (load "make.cl")
   ```

4. go into the "BABYLON" package
   ```lisp
   > (in-package "BABYLON")
   ```

5. make the babylon image
   ```lisp
   > (make-babylon-image)
   ```

6. quit (or exit or cntl-d) your Lisp
   ```lisp
   > (quit)
   ```

Lisp            | image name             | start by typing (for example)
----------------|------------------------|-------------------------------
MCL             | Babylon                | doupleclick Babylon
Allegro         | babylon                | babylon
CLisp           | babylon.mem            | clisp -M babylon.mem
CMU             | babylon.core           | cmu -core babylon.core
AKCL            | babylon.kcl            | babylon.kcl

Copy a (modified to your needs) version of the bab-init.cl (and a copy of
extra.kb if you want to try out the extra sample) into your home directory.
The bab-init.cl file will be loaded after starting the babylon image.

## Known Problems

CLisp (january 1994) does have problems with the optional line feed format
option "~&". Add a force-output or wait for the next release of CLisp.

If your Lisp implementation does not provide 'declaim' and 'defpackage' try
to use those within the clII directory.

## Copyright

BABYLON is publicly available under similar terms as the X Window System.

## In case of problems get in touch with:

Juergen Walther<br>
AI Research Division<br>
GMD (German National Research Center for Computer Science)<br>
PO Box 1316<br>
D-53731 Sankt Augustin<br>
Germany<br>
e-mail: juergen.walther@gmd.de
