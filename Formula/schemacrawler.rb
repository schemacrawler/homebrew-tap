# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-07T03:03:56.6180859Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.7.0/schemacrawler-17.7.0-bin.zip"
  version "17.7.0"
  sha256 "e7cf34686492d644dd1a3d35b7ecd387de863bb500bff356cfa2c5051e9002e9"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.7.0", output
  end
end
