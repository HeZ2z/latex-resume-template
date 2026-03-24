# LaTeX Resume Template

一个面向中文场景的 LaTeX 简历模板仓库，采用更接近开源项目的组织方式：主文件负责内容，类文件负责样式，构建入口统一交给 `latexmk` 和 `make`。

模板默认使用 XeLaTeX 编译，适合在保留匿名示例的前提下，复制出自己的简历文件再继续定制。

## 快速开始

项目默认入口是 `resume.tex`。在仓库根目录执行：

```bash
make build
```

编译完成后，PDF 会输出到 `build/resume.pdf`。

如果你想保留匿名模板，推荐先复制一份再填写真实信息：

```bash
cp resume.tex your-resume.tex
latexmk -xelatex your-resume.tex
```

## 使用要求

- 本地需要安装 TeX Live 或 MacTeX，并确保 `latexmk` 与 `xelatex` 可用。
- 默认字体优先使用 TeX Live 自带字体，减少对本机私有字体的依赖，更适合公开仓库和跨机器构建。

## 项目结构

- `resume.tex`：主模板入口，主要维护简历内容和版块顺序。
- `resume.cls`：类文件，负责页面布局、标题样式和可复用命令。
- `.latexmkrc`：统一 XeLaTeX 构建配置，并将编译产物输出到 `build/`。
- `Makefile`：封装常用构建、预览和清理命令。
- `.gitignore`：忽略 LaTeX 辅助文件和构建目录。

## 常用命令

```bash
make build      # 编译 PDF
make preview    # 监听文件变化并自动重编译
make clean      # 清理辅助文件，保留 PDF
make distclean  # 清理全部构建产物
```

## 模板约定

- `resume.tex` 只负责内容编排，尽量避免把样式细节直接堆在主文件里。
- `resume.cls` 提供 `\ResumeName`、`\ResumeSubtitle`、`\ResumeContacts`、`\ResumeEntry` 等命令，便于复用和扩展。
- 新增版块或调整视觉样式时，优先修改类文件；填写内容时，优先修改主模板。

## License

This project is licensed under the MIT License. See [LICENSE](/Users/hezzz/Codes/resume/resume-templates/latex-resume/LICENSE) for details.
