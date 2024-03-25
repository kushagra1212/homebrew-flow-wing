class Flowwing < Formula
  desc "A Programming language that uniquely combines dynamic and static typing paradigms"
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha/FlowWing-0.0.1-alpha.tar.gz"
  sha256 "08528a5d324f922d71440cc705d5ba48c44249dd8ef79bee6e20fa549879b06c"
  license "FlowWing"

  def install
    bin.install "bin/FlowWing"
    (lib/"FlowWing").install "lib/libbuilt_in_module.a"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
