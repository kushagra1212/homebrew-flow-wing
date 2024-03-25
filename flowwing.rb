class Flowwing < Formula
  desc "A Programming language that uniquely combines dynamic and static typing paradigms"
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha/FlowWing-0.0.1-alpha.tar.gz"
  sha256 "0f736ff2d61691f035a9d35f33dd971b15fd8748d473ddaef8f4381682eafa96"
  license "FlowWing"

  def install
    bin.install "bin/FlowWing"
    (lib/"FlowWing").install "lib/libbuilt_in_module.a"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
