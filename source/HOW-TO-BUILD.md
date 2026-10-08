# 从上游 + 补丁重建本项目

## 依赖
- Node.js ≥ 20 与 pnpm
- Git

## 步骤

```bash
# 1) 取上游（基底提交 7fcf23ed54d8）
git clone https://github.com/libnoname/noname.git yomi-noname
cd yomi-noname
git fetch --depth=1 origin 7fcf23ed54d8
git checkout -b main 7fcf23ed54d8

# 2) 重放我们的全部补丁
git am /path/to/source/patches/*.patch

# 3) 安装依赖并构建
pnpm install
pnpm build          # 产物在 dist/

# 4) 本地跑起来（静态服务）
pnpm serve          # 然后浏览器打开 http://127.0.0.1:8089
```

## 注意
- 我们改过 **2 个引擎文件**（详见补丁内容）：
  `apps/core/noname/game/index.js`（自制技能自动静默护栏）、
  `apps/core/noname/library/index.js`（取消「不无懈自己」自动跳过）
- **必须** `git config core.autocrlf false`，否则换行符会把补丁锚点弄乱。
