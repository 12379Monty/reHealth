# Instructions for Rendering Markdown to HTML

This guide will help you convert your markdown files to HTML for viewing in a web browser. These instructions cover both basic and advanced methods for Windows, macOS, and Linux.

## Method 1: Using Pandoc (Recommended for All Platforms)

[Pandoc](https://pandoc.org/) is a universal document converter that works excellently for converting markdown to HTML.

### Installation:

**Windows:**
1. Download the installer from [pandoc.org/installing.html](https://pandoc.org/installing.html)
2. Run the installer and follow the prompts
3. Verify installation by opening Command Prompt and typing `pandoc --version`

**macOS:**
1. Using Homebrew: `brew install pandoc`
2. Or download the installer from the Pandoc website
3. Verify installation with `pandoc --version`

**Linux:**
1. Ubuntu/Debian: `sudo apt-get install pandoc`
2. Fedora: `sudo dnf install pandoc`
3. Arch: `sudo pacman -S pandoc`
4. Verify installation with `pandoc --version`

### Basic Conversion:

Open a terminal/command prompt and navigate to the directory containing your markdown file, then run:

```bash
pandoc lower_leg_circulation_report.md -o lower_leg_circulation_report.html
```

### Advanced Conversion with CSS Styling:

For a better-looking output, use the style.css file included in this project:

```bash
pandoc lower_leg_circulation_report.md -o lower_leg_circulation_report.html --standalone --css=style.css
```

The style.css file is available as a separate artifact in this project. Simply download it and place it in the same directory as your markdown and HTML files.

## Method 2: Using Visual Studio Code

If you already use VS Code, this is a convenient option.

### Installation:

1. Download and install [Visual Studio Code](https://code.visualstudio.com/)
2. Install the "Markdown All in One" extension:
   - Open VS Code
   - Click the Extensions icon on the sidebar (or press Ctrl+Shift+X)
   - Search for "Markdown All in One"
   - Click Install

### Rendering:

1. Open your markdown file in VS Code
2. Press Ctrl+Shift+P (Cmd+Shift+P on macOS) to open the command palette
3. Type "Markdown: Export to HTML" and press Enter
4. The HTML file will be created in the same directory

### Preview Without Exporting:

1. Open your markdown file in VS Code
2. Press Ctrl+Shift+V (Cmd+Shift+V on macOS) or click the preview icon (split screen icon in upper right)
3. A live preview will appear in a split window

## Method 3: Using Online Converters

For quick conversions without installing anything:

1. Visit one of these websites:
   - [Dillinger.io](https://dillinger.io/)
   - [StackEdit](https://stackedit.io/)
   - [HackMD](https://hackmd.io/)
2. Paste your markdown content
3. Most of these services show a live preview and allow exporting to HTML

## Method 4: Using Node.js and marked

If you're comfortable with Node.js:

1. Install Node.js from [nodejs.org](https://nodejs.org/)
2. Open a terminal/command prompt and install marked:
   ```bash
   npm install -g marked
   ```
3. Convert your file:
   ```bash
   marked -i lower_leg_circulation_report.md -o lower_leg_circulation_report.html
   ```

## Method 5: Using Python and markdown2

If you prefer Python:

1. Ensure Python is installed
2. Install markdown2:
   ```bash
   pip install markdown2
   ```
3. Convert your file:
   ```bash
   python -m markdown2 lower_leg_circulation_report.md > lower_leg_circulation_report.html
   ```

## Opening the HTML File

After conversion, simply double-click the HTML file to open it in your default web browser. If you want to print it or save as PDF:

1. Open the HTML file in your browser
2. Press Ctrl+P (Cmd+P on macOS) to open the print dialog
3. Select "Save as PDF" as the printer (or use the browser's "Save as PDF" option)
4. Configure margins and other settings as desired
5. Click Save/Print

## Script for Batch Conversion

If you have multiple markdown files to convert, here's a simple bash script:

```bash
#!/bin/bash
# Save as convert_md_to_html.sh and make executable with: chmod +x convert_md_to_html.sh

for file in *.md; do
    filename=$(basename -- "$file")
    name="${filename%.*}"
    echo "Converting $file to $name.html"
    pandoc "$file" -o "$name.html" --standalone --css=style.css
done
```

Run it with:
```bash
./convert_md_to_html.sh
```

## Troubleshooting

- **Command not found errors**: Make sure the tool is installed and added to your PATH
- **Styling issues**: Check your CSS file for errors or use the `--standalone` option with pandoc
- **Conversion errors**: Ensure your markdown syntax is correct
- **Special characters not rendering**: Make sure you're using UTF-8 encoding

For more advanced options and features, refer to the documentation of the specific tool you're using.