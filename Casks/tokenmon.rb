cask "tokenmon" do
  version "0.1.37"
  sha256 "4869e8795e3d871c2be44b696d01795c4ff8f27ebbe2967ab24e29eb0e37e4bd"

  url "https://github.com/aroido/tokenmon/releases/download/v#{version}/Tokenmon-#{version}.dmg"
  name "Tokenmon"
  desc "Offline-first menu bar creature companion for local AI coding"
  homepage "https://github.com/aroido/tokenmon"

  auto_updates true

  depends_on macos: ">= :sequoia"

  app "Tokenmon.app"

  zap trash: [
    "~/Library/Application Support/Tokenmon",
  ]
end
