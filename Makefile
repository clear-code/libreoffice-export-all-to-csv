ADDON_FILE=ExportAllToCsv.oxt

all: ExportAllToCsv.oxt

install: ExportAllToCsv.oxt
	soffice ExportAllToCsv.oxt

ExportAllToCsv.oxt:
	rm -f *.oxt
	rm -rf ./tmp
	mkdir ./tmp
	cp -r addon/* tmp/
	cp LICENSE ./tmp/
	cd tmp && zip -r -9 $(ADDON_FILE) ./* && mv $(ADDON_FILE) ../
	rm -rf ./tmp

