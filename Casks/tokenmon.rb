cask "tokenmon" do
  version "0.1.5"
  sha256 "416e0244ef401a351b2b36f362a076b60fef47e66e5d8b94d91a05030b8e09e5"

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
