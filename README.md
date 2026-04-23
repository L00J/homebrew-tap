# L00J Homebrew Tap

Homebrew tap for [OpsXCLI](https://gitee.com/opsx-tools/opsxcli) — 面向运维的集成化命令行工具集。

## Install

```bash
brew tap L00J/tap
brew install opsxcli
```

## What is OpsXCLI?

OpsXCLI 是一个纯 Go 实现的运维 CLI 工具，整合了 **70+ 运维命令**，涵盖：

- 🗄️ **数据库**: MySQL, PostgreSQL, Redis 客户端
- 🖥️ **远程管理**: SSH, Telnet, NC
- 🌐 **网络工具**: Ping, Traceroute, Netstat, Nmap, Curl, Wget
- 📊 **系统监控**: CPU, 内存, 磁盘, 进程 TUI 面板
- 🐳 **容器管理**: Docker 完整生命周期
- 🔔 **告警通知**: 规则引擎 + 多渠道通知
- 🤖 **AI Agent**: 内置 AI 运维助手，支持自进化

## Quick Start

```bash
opsxcli              # 启动 AI 运维助手
opsxcli mysql        # MySQL 客户端
opsxcli redis        # Redis 客户端
opsxcli ssh          # SSH 管理
opsxcli sys          # 系统监控 TUI
opsxcli docker       # Docker 管理
opsxcli --help       # 查看所有命令
```

## Documentation

- 📖 [Documentation](https://gitee.com/opsx-tools/opsxcli)
- 🗺️ [Roadmap](https://gitee.com/opsx-tools/opsxcli/blob/master/ROADMAP.md)

## How This Tap Works

This tap provides a Homebrew formula that builds OpsXCLI from source. When a new
GitHub Release is published, the formula is automatically updated by GoReleaser
to use pre-built binaries (faster installation).

## License

MIT
