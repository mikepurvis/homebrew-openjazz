require "formula"

class OpenJazz < Formula
  homepage "http://www.alister.eu/jazz/oj/"
  url "https://github.com/mikepurvis/openjazz/archive/master.tar.gz"

  depends_on "pkg-config" => :build
  depends_on "sdl"
  depends_on "libmodplug"
  
  def install
    system "make", "install"
  end
end
