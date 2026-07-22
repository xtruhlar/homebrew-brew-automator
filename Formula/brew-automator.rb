class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "a68a60849c455e8b8c9bb984a591e6ba902aeb41dccb67b8d55ac943f6e9de63"
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
