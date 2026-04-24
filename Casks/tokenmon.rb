cask "tokenmon" do
  version "0.1.26"
  sha256 "2a102451c87dce5623997a259de926aeb2e42dde82ad38294a4e3d5039b8fd14"

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
