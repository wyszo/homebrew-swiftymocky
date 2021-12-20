# For future maintainers:
#
# A fantastic tutorial on creating and updating a formulae in a tap:
#   https://betterprogramming.pub/a-step-by-step-guide-to-create-homebrew-taps-from-github-repos-f33d3755ba74
# 
# Official Documentation: 
#   https://docs.brew.sh/Formula-Cookbook
#   https://rubydoc.brew.sh/Formula

class Swiftymocky < Formula
  desc "Framework for automatic mock generation. Adds a set of handy methods, simplifying testing. One of the best and most complete solutions, including generics support and much more."
  homepage "https://github.com/MakeAWishFoundation/SwiftyMocky"
  url "https://github.com/MakeAWishFoundation/SwiftyMocky/archive/refs/tags/4.1.0.tar.gz"
  sha256 "729a95f6ed232ca1f660b6e549649dd1e6b9b4960583434e5de64232b1e1a3e3"
  license "MIT"

  depends_on "sourcery"

  def install
    bin.install 'bin/swiftymocky'
    prefix.install 'README.md'
    prefix.install 'LICENSE'
  end
end
