# [DATASET] Interviews in Multiple Languages


## Usage

### Quick Run

Run the script `download.sh` to download videos from YouTube in multiple languages. This wil look at the contents of the files in querylists directory and download videos using these files.

### Custom Run

Change or add text files within querylists directory to change the interviews that are to be downloaded.
The file names must be a language (e.g. English, French, Chinese etc.) and the contents of the file must be a single name on each line.

To control other aspects, you'll have to rewrite parts of the script in `download.sh`

## Requirements

* [youtube-dl](https://ytdl-org.github.io/youtube-dl/index.html) - For downloading youtube videos.
* [Translate Shell](https://github.com/soimort/translate-shell) - For translating the word interview to many languages.
## Misc

Star the repo if you liked it!