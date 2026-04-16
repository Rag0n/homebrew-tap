class Agentbox < Formula
  desc "Run AI coding agents in isolated Apple Containers"
  homepage "https://github.com/Rag0n/agentbox"
  url "https://github.com/Rag0n/agentbox/releases/download/v0.1.0/agentbox-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "2143136231fff72c45419ea3f1ebf00076a91dfdaad741166d96f7b06a8b2893"
  license "GPL-3.0-only"

  depends_on :macos
  depends_on arch: :arm64

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
