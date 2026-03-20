# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-20T22:01:13.64043Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.8.1/schemacrawler-17.8.1-bin.zip"
  version "17.8.1"
  sha256 "0d7222a73000bb50b762fb5c49f6eb5ee3fba2007529968904ea15e78e469a0c"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.8.1", output
  end
end
