module ApplicationHelper
  def qrcode
    qrcode = RQRCode::QRCode.new("https://warigam.herokuapp.com/events/#{@event.id}")

    # NOTE: showing with default options specified explicitly
    svg = qrcode.as_svg(
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 3,
      standalone: true,
      use_path: true
    )
  end

  def default_meta_tags
    {
      site: 'WARIGAM',
      title: '',
      reverse: true,
      description: 'ギャンブル要素のある割り勘サービスです。ドキドキ感が楽しめます。',
      keywords: '割り勘,ギャンブル,食事,買い物',
      canonical: request.original_url,
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('apple-touch-icon.png'), rel: 'apple-touch-icon' }
      ],
      og: {
        site_name: :site,
        title: 'WARIGAM',
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@mokosu755',
      }
    }
  end
end
