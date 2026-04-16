class Agentbox < Formula
  desc "Run AI coding agents in isolated Apple Containers"
  homepage "https://github.com/Rag0n/agentbox"
  url "https://github.com/Rag0n/agentbox/releases/download/v0.2.0/agentbox-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "b407c2400f1bcd971a447dc530be86f4bd96527d5e34b916ea434ac64031ccfe"
  license "GPL-3.0-only"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentbox"
  end

  def caveats
    <<~EOS
      agentbox requires macOS 26 (Tahoe) or later and the Apple Container
      CLI, which is not available via Homebrew. Install it from:
        https://github.com/apple/container/releases
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentbox --version")
  end
end
