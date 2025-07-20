# Instructions for Converting Markdown to HTML with Custom Styling

Follow these steps to convert the Tesla Guide markdown document into a styled HTML page that resembles the Claude interface:

## Method 1: Using Pandoc (Command Line)

[Pandoc](https://pandoc.org/) is a powerful document converter that can transform markdown to HTML with custom CSS.

1. **Install Pandoc** from https://pandoc.org/installing.html

2. **Save both files** to the same directory:
   - `Tesla Vehicle Acquisition Guide.md` (the markdown document)
   - `tesla-guide-styles.css` (the CSS file)

3. **Open a terminal/command prompt** and navigate to the directory with the files

4. **Run the following command** to convert markdown to HTML with the custom CSS:

```bash
pandoc "Tesla Vehicle Acquisition Guide.md" -o "Tesla Guide.html" --standalone --css=tesla-guide-styles.css
```

5. **Open the resulting HTML file** in your web browser

## Method 2: Using Visual Studio Code

1. **Install Visual Studio Code** from https://code.visualstudio.com/

2. **Install the Markdown All in One extension**:
   - Open VS Code
   - Click on Extensions icon in the sidebar
   - Search for "Markdown All in One"
   - Click Install

3. **Open the markdown file** in VS Code

4. **Preview with keyboard shortcut**:
   - Windows/Linux: Ctrl+Shift+V
   - Mac: Cmd+Shift+V

5. **Export to HTML**:
   - Press F1 to open the command palette
   - Type "Markdown: Export" and select "Markdown: Export (html)"
   - This creates an HTML file in the same directory

6. **Add CSS to the exported HTML file**:
   - Open the exported HTML file in VS Code
   - Add this line in the `<head>` section:
   ```html
   <link rel="stylesheet" href="tesla-guide-styles.css">
   ```
   - Save the HTML file and open it in a browser

## Method 3: Using Online Converters

1. **Use an online Markdown to HTML converter**:
   - Go to https://markdowntohtml.com/ or similar site
   - Paste the contents of the markdown file
   - Convert to HTML
   - Download the HTML file

2. **Add the CSS to the HTML file**:
   - Open the HTML file in a text editor
   - Add this line inside the `<head>` section:
   ```html
   <link rel="stylesheet" href="tesla-guide-styles.css">
   ```
   - Save both the HTML and CSS files in the same directory
   - Open the HTML file in a browser

## Method 4: Direct HTML Template

If the above methods don't work for you, here's a simple HTML template you can use:

1. Create a new file named `Tesla Guide.html`
2. Copy and paste this template:

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tesla Vehicle Acquisition Guide</title>
    <link rel="stylesheet" href="tesla-guide-styles.css">
</head>
<body>
    <!-- Paste the contents of the converted HTML here -->
    <!-- Or use an online converter to get the HTML content only -->
</body>
</html>
```

3. Replace the comment in the `<body>` section with the HTML-converted content of your markdown file
4. Save the file in the same directory as the CSS file
5. Open the HTML file in a browser

## Note on Embedding CSS

If you want a single, self-contained HTML file (without needing the separate CSS file), you can embed the CSS directly:

1. Open the HTML file in a text editor
2. Replace the `<link>` tag with:
```html
<style>
    /* Copy the entire contents of the CSS file here */
</style>
```
3. Copy all the CSS content between the `<style>` tags
4. Save the file and open it in a browser
