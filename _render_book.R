library(bookdown)
library(knitr)


# Clean files -------------------------------------------------------------
options(bookdown.clean_book = TRUE)
bookdown::clean_book()
rmarkdown::clean_site(preview = FALSE)

# Update ecodados
remotes::install_github(repo = "paternogbc/ecodados")

# Render html -------------------------------------------------------------
rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')

# Render word
rmarkdown::render_site(output_format = 'bookdown::word_document2', encoding = 'UTF-8')
