#!/bin/bash

# Kiro Steering Rules 一键安装脚本
# 直接通过 HTTP 下载规则文件到目标目录，无需 git
#
# 用法:
#   curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash
#   curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash -s -- global
#   curl -fsSL https://raw.githubusercontent.com/yangzq007/steering/main/install.sh | bash -s -- /path/to/project

set -e

# ========== 配置 ==========
# GitHub raw 文件基础 URL
BASE_URL="https://raw.githubusercontent.com/yangzq007/steering/main"

RULES_FILES=(guide-language.md guide-mock.md guide-vue2.md guide-check.md guide-summary.md guide-init.md)

# 颜色输出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# 1. 确定安装目标
case "${1:-}" in
    global)
        TARGET_DIR="$HOME/.kiro/steering"
        ;;
    "")
        TARGET_DIR="$(pwd)/.kiro/steering"
        ;;
    *)
        if [ -d "$1" ] || [ ! -e "$1" ]; then
            TARGET_DIR="$1/.kiro/steering"
        else
            echo -e "${RED}错误: '$1' 不是有效的目录路径${NC}"
            exit 1
        fi
        ;;
esac

# 2. 用户确认
echo ""
echo "📦 将安装到: $TARGET_DIR"
echo ""
echo -e "${YELLOW}⚠️  目标目录中与本项目同名的文件将被直接覆盖，如有修改请提前备份。${NC}"
echo ""
read -p "是否继续安装？(y/N) " confirm < /dev/tty
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo ""
    echo "已取消安装。"
    exit 0
fi
echo ""

# 3. 创建目标目录（如不存在则递归创建）
mkdir -p "$TARGET_DIR"

# 4. 逐个下载规则文件到目标目录
for file in "${RULES_FILES[@]}"; do
    dst="$TARGET_DIR/$file"

    if curl -fsSL "$BASE_URL/$file" -o "$dst" 2>/dev/null; then
        echo -e "  ${GREEN}✅ $file${NC}"
    else
        echo -e "  ${RED}❌ $file${NC}"
    fi
done

echo ""
echo "✅ 安装完成: $TARGET_DIR"
