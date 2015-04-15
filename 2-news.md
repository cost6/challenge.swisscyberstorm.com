---
layout: page-twocolumns
title: News
permalink: /news/
---
   <div class="posts">
    {% for post in site.posts %}
       {% unless post.draft %}
    <div class="post-teaser">
    
      <header>
        <h1>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h1>
        
        <p class="meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      </header>

      <div class="excerpt">
          {% if post.feature-image %}
              <div class="img_excerpt">
	            <img src="{{ post.feature-image }}" alt="{{post.feature-image-caption}}"></img>
              </div>
          {% endif %}
              <div class="txt_excerpt">{{ post.excerpt | strip_html }}</div>
              <div class="more_excerpt">
              <a class="button" href="{{ post.url | prepend: site.baseurl }}">{{ site.theme.str_continue_reading }}</a>
         </div>
      </div>
      
    </div>
      {% endunless %}        
    {% endfor %}
  </div>

