class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "0c3b06837b0c8560729b86806b81579489ea3b7db33cad854ca0a92761e78f34"
  license "MIT"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/brew-automator"
  end

  test do
    system bin/"brew-automator", "--help"
  end
end
