cask "prune" do
  version "0.9.14"
  sha256 "8e9ef481caba78dc44c47d978f61555489974d32aea615dbcb78f0e6d8f98f03"

  url "https://prune.digitalarc.lk/downloads/Prune_#{version}_universal.dmg"
  name "Prune"
  desc "Disk cleaner that knows AI and developer caches by name"
  homepage "https://prune.digitalarc.lk/"

  livecheck do
    url "https://prune.digitalarc.lk/version.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: :monterey

  app "prune.app", target: "Prune.app"

  zap trash: [
    "~/Library/Application Support/com.prune.app",
    "~/Library/Caches/com.prune.app",
    "~/Library/Preferences/com.prune.app.plist",
  ]
end
