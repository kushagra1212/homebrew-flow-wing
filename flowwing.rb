class Flowwing < Formula
  desc "A Programming language that uniquely combines dynamic and static typing paradigms"
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha/FlowWing-0.0.1-alpha.tar.gz"
  sha256 "c5f7d7d3b7e4489cadb44844aaa0e97809497ddbd134658ab61771355f65d226"
  license "FlowWing"

  def install
    bin.install "bin/FlowWing"
    (lib/"FlowWing").install "lib/libbuilt_in_module.a"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
