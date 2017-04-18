# ExportAllToCsv

This is an addon for LibreOffice/OpenOffice.org Calc to export all worksheets of a spreadsheet to multiple CSV files.

## Installation

Pre-built packages are also available at the [releases page](https://github.com/clear-code/libreoffice-export-all-to-csv/releases).

 1. Clone this repository to somewhere.
 2. Run `make install`.
 3. Then LibreOffice starts and shows a confirmation dialog for the installation. Click "OK".
 4. Restart LibreOffice.

## Usage

Choose "Tools" => "Add-on" => "Export All Sheets to CSV files" menuitem, then worksheets will be exported as "(basename of the original file).(worksheet's name).csv" files.

## Command line utilities

This repository includes command line tools `ods2csv` and `odscat` under the `bin` directory. You need to install them to any location manually, like:

~~~bash:
$ install -C bin/ods2csv ~/local/bin/
$ install -C bin/odscat ~/local/bin/
~~~

Not only ods (OpenDocument Format: LibreOffice/OpenOffice.org), but xls and xlsx (Microsoft Excel) are also available as the input.

### `ods2csv`

It converts given files to CSV files. All CSV files are placed to the working directory.

This is very similar to `ssconvert` (a part of [Gnumeric](http://www.gnumeric.org/)). `ssconvert -S input.ods output.%s.csv` also converts all worksheets to separate CSV files with worksheet name. If you don't worry to install Gnumeric, try it also!

### `odscat`

It converts given files to CSV and output all to the standard output. It will be useful to compare multiple ods files with the `diff` command.

## Combination with Git

If you hope to show differenfe of ods or xls(x) files via `git diff`, `odscat` will help you.

1. Register `odscat` as a filter. Put following configuration to your `~/.gitconfig`:
   
   ~~~
   [diff "spreadsheet"]
           textconv = ~/local/bin/odscat
   ~~~
   
2. Specify `spreadheet` filter for files with specific extensions. Put following configuration to your `~/.gitattributes`:
   
   ~~~
   *.ods diff=spreadsheet
   *.xls diff=spreadsheet
   *.xlsx diff=spreadsheet
   ~~~

Then you'll see CSV diff for ods files via `git diff`.

