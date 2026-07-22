class BrewAutomator < Formula
  desc "Homebrew maintenance automation with SMTP email reports"
  homepage "https://github.com/xtruhlar/brew-automator"
  url "https://github.com/xtruhlar/brew-automator/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "b2c8eee54d60391943219472e33cf8bce43a9ddb6acee54790b406f8019eedcc"
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
