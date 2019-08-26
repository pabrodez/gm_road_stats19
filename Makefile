HTML_FILES=index.html

index.html : gm_road_stats19.Rmd style.css
	Rscript -e 'Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc"); rmarkdown::render(input = "gm_road_stats19.Rmd")'

clean : 
	rm -f $(HTML_FILES)
