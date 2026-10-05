class Mu < Formula
  desc "memoratu command-line client — todos from the terminal, for humans and AI agents"
  homepage "https://github.com/subbutgs/memoratu-releases"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/subbutgs/memoratu-releases/releases/download/v0.2.0/mu-darwin-arm64.tar.gz"
      sha256 "4b2a4008a0cccc0d6fb9e1850f10e7481b3e4873a9a26c02665c6f6cf6d665cb"
    end
    on_intel do
      url "https://github.com/subbutgs/memoratu-releases/releases/download/v0.2.0/mu-darwin-amd64.tar.gz"
      sha256 "993fac1516074f29c6fcec8ff421b03d3c1200bc7875012c3b64f089319e50c1"
    end
  end

  def install
    bin.install "mu"
  end

  test do
    system "#{bin}/mu", "--version"
  end
end
