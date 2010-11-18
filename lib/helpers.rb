class RedirectHelper
  def convert_legacy_slug(dasblog_slug)
    val = dasblog_slug.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1-\2').
      gsub(/([a-z\d])([A-Z])/,'\1-\2').
      downcase

    singular_compound_words().each do |word|
      val.gsub! word, word.gsub('-', '')
    end
    
    fix_other_links val

    val
  end

  private

  def fix_other_links(val)
    val.gsub! 'net20', 'net-20'
    val.gsub! 'devlink2', 'devlink-2'
    val.gsub! 'powershell2', 'powershell-2'
    val.gsub! 'part1', 'part-1'
    val.gsub! 'part2', 'part-2'
    val.gsub! 'part3', 'part-3'
    val.gsub! 'bindinglist-databinding-the-way-you-would-expect-in-net-20', 'bindinglist---data-binding-the-way-you-would-expect-in-net-20'
    val.gsub! 'na-n-look-like', 'nan-look-like'
    val.gsub! 'xml-serializer-and-quotwhy-is-my-application-kicking-off-the-c-compilerquot', 'xmlserializer-and-andquotwhy-is-my-application-kicking-off-the-c-compilerandquot'
    val.gsub! 'system-windows-forms-webbrowser-and-selenium', 'systemwindowsformswebbrowser-and-selenium'
    val.gsub! 'am-iactp-junkie-or-a-beta-junkie', 'am-i-a-ctp-junkie-or-a-beta-junkie'
    val.gsub! 'zoom-it-great-for-presentations-as-well-as-when-your-eyes-are-dilated', 'zoomit---great-for-presentations-as-well-as-when-your-eyes-are-dilated'
    val.gsub! 'visual-studio2010-is-bighellip-at-least-the-ctp-ishellip', 'visual-studio-2010-is-bigandhellip-at-least-the-ctp-isandhellip'
    val.gsub! 'find-stringps1-ack-for-powershell', 'find-stringps1--ack-for-powershell'
  end

  def singular_compound_words
    ['power-shell', 'win-dbg', 'event-setters', 'manual-reset-event', 'tools-install-community-controls',
     'file-helpers', 'ftp-web-request-ftp-web-response', 'win-snap', 'flow-layout-panel', 'outer-html',
     'data-binding', 'managed-spy', 'feed-burner', 'background-worker', 'i-support-initialize', 'ms-build',
     'code-plex', 'x-path', 'binding-list', 'design-mode', 'browsable-attribute', 'one-care', 'slick-run',
     'ghost-doc', 'web-browser', 'i-doc-host-ui-handler', 'worse-than-failure', 'web-client', 'dev-link',
     'wi-x', 'iron-ruby']
  end
end
