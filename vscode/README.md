## Usage

### Option 1: Workspace Configuration

1. Copy the theme file into your project directory (e.g. `.vscode/`)
2. Add the following to `.vscode/settings.json`:

```json
{
  "markdown.styles": [".vscode/xxxxxx.css"]
}
```

### Option 2: Global Configuration

1. Place the theme file in a fixed path, e.g. `~/.config/vscode/styles/`
2. Open VS Code Settings (`Cmd+,` / `Ctrl+,`), search for `markdown.styles`
3. Add the absolute path:

```json
{
  "markdown.styles": ["/Users/your-username/.config/vscode/styles/xxxxxx.css"]
}
```

### Option 3: Via HTTPS URL

If the theme file is hosted at a publicly accessible HTTPS address, you can reference the URL directly:

```json
{
  "markdown.styles": ["https://example.com/path/to/xxxxxx.css"]
}
```

Once configured, open any `.md` file and press `Cmd+Shift+V` (macOS) or `Ctrl+Shift+V` (Windows/Linux) to open the preview.

## Customizing Fonts

- Body font: Prepend your preferred font name to the `font-family` property in the `body` rule
- Code font: Modify the `--monospace` variable in `:root`
