module MountainHelper

  def paint_3peak_mountain(percentage)
    path = Rails.root.join('app', 'assets', 'html', 'mountain.html')
    contents = File.open(path, "rb").read
    lines = contents.split("\n")
    # Display a certain percentage of the above lines based on the snowy_mountains input
    line_count = lines.size * (percentage / 100.0)
    lines[0..line_count].join("\n").html_safe
  end
end
