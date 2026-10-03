class Mu < Formula
  desc "memoratu command-line client — todos from the terminal, for humans and AI agents"
  homepage "https://github.com/subbutgs/memoratu-releases"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/subbutgs/memoratu-releases/releases/download/v0.1.0/mu-darwin-arm64.tar.gz"
      sha256 "3dd82bc6d829b98cb29a881743b7c0653c939f96c6f986bcb28912c0155b0431"
    end
    on_intel do
      url "https://github.com/subbutgs/memoratu-releases/releases/download/v0.1.0/mu-darwin-amd64.tar.gz"
      sha256 "f529766a912d25b2784186be9ca5dcbf36726d03cd7d383a0d984c5ac692d330"
    end
  end

  def install
    bin.install "mu"
  end

  test do
    system "#{bin}/mu", "--version"
  end
end
