class Ipv6utils < Formula
  desc "A toolset for IPv6 utilities"
  homepage "https://github.com/buraglio/ipv6utils"
  url "https://github.com/buraglio/ipv6utils/archive/refs/tags/v5.tar.gz"
  sha256 "2954dcf910dddfd1271d1438c8100f4115fb9a067cd1088f4829c3405a58644b"
  version "5"
  depends_on "go"  #  Ensures Go is installed to build the project

  def install
    # Build the Go project
    system "go", "build", "-o", bin/"ipv6utils"

   
  end

  test do
    # A simple test to verify the install
    system "#{bin}/ipv6utils", "-h"
  end
end
