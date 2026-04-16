cask "tokenmon" do
  version "0.1.7"
  sha256 "17712f46d1a34f428cb32fdfd3d4c79e69c09f5d0b796f4a4bbbd32663673a0f"

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
