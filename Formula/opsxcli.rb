class Opsxcli < Formula
  desc "OpsXCLI - DevOps CLI toolkit with 70+ commands, AI agent, TUI dashboard"
  homepage "https://gitee.com/opsx-tools/opsxcli"
  version "0.9.0"
  license "MIT"

  on_arm do
    url "https://github.com/L00J/opsxcli/releases/download/v0.9.0/opsxcli_0.9.0_Darwin_arm64.tar.gz"
    sha256 "4e548bb31c6d37cd7af31ed0105bc62156ce783d77d4c758703e64d8704add42"
  end

  on_intel do
    url "https://github.com/L00J/opsxcli/releases/download/v0.9.0/opsxcli_0.9.0_Darwin_x86_64.tar.gz"
    sha256 "d3923cfa709f25fd0e8f720c16ea6d99755efc4593a41c170df057a0947ead1a"
  end

  def install
    bin.install "opsxcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opsxcli --version")
  end

  def caveats
    <<~EOS
      OpsXCLI installed! Quick start:
        opsxcli              # Launch AI DevOps assistant
        opsxcli mysql        # MySQL client
        opsxcli redis        # Redis client
        opsxcli ssh          # SSH management
        opsxcli sys          # System monitoring TUI
        opsxcli --help       # Show all commands
    EOS
  end
end
