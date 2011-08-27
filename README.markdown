# Mellel2MMD

This is a mirror of Malte Rosenau's [Mellel2MMD][] app and xsl file, which
allow one to convert a [Mellel][] document into a [Multimarkdown][] document.

I've also included a shell script (mellel2mmd.sh) that is based upon
Mellel2MMD.app/Contents/Resources/script. To convert a Mellel document using
mellel2mmd.sh, run

    mellel2mmd.sh path/to/filename.mellel

One limitation of the script is that the mellel2mmd.xsl file must be in
the directory from which you execute the script. Alternatively,

	cd filename.mellel
    xsltproc path/to/mellel2mmd.xsl main.xml

Sometimes the `main.xml` file is gzipped, in which case you'll have to gunzip
it first (the script takes care of this automatically).

I used this script extensively in the past, but I have not had occasion
to use it recently. So I don't know if it works with files produced by
recent versions of Mellel. 

I'm putting it up here because I noticed that Malte Rosenau's site is
down, at least for the moment. I have several old Mellel documents still
lurking on my hard drive, and I don't want to lose the ability to
convert them to extended markdown.

  [Mellel2MMD]: http://wwwuser.gwdg.de/~mrosena/
  [Mellel]: http://www.mellel.com/
  [Multimarkdown]: http://fletcherpenney.net/multimarkdown/
