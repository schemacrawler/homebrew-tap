# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-06-16T22:18:56.427244Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.11.3/schemacrawler-17.11.3-bin.zip"
  version "17.11.3"
  sha256 "aef46dbf9463b41473deef7b7fda91b7e0308dce51ac6e3692f246951620639d"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.11.3", output
  end
end
