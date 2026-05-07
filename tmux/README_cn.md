前缀键默认是 `Ctrl+b`，本配置改为 `Ctrl+s`，下面简写为 `<prefix>`。

---

# 自定义快捷键

| 快捷键 | 功能 |
|--------|------|
| `<prefix> C-s` | fzf 跨 session 选择 pane |
| `<prefix> <` | 与上一个 window 交换位置 |
| `<prefix> >` | 与下一个 window 交换位置 |
| `<prefix> S` | 保存会话（tmux-resurrect） |
| `<prefix> k` | 清空当前面板显示与历史 |
| `<prefix> Q` | 结束 tmux 服务端 |

---

# tmux 默认快捷键

## Session

| 快捷键 | 功能 |
|--------|------|
| `<prefix> $` | 重命名当前 session |
| `<prefix> d` | 断开（detach）当前 session |
| `<prefix> s` | 列出所有 session，可交互切换 |
| `<prefix> D` | 列出所有 client 并选择切换 |
| `<prefix> (` | 切换到上一个 session |
| `<prefix> )` | 切换到下一个 session |
| `<prefix> L` | 切换到上次使用的 session |

---

## Window（窗口）

| 快捷键 | 功能 |
|--------|------|
| `<prefix> c` | 新建 window |
| `<prefix> &` | 关闭当前 window（需确认） |
| `<prefix> ,` | 重命名当前 window |
| `<prefix> w` | 列出所有 window，可交互切换 |
| `<prefix> n` | 切换到下一个 window |
| `<prefix> p` | 切换到上一个 window |
| `<prefix> l` | 切换到上次使用的 window |
| `<prefix> M-n` | 切换到下一个有活动标记的 window |
| `<prefix> M-p` | 切换到上一个有活动标记的 window |
| `<prefix> 0~9` | 切换到指定编号的 window |
| `<prefix> '` | 输入编号切换 window |
| `<prefix> f` | 按名称搜索 window |
| `<prefix> .` | 移动 window（修改编号） |
| `<prefix> C-o` | 轮转当前 window 内 pane 顺序 |
| `<prefix> M-o` | 反向轮转当前 window 内 pane 顺序 |

---

## Pane（面板）

### 分割

| 快捷键 | 功能 |
|--------|------|
| `<prefix> %` | 左右分割（竖向切割） |
| `<prefix> "` | 上下分割（横向切割） |

### 导航

| 快捷键 | 功能 |
|--------|------|
| `<prefix> ←↑→↓` | 切换到对应方向的 pane |
| `<prefix> o` | 按顺序切换到下一个 pane |
| `<prefix> ;` | 切换到上次使用的 pane |
| `<prefix> q` | 显示 pane 编号，输入编号跳转 |
| `<prefix> m` | 标记/取消标记当前 pane（用于交换） |

### 调整大小

| 快捷键 | 功能 |
|--------|------|
| `<prefix> Ctrl+←↑→↓` | 按方向调整 pane 大小（每次 1 格） |
| `<prefix> Alt+←↑→↓` | 按方向调整 pane 大小（每次 5 格） |
| `<prefix> z` | 最大化/还原当前 pane（zoom） |

### 布局

| 快捷键 | 功能 |
|--------|------|
| `<prefix> Space` | 循环切换预设布局（even-horizontal / even-vertical / main-horizontal / main-vertical / tiled） |
| `<prefix> {` | 当前 pane 与上一个交换位置 |
| `<prefix> }` | 当前 pane 与下一个交换位置 |
| `<prefix> !` | 把当前 pane 拆出为独立 window |
| `<prefix> E` | 均分当前布局 |
| `<prefix> Alt+1~7` | 直接切换到对应预设布局 |

### 关闭

| 快捷键 | 功能 |
|--------|------|
| `<prefix> x` | 关闭当前 pane（需确认） |

---

## 复制模式（Copy Mode）

| 快捷键 | 功能 |
|--------|------|
| `<prefix> [` | 进入复制模式 |
| `<prefix> ]` | 粘贴复制缓冲区内容 |
| `<prefix> =` | 列出所有复制缓冲区，选择后粘贴 |
| `<prefix> #` | 列出所有复制缓冲区 |
| `<prefix> -` | 删除最近的复制缓冲区 |
| `<prefix> PgUp` | 进入复制模式并向上翻页 |

**复制模式内（vi 风格，需 `set -g mode-keys vi`）：**

| 按键 | 功能 |
|------|------|
| `hjkl` / `←↑→↓` | 移动光标 |
| `v` | 开始选择 |
| `y` | 复制选中内容并退出 |
| `q` / `Esc` | 退出复制模式 |
| `/` | 向下搜索 |
| `?` | 向上搜索 |
| `n` / `N` | 下一个 / 上一个搜索结果 |
| `Ctrl+f/b` | 向下 / 向上翻页 |
| `g` | 跳到顶部 |
| `G` | 跳到底部 |

**复制模式内（emacs 风格，默认）：**

| 按键 | 功能 |
|------|------|
| `Ctrl+Space` | 开始选择 |
| `Alt+w` | 复制选中内容 |
| `q` / `Esc` | 退出复制模式 |
| `Ctrl+s` | 向下搜索 |
| `Ctrl+r` | 向上搜索 |

---

## 命令与其他

| 快捷键 | 功能 |
|--------|------|
| `<prefix> :` | 打开命令提示符 |
| `<prefix> ?` | 列出所有快捷键绑定 |
| `<prefix> /` | 输入一个按键，查看该按键绑定 |
| `<prefix> t` | 显示时钟 |
| `<prefix> i` | 显示当前 window 信息 |
| `<prefix> ~` | 显示 tmux 消息日志 |
| `<prefix> r` | 刷新客户端（重绘界面） |
| `<prefix> C-b` | 向当前程序发送前缀键（默认是 `Ctrl+b`） |
| `<prefix> C-z` | 挂起 tmux client |
| `<prefix> C` | 进入自定义模式（customize-mode） |
| `<prefix> M` | 进入鼠标拖拽调整模式（select-pane -M） |
| `<prefix> DC` | 清理并刷新客户端内容 |
| `<prefix> Shift+←↑→↓` | 平移客户端视图（每次 10 行/列） |

> 说明：在 tmux 当前官方默认绑定中，`<prefix> Ctrl+l` 并不是默认快捷键。

---

## 鼠标（需开启 `set -g mouse on`）

| 操作 | 功能 |
|------|------|
| 点击 pane | 切换焦点到该 pane |
| 点击 window 标签 | 切换到该 window |
| 拖拽 pane 边框 | 调整 pane 大小 |
| 滚轮 | 进入复制模式并滚动历史 |
| 右键 | 弹出菜单 |

---

> 参考：tmux 官方默认绑定（`tmux -f /dev/null list-keys -T prefix`）
> 查看当前所有绑定：`tmux list-keys` 或 `<prefix> ?`
> 修改前缀键示例：`set -g prefix Ctrl+a`
