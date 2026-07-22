class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "466b0225826f1dc7be32d0e0a5403cded97e6f5e3a27b6dcf36860f2e928fdf2"
  license "MIT"

  depends_on "python@3.12"
  depends_on "terminal-notifier"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/brew-automator"
  end

  test do
    system bin/"brew-automator", "--help"
  end
end
