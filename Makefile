figs/built-barchart.png: data/add-on-packages-freqtable.tsv
	Rscript R/03_barchart-packages-built.R

data/add-on-packages-freqtable.tsv data/add-on-packages.tsv: data/installed-packages.tsv
	Rscript R/02_wrangle-packages.R

data/installed-packages.tsv:
	Rscript R/01_write-installed-packages.R

clean:
	rm data/*tsv figs/*png
