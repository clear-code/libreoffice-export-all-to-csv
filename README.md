# ExportAllToCsv

This is an addon for LibreOffice/OpenOffice.org Calc to export all worksheets of a spreadsheet to multiple CSV files.

## Installation

Pre-built binary are also available at the [releases page](https://github.com/clear-code/libreoffice-export-all-to-csv/releases).

 1. Clone this repository to somewhere.
 2. Run `make install`.
 3. Then LibreOffice starts and shows a confirmation dialog for the installation. Click "OK".
 4. Restart LibreOffice.

Then you'll see "Tools" => "Add-on" => "Export All Sheets to CSV files" menuitem.

## Command line utilities

This repository includes command line tools `ods2csv` and `odscat` under the `bin` directory. You need to install them to any location manually, like:

~~~bash:
$ install -C bin/ods2csv ~/local/bin/
$ install -C bin/odscat ~/local/bin/
~~~

### `ods2csv`

It converts given ods files to CSV files. All CSV files are placed to the working directory.

### `odscat`

It converts given ods files to CSV and output all to the standard output. It will be useful to compare multiple ods files with the `diff` command.

