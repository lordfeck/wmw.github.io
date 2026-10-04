#===============================================================================
# RSRU user-configurable constants
# Don't be daft: This is not executable alone. Do not amend the key names.
#===============================================================================

# Path setup, template include dir
# Thranpages presents WELL MADE WEB...
#======================================================================
my $tplRoot = "./tpl/";
my $siteHomepageDesc = << 'EOF'; 
There was a time when the Internet felt like somewhere to escape <i>to</i>. Now it is impossible to escape <i>from</i>.<br><br>
Well Made Web seeks to chronicle any web page made in this spirt, where it may still be found. These selected websites hearken back to a time of wonder and discovery. Here live the wild and glorious pages from the web in all its ages; a peek over the <span title="prisons">walled gardens</span> of social media. Originality and effort is welcomed, no matter its subject.<br><br>
<b>Submissions:</b> <code>letters@&lt;THIS_DOMAIN&gt;.uk</code> (exclude subdomain).<br><br>
<b>SOCIALS:</b> Follow us on <a href="https://twitter.com/ThranFeed" target="_blank">Twitter</a> or <a href="https://mastodon.me.uk/@thran" target="_blank">Mastodon</a> and you'll have the latest entries as soon as they are published! Or <a href="https://www.thran.uk" target="_blank">visit the curator's homepage</a>.<br><br>
<p><img src="./wmw.gif" alt="wmw button"> &lt;-- Link to us with this button.<br><br></p>
<div style="margin-bottom: 20px;">
<h3>NEW (18/05/25): Comments!</h3>
<p>You may now comment on any entry. Click the 'Permalink' to open the full view, then share your thoughts below. Commenting requires JavaScript to be enabled.</p>
</div>
EOF
#======================================================================

# NOTE: 1 is ENABLED, 0 is DISABLED
(
    # Target: dev or production. Dev uses relative URLs, production uses live URL
    target => "dev",

    # Production URL, excluding trailing stroke. May be a subdir
    liveURL => "https://wmw.thran.uk",

    # Path Configuration
    tplRoot => $tplRoot,
    tplinc => "${tplRoot}/linkcat",
    entrydir => "./entries",
    out => "../output",
    # Wipe destination directory before writing output files
    clearDest => 0,

    # Presentation Config
    siteName => "WMW: Well Made Web",
    siteHeaderDesc => "The old town of the Internet.",
    siteHomepageHeader => 'Well Made Web',
    maxPerPage => 10,
    maxHpHighlights => 12,
    siteHomepageDesc => "$siteHomepageDesc",
    showCatTotal => 1,

    # RSS Configuration (requires XML::RSS)
    rssEnabled => 1,
    rssFilepath => "rss.xml",       # Saved at the root of the output path
    rssEntryMax => 10,
    rssLang => "en",
    rssCopyright => "No Copyright",

    # Imaging configuration (requires GD)
    imagesEnabled => 1,
    thumbnailSize => "150x150",
    imgSrcDir => "./img",
    imgDestDir => "img",            # Destination subdir, appended to liveURL or out path
    imgToJpeg => 0,                 # Convert fullres PNG to JPEG
    noClobberImg => 1,
    
    #======================================================================
    # Configure category and entry names. These must match the fields in your template files
    #======================================================================
    cats => ["artistic", "eclectic", "dowdy", "own"],
    # List of known keys for each entry
    knownKeys => [qw(title ecc category img_desc heaviness date desc url is_highlight)],
    # Necessary keys. RSRU will fail if these are not present in any entry.
    necessaryKeys => [qw(title ecc category date desc)],
    # Description for each category, will appear on the first page of each
    catDesc => {
        artistic => "Webpages with highly inventive presentation. Effort first.",
        eclectic => "Curious and not easily defined; the obscure corners of the web.",
        dowdy => "The dated, the informative and the enduring. Commited to the subject, designed to last forever.",
        own => "Homepages of individuals. What 'social media' is failing to imitate.",
    },
    #======================================================================

    # Master template and any other blank HTML templates
    # Typically, these should not be altered.
    tpl => "rsru_template.html",
    blankEntry => "rsru_entry.html",
    blankEntryImg => "rsru_entry_img.html",
    blankCatEntry => "rsru_cat.html",
    blankTplHp => "index.html",
    blankTplHpEntry => "rsru_hp_entry.html",
    blankTplNav => "pagination_nav.html",
    rssBlockTop => "rsru_rss_top.html",
    rssBlockBottom => "rsru_rss_bottom.html",

    # Logging levels
    debug => 0,
    verbose => 0,
)

