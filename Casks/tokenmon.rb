cask "tokenmon" do
  version "0.1.14"
  sha256 "6d87a36f350f679acbc492f59cc0f1ceeff63e713a6703358c610d0b8aef3ae5"

  url "https://github.com/aroido/tokenmon/releases/download/v#{version}/Tokenmon-#{version}.dmg"
  name "Tokenmon"
  desc "Offline-first menu bar creature companion for local AI coding"
  homepage "https://github.com/aroido/tokenmon"

  auto_updates true

  depends_on macos: ">= :sonoma"

  app "Tokenmon.app"

  zap trash: [
    "~/Library/Application Support/Tokenmon",
  ]
end
