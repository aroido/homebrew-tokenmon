cask "tokenmon" do
  version "0.1.17"
  sha256 "4ecf134c15854c8cac83b9eb03c82a099b364b7e248e0807b7a862827e296644"

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
