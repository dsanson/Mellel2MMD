# Mellel2MMD

This is first and foremost a mirror of Malte Rosenau's [Mellel2MMD][]
app and xsl file, which allow one to convert a [Mellel][] document into
a [Multimarkdown][] document. I used Rosenau's xsl file extensively
in the past, but I have not had occasion to use it recently. So I don't
know if it works with files produced by recent versions of Mellel.

I'm putting it up here because I noticed that Rosenau's site is down, at
least for the moment. This [direct link][] to the download still works.
I have several old Mellel documents still lurking on my hard drive, and
I don't want to lose the ability to convert them to extended markdown.

But I also could not resist adding a couple of things. First, I've added
an xsl file, mellel2pandoc.xsl, for converting directly to [Pandoc][]'s
extended markdown. It deviates from the mellel2mmd.xsl in the following
ways:

-   It generates Pandoc title blocks instead of MMD metadata. (Note that
    it does not currently support the Date field.)
-   It does not add width and height info to image links.
-   It generates Pandoc-style citations.

I have not tried to rework mellel2mmd.xsl's table support. So for now,
mellel2pandoc.xsl generates MMD style tables.

I've also included two shell scripts, mellel2mmd.sh and
mellel2pandoc.sh, that are based upon the script included in Rosenau's
droplet, Mellel2MMD.app/Contents/Resources/script. 

To convert a Mellel document to MMD using mellel2mmd.sh, 

    $ mellel2mmd.sh path/to/filename.mellel

One limitation of these scripts is that the mellel2mmd.xsl or
mellel2pandoc.xsl file must be in the directory from which you execute
the script. If you plan to use these scripts a lot, you should probably
put your xsl files somewhere (`~/.xsl/`?) and modify the scripts to point 
to them via absolute paths.

If you want to use the xsl files directly with xsltproc, just take a
look at the scripts; it should be obvious enough what to do.

  [Mellel2MMD]: http://wwwuser.gwdg.de/~mrosena/
  [Mellel]: http://www.mellel.com/
  [Multimarkdown]: http://fletcherpenney.net/multimarkdown/
  [direct link]: http://wwwuser.gwdg.de/~mrosena/mellel2mmd.zip
  [Pandoc]: http://johnmacfarlane.net/pandoc/
