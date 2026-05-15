cask "tokenmon" do
  version "0.1.36"
  sha256 "8653e16f2ddc06204f84fc5ce2fb4e72857ef97c5816fc1b6f37279d9dd6f23f"

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
