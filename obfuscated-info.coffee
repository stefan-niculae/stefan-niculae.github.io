@insertEmail = ->
  before  = 'hello'
  after   = 'stefann.eu'
  address = before + '@' + after

  encoded = '&#104;&#101;&#108;&#108;&#111;&#064;&#115;&#116;&#101;&#102;&#097;&#110;&#110;&#046;&#101;&#117;'
  withBogus = encoded.substr(0, 18) + '<i>' + encoded.substr(18, 12) + '</i>' + encoded.substr(30)

  document.write '<a href="mai' + 'lto:' + address + '">' + withBogus + '</a>'


@insertPhone = ->
  groups = ['+40', '722', '740', '469']
  number = groups.join '-'

  encoded = '&#048;&#048;&#052;&#048;&#032;&#055;&#050;&#050;&#032;&#055;&#052;&#048;&#032;&#052;&#054;&#057;'
  withBogus = encoded.substr(0, 18) + '<i>' + encoded.substr(18, 12) + '</i>' + encoded.substr(30)

  document.write '<a href="tel:' + number + '">' + withBogus + '</a>'
  