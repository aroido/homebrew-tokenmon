cask "tokenmon" do
  version "0.1.38"
  sha256 "3e6f7e9d6b822f7c5c7c6d5a1ac7093006c2010723241146666df28b98016156"

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
