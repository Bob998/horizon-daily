---
layout: default
title: Horizon Home
---

# Horizon

## 中文日报

{% assign zh_posts = site.posts | where: "lang", "zh" %}
Posts count: {{ zh_posts.size }}

<ul>
  {% for post in zh_posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a> — {{ post.date | date: "%Y-%m-%d" }}
    </li>
  {% else %}
    <li><em>暂无内容</em></li>
  {% endfor %}
</ul>

## English Digest

{% assign en_posts = site.posts | where: "lang", "en" %}
Posts count: {{ en_posts.size }}

<ul>
  {% for post in en_posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a> — {{ post.date | date: "%Y-%m-%d" }}
    </li>
  {% else %}
    <li><em>No posts yet</em></li>
  {% endfor %}
</ul>
