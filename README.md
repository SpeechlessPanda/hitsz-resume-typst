<h1 align="center">hitsz-resume-typst</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Typst-239DAD?style=for-the-badge&logo=typst&logoColor=white" alt="Typst" />
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge" alt="MIT License" />
</p>

## 说明

哈工深中文简历模板的 Typst 移植版。原版为 LaTeX 模板 [IceFerryLing/resume](https://github.com/IceFerryLing/resume)（hitsz-cv-chinese）。仓库中的 `main.typ` 是可公开提交的模板文件，不包含个人信息；个人简历内容请放在本地文件 `main.local.typ` 中。

## 文件结构

- `main.typ`：公开模板文件，使用占位内容。
- `main.local.typ`：本地个人简历文件，已加入 `.gitignore`，不会提交到仓库。
- `settings.typ`：版式、字体、颜色和组件定义。
- `images/`：页眉、页脚、校徽、水印等图片资源。
- `fonts/`：狮尾四季春（加糖）简体字体与 Font Awesome 7 图标字体，编译时按目录加载，无需安装到系统。
- `buildpdf.ps1`：PowerShell 编译脚本。

## 使用说明

1. 克隆本仓库：

   ```bash
   git clone https://github.com/SpeechlessPanda/hitsz-resume-typst.git
   ```

   没有 Git 的同学可以直接下载 zip 文件，解压后使用。

2. 安装 Typst：

   ```powershell
   winget install Typst.Typst
   ```

3. 创建本地个人版本：

   ```powershell
   Copy-Item main.typ main.local.typ
   ```

   然后在 `main.local.typ` 中填写个人信息、教育背景、项目经历、竞赛经历、技能和荣誉。若需要个人照片，可以替换或引用 `images/avatar.png`。

4. 编译简历：

   ```powershell
   .\buildpdf.ps1
   ```

   编译本地个人版本：

   ```powershell
   .\buildpdf.ps1 -Source main.local.typ
   ```

   也可以直接调用：

   ```powershell
   typst compile main.typ --font-path fonts
   ```

   首次编译会从 typst packages 仓库下载 `@preview/fontawesome` 包（需要联网，之后有本地缓存）。

5. 查看结果：

   - 生成的 PDF 文件为 `main.pdf`（或 `main.local.pdf`）。

## 隐私说明

请不要把真实姓名、手机号、邮箱、照片、成绩排名等个人信息写入 `main.typ`。需要保存个人内容时，只修改 `main.local.typ`。

## 致谢

本仓库是 [IceFerryLing/resume](https://github.com/IceFerryLing/resume)（hitsz-cv-chinese，哈工深中文简历 LaTeX 模板）的 Typst 移植，感谢原作者 [IceFerryLing](https://github.com/IceFerryLing)。

原模板基于[西北工业大学中文 CV 模板](https://www.overleaf.com/latex/templates/npu-cv/mncqzxhvfzrx)和[北京邮电大学 BUPT 简历模板](https://github.com/Yokumii/BUPT-CV-Template)进行调整，感谢两个模板的作者。

## License

[MIT](LICENSE)。
