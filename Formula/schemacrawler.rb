# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-05-30T21:08:41.1910509Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.11.2/schemacrawler-17.11.2-bin.zip"
  version "17.11.2"
  sha256 "9edf6ac76db08d08e5e37c02e6969470cacc7770df476aa6c0316d1c3cf7ba94"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.11.2", output
  end
end
