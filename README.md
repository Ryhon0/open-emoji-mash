# Open Emoji Mash
Open Emoji Mash is a library of cut-up [twemoji](https://github.com/twitter/twemoji) emojis, which can be used to create emoji mixes, similar to [EmojiMashupBot](https://twitter.com/EmojiMashupBot).


## Projects using this library
My personal Discord bot

### Examples
* C# Discord Bot (Coming soon) 


## Dependencies
Open Emoji Mash dependencies are only needed if you're going to use the scripts in the [bin folder](bin).

* Unix system (or Unix shell, e.g. MSYS2)
* GNU Bash (or equivalent)
* Inkscape
* ImageMagick (standalone `composite` executable)


## How do I use it?
Open Emoji Mash provides scripts to render .svg files and combine the outputs, it's up to you how you want to implement it.  
Additionally, it provides the [bases.json file](bases.json), which lists commonly used bases. The key is the emoji code and the value is the base.  

### How to find a part of an emoji
1. (Only for base) Check if the code has a value in the bases.json file
	* If a value is found, get the file from bases/shared  
😂 -> `base/shared/regular.svg`
2. Convert emoji to code
	* Convert emoji string to UTF32
	* Join the UTF32 bytes converted to lowercase hex with the `-` character.
	* You should have something like this:  
😂 -> `1f602`  
🐻‍❄️ -> `1f43b-200d-2744-fe0f`  
🙋🏿‍♀️ -> `1f64b-1f3ff-200d-2640-fe0f-000d-000a`  
2. If no value found, check for a file with the name of the emoji code in the bases folder  
🌕 -> `base/1f31d.svg`
3. If no file is found, get the file with the name of the emoji code from folder assets/svg in the [twemoji repository](https://github.com/twitter/twemoji)  
🫑 -> `twemoji/assets/svg/1fad1.svg`
4. If nothing is found, the code is not an emoji  
[🐱‍👤 -> Sorry, Microsoft, that's not an emoji](https://emojipedia.org/ninja-cat/)

### Render .svg files
#### All .svg files
Output is in the same folder as the .svg file and the extension changes to .png. The default render resolution is 512px.

```bash
bin/render-all.sh
```

#### A single .svg file

```bash
#             Input .svg file       Output    Resolution (px)
bin/render.sh base/shared/blush.svg flush.png 512
```

### Combine multiple images
```bash
bin/combine.sh base.png eyes.png mouth.png special.png output.png
```

### Remove all the rendered .png images

```bash
bin/clean.sh
```
