<div align="center">
  <img src="./public/image/Luminol_5.png" alt="Luminol Logo" width="300">

  # Luminol

  *专为生存和无政府服务器设计，提供优化、可配置的原版特性与区域化多线程能力*

  **Minecraft 26.2 · 基于 Folia / Paper fork**

  ![Created At](https://img.shields.io/github/created-at/LuminolMC/Luminol?style=for-the-badge&color=blue)
  [![License](https://img.shields.io/github/license/LuminolMC/Luminol?style=for-the-badge&color=green)](LICENSE.md)
  [![Issues](https://img.shields.io/github/issues/LuminolMC/Luminol?style=for-the-badge&color=orange)](https://github.com/LuminolMC/Luminol/issues)

  ![Commit Activity](https://img.shields.io/github/commit-activity/w/LuminolMC/Luminol?style=for-the-badge&color=purple)
  ![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/LuminolMC/Luminol?style=for-the-badge&color=yellow)
  ![GitHub all releases](https://img.shields.io/github/downloads/LuminolMC/Luminol/total?style=for-the-badge&color=red)

  ![Repo contributors](https://img.shields.io/github/contributors/LuminolMC/Luminol?style=for-the-badge&color=brightgreen)
  [![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/LuminolMC/Luminol)

  [English](./README_EN.md) | **中文**
</div>

---

## 项目简介

**Luminol** 是一个基于 [Folia](https://github.com/PaperMC/Folia) 的 Minecraft 服务端 fork，面向高负载的生存（Survival）与无政府（Anarchy）服务器。它在 Folia 区域化多线程架构之上，提供可配置的原版特性调整、性能优化、针对 Folia 的专项 Bug 修复，以及更丰富的插件 API。


### 上游链路

```
Vanilla（Mache 反编译） → Paper → Folia → Luminol
```

补丁以分层方式维护：对 Minecraft、Paper Server、Paper/Folia API 分别有独立补丁目录，由自研构建插件 **hyacinthusweight-patcher** 统一应用与重建。

## 核心特性

- 🧵 **区域化多线程** — 继承 Folia 的 Regionized Tick，多核并行处理区块与实体
- 🔧 **可配置的原版特性** — 通过 `luminol.yml` 灵活调整游戏机制
- 📊 **Tpsbar / 性能监控** — 实时查看服务器运行状态
- 🐛 **Folia 专项 Bug 修复** — 针对区域线程场景下的并发、跨区传送、实体调度等问题
- 💾 **多存档格式** — 支持 linear / b_linear（linear 重新实现）
- ⚡ **大量性能补丁** — 汇集 Kaiiju、Gale、Leaves(Lithium)、Pufferfish、Krypton、Moonrise 等项目的优化
- 🔌 **扩展 API** — 为插件开发者提供更多接口（持续开发中）

## 构建

需要 **JDK 21+**（建议使用较新的 JDK 21 LTS）。

### Windows（PowerShell）

```powershell
# 应用全部补丁
.\gradlew.bat applyAllPatches

# 编译
.\gradlew.bat :luminol-server:compileJava

# 构建可运行的 Paperclip JAR
.\gradlew.bat :luminol-server:createPaperclipJar
```

### Linux / macOS

```bash
chmod 755 ./scripts/setup_and_build.sh && ./scripts/setup_and_build.sh
```

构建产物位于：

```
luminol-server/build/libs/luminol-paperclip-xx.x.local-SNAPSHOT.jar
```

### 常用补丁任务

| 任务 | 作用 |
|---|---|
| `applyAllPatches` | 应用所有层补丁 |
| `rebuildMinecraftFeaturePatches` | 将工作仓库改动固化回 minecraft 特性补丁 |
| `rebuildPaperServerFeaturePatches` | 固化 paper-server 特性补丁 |
| `rebuildPaperApiPatches` | 固化 API 补丁 |
| `createPaperclipJar` | 打包 Paperclip |

## 运行

```bash
java -Xms2G -Xmx2G -jar luminol-paperclip-26.2.local-SNAPSHOT.jar nogui
```

首次启动 Paperclip 会自动下载并校验对应版本的原版服务端 jar。Folia/Luminol 为多线程架构，请确保插件已兼容 Folia 的线程模型。

## API 使用

```kotlin
repositories {
    maven { url = uri("https://repo.bacteriawa.com/repository/maven-public/") }
}

dependencies {
    compileOnly("me.earthme.luminol:luminol-api:26.2.+")
}
```


## 说明

- 本仓库中的 `dev/26.2-leaf-patch-test`、`dev/26.2-kitin-patch-test` 等分支为**临时性能补丁移植测试**（分别试验来自 Leaf、Kitin 的部分补丁），不属于 Luminol 主线功能，可能随时变更或废弃，请勿用于生产环境。
- 稳定发布版本请以官方 [Releases](https://github.com/glghappy/LuminolReborn/releases) 为准。

## 致谢

Luminol 站在众多优秀开源项目的肩膀上，特别感谢 PaperMC（Paper / Folia）、SpottedLeaf（Leafpile / Moonrise）以及 Kaiiju、Gale、Leaves、Pufferfish、Krypton 等项目的作者与贡献者。

## License

遵循上游各项目的开源协议，详见 [LICENSE.md](./LICENSE.md) 与 `licenses/` 目录。

---

## ⭐ Star History

> 如果这个项目对您有帮助，请不要忘记给我们一个 ⭐ Star！

<a href="https://star-history.com/#LuminolMC/Luminol&LuminolMC/LightingLuminol&LuminolMC/Lophine&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol%2CLuminolMC/Lophine&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol%2CLuminolMC/Lophine&type=Date" />
    <img alt="Star历史表" src="https://api.star-history.com/svg?repos=LuminolMC/Luminol%2CLuminolMC/LightingLuminol%2CLuminolMC/Lophine&type=Date" />
  </picture>
</a>
