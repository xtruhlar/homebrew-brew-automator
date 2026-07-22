class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
