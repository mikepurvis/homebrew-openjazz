require "formula"

class Openjazz < Formula
  homepage "http://www.alister.eu/jazz/oj/"
  head "https://github.com/mikepurvis/openjazz.git"

  depends_on "pkg-config" => :build
  depends_on "sdl"
  depends_on "libmodplug"

  def install
    system "make", "CXXFLAGS=-DDATAPATH=\"\\\"/usr/local/share/\\\"\""

    bin.install "OpenJazz"
    share.install "openjazz.000"
  end
end
