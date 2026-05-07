The default prefix key is `Ctrl+b`; this config remaps it to `Ctrl+s`, and it is written as `<prefix>` below.

---

# Custom Keybindings

| Keybinding | Action |
|------------|--------|
| `<prefix> C-s` | FZF pane switch across sessions |
| `<prefix> <` | Swap with previous window |
| `<prefix> >` | Swap with next window |
| `<prefix> S` | Save session (tmux-resurrect) |
| `<prefix> k` | Clear current pane screen and history |
| `<prefix> Q` | Kill the tmux server |

---

# tmux Default Keybindings

## Session

| Keybinding | Action |
|------------|--------|
| `<prefix> $` | Rename current session |
| `<prefix> d` | Detach from current session |
| `<prefix> s` | List all sessions (interactive) |
| `<prefix> D` | List all clients and choose one |
| `<prefix> (` | Switch to previous session |
| `<prefix> )` | Switch to next session |
| `<prefix> L` | Switch to last (most recently used) session |

---

## Window

| Keybinding | Action |
|------------|--------|
| `<prefix> c` | Create a new window |
| `<prefix> &` | Kill current window (with confirmation) |
| `<prefix> ,` | Rename current window |
| `<prefix> w` | List all windows (interactive) |
| `<prefix> n` | Switch to next window |
| `<prefix> p` | Switch to previous window |
| `<prefix> l` | Switch to last (most recently used) window |
| `<prefix> M-n` | Switch to next window with activity |
| `<prefix> M-p` | Switch to previous window with activity |
| `<prefix> 0~9` | Switch to window by index |
| `<prefix> '` | Prompt for window index to switch to |
| `<prefix> f` | Search windows by name |
| `<prefix> .` | Move window (change its index) |
| `<prefix> C-o` | Rotate panes forward in current window |
| `<prefix> M-o` | Rotate panes backward in current window |

---

## Pane

### Splitting

| Keybinding | Action |
|------------|--------|
| `<prefix> %` | Split pane vertically (left/right) |
| `<prefix> "` | Split pane horizontally (top/bottom) |

### Navigation

| Keybinding | Action |
|------------|--------|
| `<prefix> ←↑→↓` | Move to pane in the given direction |
| `<prefix> o` | Cycle to the next pane |
| `<prefix> ;` | Switch to the last (most recently used) pane |
| `<prefix> q` | Show pane numbers; type a number to jump to it |
| `<prefix> m` | Mark/unmark current pane (for swap ops) |

### Resizing

| Keybinding | Action |
|------------|--------|
| `<prefix> Ctrl+←↑→↓` | Resize pane in the given direction (1 cell) |
| `<prefix> Alt+←↑→↓` | Resize pane in the given direction (5 cells) |
| `<prefix> z` | Toggle zoom (maximize/restore) for current pane |

### Layout

| Keybinding | Action |
|------------|--------|
| `<prefix> Space` | Cycle through preset layouts (even-horizontal, even-vertical, main-horizontal, main-vertical, tiled) |
| `<prefix> {` | Swap current pane with the previous one |
| `<prefix> }` | Swap current pane with the next one |
| `<prefix> !` | Break current pane out into a new window |
| `<prefix> E` | Spread panes evenly in current layout |
| `<prefix> Alt+1~7` | Switch directly to a preset layout |

### Closing

| Keybinding | Action |
|------------|--------|
| `<prefix> x` | Kill current pane (with confirmation) |

---

## Copy Mode

| Keybinding | Action |
|------------|--------|
| `<prefix> [` | Enter copy mode |
| `<prefix> ]` | Paste from the most recent copy buffer |
| `<prefix> =` | List all copy buffers and paste from selected |
| `<prefix> #` | List all copy buffers |
| `<prefix> -` | Delete the most recent copy buffer |
| `<prefix> PgUp` | Enter copy mode and scroll up one page |

**Inside copy mode — vi style (requires `set -g mode-keys vi`):**

| Key | Action |
|-----|--------|
| `hjkl` / `←↑→↓` | Move cursor |
| `v` | Begin selection |
| `y` | Copy selection and exit |
| `q` / `Esc` | Exit copy mode |
| `/` | Search forward |
| `?` | Search backward |
| `n` / `N` | Next / previous search match |
| `Ctrl+f/b` | Page down / page up |
| `g` | Jump to top |
| `G` | Jump to bottom |

**Inside copy mode — emacs style (default):**

| Key | Action |
|-----|--------|
| `Ctrl+Space` | Begin selection |
| `Alt+w` | Copy selection |
| `q` / `Esc` | Exit copy mode |
| `Ctrl+s` | Search forward |
| `Ctrl+r` | Search backward |

---

## Command & Misc

| Keybinding | Action |
|------------|--------|
| `<prefix> :` | Open command prompt |
| `<prefix> ?` | List all keybindings |
| `<prefix> /` | Press a key to inspect its binding |
| `<prefix> t` | Show clock |
| `<prefix> i` | Show info about current window |
| `<prefix> ~` | Show tmux message log |
| `<prefix> r` | Refresh the client (redraw) |
| `<prefix> C-b` | Send prefix key to application (default prefix is `Ctrl+b`) |
| `<prefix> C-z` | Suspend tmux client |
| `<prefix> C` | Enter customize mode (`customize-mode`) |
| `<prefix> M` | Enter mouse-resize mode (`select-pane -M`) |
| `<prefix> DC` | Clear and refresh client display |
| `<prefix> Shift+←↑→↓` | Pan client view by 10 lines/columns |

> Note: in the current tmux default key table, `<prefix> Ctrl+l` is not a default binding.

---

## Mouse (requires `set -g mouse on`)

| Action | Effect |
|--------|--------|
| Click a pane | Focus that pane |
| Click a window tab | Switch to that window |
| Drag a pane border | Resize the pane |
| Scroll wheel | Enter copy mode and scroll history |
| Right-click | Open context menu |

---

> Reference: tmux default prefix table (`tmux -f /dev/null list-keys -T prefix`)
> List all current bindings: `tmux list-keys` or `<prefix> ?`  
> Example of changing the prefix: `set -g prefix C-a`
