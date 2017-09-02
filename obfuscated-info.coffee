@insertEmail = ->
  first = '&#104;&#101;&#108;&#108;&#1'
  encoded = first + '11;&#064;&#115;&#116;&#101;&#102;&#097;&#110;&#110;&#046;&#101;&#117;'

  withBogus = encoded.substr(0, 18) + '<i>' + encoded.substr(18, 24) + '</i>' + encoded.substr(42)

  first = '<a href="mai'
  document.write first + 'lto:' + encoded + '">' + withBogus + '</a>'


@insertPhone = ->
  groups = ['&#052;&#048;', '&#055;&#050;&#050;', '&#055;&#052;&#048;', '&#052;&#054;&#057;']
  withDashes = groups.join '-'

  withBlanks = groups.join ' '
  withBogus = withBlanks.substr(0, 25) + '</i>' + withBlanks.substr(25)

  first = '<a href="t'
  document.write first + 'el:+' + withDashes + '">0<i>0' + withBogus + '</a>'
