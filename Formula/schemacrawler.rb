# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-04-25T03:28:27.4244364Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.10.2/schemacrawler-17.10.2-bin.zip"
  version "17.10.2"
  sha256 "d65c37de8bbdeebebc6441c201b9230e41242c4506adbe8f7696c717cab7aecf"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.10.2", output
  end
end
