---
layout: page-fullpage
title: Sponsors
permalink: /sponsors/
hide: false
---
<h2>Sponsors</h2>
<p>Swiss Cyber Storm would like to thank its partners and sponsors for their invaluable support. If you are a cyber talent and are seeking a job or a place to study, get in touch with them and check out what they have to offer!</p>

 <div class="row">
  <div id="equalheight">
  
   <div class="col-lg-3 col-xs-6 col-eq-padding"> 
    <div class="row">
     <div class="col-xs-12">
       <h4>Gold</h4>
     </div>
    </div>

{% assign sponsors = site.data.sponsors | where: "type", "GOLD" %}
{% for item in sponsors %}
    <div class="row">
     <div class="col-xs-12">
      <div class="sponsor-img" style="max-width: {{item.max-width}}">
       <a href="{{item.www}}" target="_blank">
        <img src="{{item.image}}" alt="{{item.image-alt}}">
       </a>
      </div>
     </div>
    </div>
{% endfor %}
   </div> 

   <div class="col-lg-1 col-xs-0 col-eq-padding"> 
   </div>

   <div class="col-lg-6 col-xs-12 col-eq-padding"> 
    <div class="row">
     <div class="col-xs-12">
      <h4>Challenge+</h4>
     </div>
    </div>
{% assign sponsors = site.data.sponsors | where: "type", "CHALLENGE+" %}
{% for item in sponsors %}
  {% capture thecycle %}{% cycle 'group silver': 'odd', 'even' %}{% endcapture %}
  {% if thecycle == 'odd' %}
    {% assign no_odd = '</div></div>' %} 
    <div class="row">
     <div id="equalheight">
      <div class="col-xs-6 col-eq-padding">
       <div class="sponsor-img" style="max-width: {{item.max-width}}">
        <a href="{{item.www}}" target ="_blank">
         <img src="{{item.image}}" alt="{{item.image-alt}}">
        </a>
       </div>
      </div>
  {% else %}
    {% assign no_odd = '' %} 
      <div class="col-xs-6 col-eq-padding">
       <div class="sponsor-img" style="max-width: {{item.max-width}}">
        <a href="{{item.www}}" target ="_blank">
         <img src="{{item.image}}" alt="{{item.image-alt}}">
        </a>
       </div>
      </div>
     </div>
    </div>
  {% endif %}
{% endfor %}
    {{ no_odd }}
   </div>
   
  <div class="col-xs-12 col-eq-padding"> 
    <div class="row">
     <div class="col-xs-12">
      <h4>Challenge</h4>
     </div>
    </div>
{% assign sponsors = site.data.sponsors | where: "type", "CHALLENGE" %}
{% for item in sponsors %}
  {% capture thecycle %}{% cycle 'group bronze': 'odd', 'even' %}{% endcapture %}
  {% if thecycle == 'odd' %}
    {% assign no_odd = '</div></div>' %} 
    <div class="row">
     <div id="equalheight">
      <div class="col-lg-3 col-xs-6 col-eq-padding">
       <div class="sponsor-img" style="max-width: {{item.max-width}}">
        <a href="{{item.www}}{{no_odd}}" target ="_blank">
         <img src="{{item.image}}" alt="{{item.image-alt}}">
        </a>
       </div>
      </div>
  {% else %}
    {% assign no_odd = '' %} 
      <div class="col-lg-3 col-xs-6 col-eq-padding">
       <div class="sponsor-img" style="max-width: {{item.max-width}}">
        <a href="{{item.www}}{{no_odd}}" target ="_blank">
         <img src="{{item.image}}" alt="{{item.image-alt}}">
        </a>
       </div>
      </div>
     </div>
    </div>
  {% endif %}
{% endfor %}
    {{ no_odd }}

   </div>

  </div>
 </div>
 <div class="row verticalspaceing"></div>


<div class="row">
 <div class="col-xs-12">
  <h2>Sponsor Profiles</h2>
 </div>
</div>

{% for item in site.data.sponsors %}

<div class="row">
 <div class="col-lg-12 col-md-12">
  <div class="row">
   <div class="col-sm-3 col-xs-6">
    <div class="sponsor-img" style="max-width: {{item.max-width}}">
     <a href="{{item.www}}{{no_odd}}" target ="_blank">
      <img src="{{item.image}}" alt="{{item.image-alt}}">
     </a>
    </div>
   </div>
   <div class="col-sm-9 col-xs-12">
    <p>
     {{item.profile}}
    </p>
   </div>
  </div>
 </div>
</div>
{% endfor %}


<h2>Become a Sponsor!</h2>
Please contact us at 
<a href="mailto:sponsoring@swisscyberstorm.com" target="_blank">sponsoring@swisscyberstorm.com</a>
and we'll tell you all about our conference and challenge sponsoring opportunities!

You can visit our web sites from previous years to get an impression of the Swiss Cyber Storm event. However, please note that this year, Swiss Cyber Storm is special since we are the host of the European Cyber Security challenge final! 

<ul class="fa-ul">
  <li><i class="fa-li fa fa-check-square"></i><a href="http://2013.swisscyberstorm.com/" target="_blank">2013</a></li>
  <li><i class="fa-li fa fa-check-square"></i><a href="http://2014.swisscyberstorm.com/" target="_blank">2014</a></li>
</ul>
