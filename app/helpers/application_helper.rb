module ApplicationHelper
  def qrcode
    qrcode = RQRCode::QRCode.new("https://warigam.herokuapp.com/events/#{@event.id}")

    # NOTE: showing with default options specified explicitly
    svg = qrcode.as_svg(
    color: "000",
    shape_rendering: "crispEdges",
    module_size: 3,
    standalone: true,
    use_path: true
    )
  end
end
