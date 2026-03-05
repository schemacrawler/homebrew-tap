# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-05T01:53:01.0439348Z

cask "schemacrawler" do
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.6.3/schemacrawler-17.6.3-bin.zip",
      verified: "github.com"
  version "17.6.3"
  sha256 "4b873b98847855b4ca880910c19bd55c8720494bf6fd41ca2db9b238b162b9bd"
  name "SchemaCrawler"
  auto_updates true


  binary "schemacrawler-17.6.3-bin/bin/schemacrawler.sh"
end
