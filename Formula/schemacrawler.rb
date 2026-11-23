# Generated with JReleaser 1.28.0-SNAPSHOT at 2026-11-23T13:33:39.8427766Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v18.0.4/schemacrawler-18.0.4-bin.zip"
  version "18.0.4"
  sha256 "6aae74f94724c48c97aa8a4ef9d1f9d866137a54b8cdd95183c462454f8a4619"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "18.0.4", output
  end
end
