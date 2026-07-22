class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "482783b495cd335d3c0a02884c6104f3af495900885381dc3bd1fe8734d20df2"
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
