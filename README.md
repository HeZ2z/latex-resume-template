# LaTeX Resume Template

这个仓库提供一套基于 XeLaTeX 的匿名简历模板，适合在本地复制后填写真实内容。

## 目录结构

- `resume-template.tex`：匿名内容模板。
- `resume.cls`：兼容类文件，封装基础排版样式。
- `.gitignore`：本地构建产物忽略规则。

## 使用方式

建议先复制匿名模板，再在本地填写真实信息：

```bash
cp resume-template.tex your-resume.tex
latexmk -pdf -xelatex -interaction=nonstopmode your-resume.tex
```

## 字体说明

- 模板默认优先使用 `Helvetica Neue` 和 `Fandol` 中文字体。
- 如果本地字体环境不同，可以按需调整 `resume-template.tex` 中的字体设置。

## 公开内容边界

- 仓库内默认只保留匿名模板和说明。
- 不建议把真实姓名、手机号、邮箱、学校、公司等个人信息直接提交到模板仓库。
