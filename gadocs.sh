#!/bin/bash
find apidocs -type f -name "*.html" | xargs sed -i "s/<\/body>/<script type=\"text\/javascript\">\n\
\n\
  var _gaq = _gaq || [];\n\
  _gaq.push(['_setAccount', 'UA-7239240-2']);\n\
  _gaq.push(['_trackPageview']);\n\
\n\
  (function() {\n\
    var ga = document.createElement('script'); ga.type = 'text\/javascript'; ga.async = true;\n\
    ga.src = ('https:' == document.location.protocol ? 'https:\/\/ssl' : 'http:\/\/www') + '.google-analytics.com\/ga.js';\n\
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);\n\
  })();\n\
\n\
<\/script>\n\
<\/body>/g"
