
module ApplicationHelper
  
  def image_ftp(url,options=nil)
    if options.nil?
       content_tag(:img,nil,:src=>url)
    else
       content_tag(:img,nil,:src=>url,:alt=>options[:alt],:width=>options[:width],:height=>options[:height])
    end
  end
  
  
  def image_html(image)
      "<img src='#{image}'>"
    end

    def add_marker(markers)
      ret = ''
      markers.each_with_index do |m,index|
        ret += 'var contentString ="'
        ret += image_html(m.photo.url(:thumb))
        ret +="<b>#{m.adresse}</b>"
        ret += '";'
        ret+= "var infiwindow#{index.to_s} = new google.maps.InfoWindow({content:contentString});
                  var marker#{index.to_s}= new google.maps.Marker({
                    position: new google.maps.LatLng(#{m.geocode.latitude},#{m.geocode.longitude}),
                    title: '#{m.adresse}',
                    clickable: true,
                    map: map
                  });
                  google.maps.event.addListener(marker#{index.to_s},\'mouseover\',function(){
                    infiwindow#{index.to_s}.open(map,marker#{index.to_s});
                  });
                  google.maps.event.addListener(marker#{index.to_s},\'mouseout\',function(){
                    infiwindow#{index.to_s}.close(map,marker#{index.to_s});
                  });"
      end
      ret
    end

    def initialize_map(markers)
      " function initialize()
                {
                  var latlng = new google.maps.LatLng(#{markers[0].geocode.latitude},#{markers[0].geocode.longitude});
                  var opt =
                    {
                    center:latlng,
                    zoom:10,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    disableAutoPan:false,
                    navigationControl:true,
                    navigationControlOptions: {style:google.maps.NavigationControlStyle.SMALL },
                    mapTypeControl:true,
                    mapTypeControlOptions: {style:google.maps.MapTypeControlStyle.DROPDOWN_MENU}
          };
          var map = new google.maps.Map(document.getElementById('map'),opt);"+ add_marker(markers)+"}"

    end
  
end
