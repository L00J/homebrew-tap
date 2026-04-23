# OpsXCLI Formula for Homebrew
#
# Install:
#   brew tap L00j/tap
#   brew install opsxcli
#
# Update: When a new version is released on GitHub, this formula should be updated
# with the new tag, revision, and sha256. GoReleaser can automate this via the
# .goreleaser.yml brews config.

class Opsxcli < Formula
  desc "OpsXCLI - DevOps CLI toolkit with 70+ commands, AI agent, TUI dashboard"
  homepage "https://gitee.com/opsx-tools/opsxcli"
  url "https://gitee.com/opsx-tools/opsxcli/repository/archive/v1.0.6.tar.gz"
  sha256 "345647d2b7691452d4916122da806890ea18f3df8e0ffeb9063992a96f3ff842"
  version "1.0.6"
  license "MIT"

  # Optional: build from HEAD
  head "https://gitee.com/opsx-tools/opsxcli.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.gitCommit=#{Utils.git_head}
      -X main.buildTime=#{Time.now.utc.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    output = shell_output("#{bin}/opsxcli version")
    # Version output contains version number
    assert_match(/1\.0\.6/, output)
  end
end
