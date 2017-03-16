module MountainHelper
  def paint_3peak_mountain(percentage)
    lines = Rails.root.join("db", "mountain.html").read.split("\n")
    # Display a certain percentage of the above lines based on the snowy_mountains input
    line_count = lines.size * (percentage.to_i / 100.0)
    lines[0..line_count].join("\n").html_safe
  end
end
