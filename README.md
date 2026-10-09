[![⬇ 一键下载完整版](https://img.shields.io/badge/%E2%AC%87_%E4%B8%80%E9%94%AE%E4%B8%8B%E8%BD%BD-%E5%AE%8C%E6%95%B4%E7%89%88-2ea44f?style=for-the-badge)](https://github.com/Yongming06/yomi-release/releases/latest/download/yomi-full-win64.zip)

> 👆 **点上面这个绿色按钮 = 直接下载最新版完整包**（约 1.6 GB，免安装，解压双击 `YomiNoname.exe` 即玩）
>
> 也可以去 [Releases 页面](https://github.com/Yongming06/yomi-release/releases/latest) 自己挑（那里还有「更新包」等文件）

---

# 无名杀 · yomi 自制版

> 本仓库用于**发布与更新**：同学在这里下载游戏、下载更新；源码改动以补丁形式附在 `source/`。

## 🎮 同学：怎么开始

1. 打开本仓库右侧 **Releases** → 下载最新版 `yomi-full-*.zip`（约 1.2 GB，只需下载一次）
2. 解压到**任意目录**（免安装）→ 双击 **`YomiNoname.exe`** 开始游戏
3. 以后想更新：双击游戏目录里的 **`更新.cmd`** —— 它会自动下载最新更新包并覆盖（通常只有几十 MB）✓

## 🔄 更新是怎么做到「小」的

- 更新包固定命名为 `yomi-update.zip`，其**永久地址**是：
  `https://github.com/Yongming06/yomi-release/releases/latest/download/yomi-update.zip`
- 打包时按 **文件内容哈希** 与上一版比对，**只打包变化过的文件** → 所以更新包通常只有几十 MB ✓
- `更新.cmd` 只做三件事：下载 → 解压覆盖 → 按清单删除已移除的文件 ✓

## 📜 源码（GPL 3.0）

本程序基于《无名杀》（<https://github.com/libnoname/noname>，GPL 3.0）修改而来，
**禁止商用**。我们对本体与自制内容（自制卡牌包 / 三个武将包 / 界面与脚本改动）的**全部改动**
以补丁形式提供在 [`source/patches/`](source/patches/)：

- 上游基底提交：`7fcf23ed54d8`
- 用补丁重建本项目的方法：见 [`source/HOW-TO-BUILD.md`](source/HOW-TO-BUILD.md)

## 📦 版本号规则

`0.x.y`（测试版）/ `1.x.y`（正式版）；第二位=大版本，第三位=小更新；`-AlphaNN` 表示内部测试版。
