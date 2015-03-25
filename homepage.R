x = list.files('src/contrib', '.tar.gz$', full.names = TRUE)
x = paste(sprintf('<li><a href="%s">%s</a></li>', x, basename(x)), collapse = '\n')
writeLines(c(
  '<html>',
  '<head><title>XRAN | A Personal R Package Repository of Yihui Xie</title></head>',
  '<body>',
  '<p>',
  'This is a personal and experimental R package repository of Yihui Xie.',
  'It contains some of my source packages under development.',
  'These packages may be subject to significant changes day to day.',
  'Please consider CRAN if you want to install packages for production purposes.',
  'To install a package from this repository, you can use',
  '</p>',
  '<pre>',
  'install.packages(
  "PACKAGE_NAME",
  type = "source",
  repos = c("http://yihui.name/xran", "http://cran.rstudio.com")
)',
  '</pre>',
  '<ul>',
  x,
  '</ul>',
  '</body>',
  '</html>'
), 'index.html')

