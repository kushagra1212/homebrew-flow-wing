class Flowwing < Formula
  desc "A Programming language that uniquely combines dynamic and static typing paradigms"
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha/FlowWing-0.0.1-alpha.tar.gz"
  sha256 "369c643ae40ed05e7848cf738743fd3bc1626fe1faaeff246cadf4fabad9c726"
  license "FlowWing"

  def install
    bin.install "bin/FlowWing"
    (lib/"FlowWing").install "lib/libbuilt_in_module.a"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
