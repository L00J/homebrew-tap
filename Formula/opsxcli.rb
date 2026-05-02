class Opsxcli < Formula
  desc "OpsXCLI - DevOps CLI toolkit with 70+ commands, AI agent, TUI dashboard"
  homepage "https://gitee.com/opsx-tools/opsxcli"
  url "https://github.com/L00J/opsxcli/releases/download/v0.9.0/opsxcli_0.9.0_Darwin_arm64.tar.gz"
  sha256 "4e548bb31c6d37cd7af31ed0105bc62156ce783d77d4c758703e64d8704add42"
  version "0.9.0"
  license "MIT"

  # Support both Intel and Apple Silicon Macs
  on_intel do
    url "https://github.com/L00J/opsxcli/releases/download/v0.9.0/opsxcli_0.9.0_Darwin_x86_64.tar.gz"
    sha256 "ac2fecb9c26b5474413d81b0cd7970b8a491f652c8a2879787906c2a837ea016"
  end

  def install
    bin.install "opsxcli_darwin_arm64" => "opsxcli" if Hardware::CPU.arm?
    bin.install "opsxcli_darwin_x86_64" => "opsxcli" if Hardware::CPU.intel?
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
