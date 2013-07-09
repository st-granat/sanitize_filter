# coding: utf-8
require "sanitize_filter/version"

module SanitizeFilter
  class << self
    def for_admin
      {
        :elements => [
          'a', 'b', 'blockquote', 'br', 'caption', 'cite', 'code', 'col',
          'colgroup', 'dd', 'dl', 'dt', 'em', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6',
          'i', 'img', 'li', 'ol', 'p', 'pre', 'q', 'small', 'strike', 'strong',
          'sub', 'sup', 'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'u',
          'ul', 'span'],

        :attributes => {
          'a'          => ['href', 'title'],
          'blockquote' => ['cite'],
          'col'        => ['span', 'width'],
          'colgroup'   => ['span', 'width'],
          'img'        => ['align', 'alt', 'height', 'src', 'title', 'width', 'style'],
          'ol'         => ['start', 'type'],
          'q'          => ['cite'],
          'table'      => ['summary', 'width'],
          'td'         => ['abbr', 'axis', 'colspan', 'rowspan', 'width'],
          'th'         => ['abbr', 'axis', 'colspan', 'rowspan', 'scope',
                           'width'],
          'ul'         => ['type'],
          'p'          => ['style', 'class', 'id'],
          'span'       => ['style', 'class', 'id']
        },

        :protocols => {
          'a'          => {'href' => ['ftp', 'http', 'https', 'mailto',
                                      :relative]},
          'blockquote' => {'cite' => ['http', 'https', :relative]},
          'img'        => {'src'  => ['http', 'https', :relative]},
          'q'          => {'cite' => ['http', 'https', :relative]}
        },

        :add_attributes => {
          'a' => {'rel' => 'nofollow'}
        }
      }
    end

    def for_guest
      {
        :elements => [
          'b', 'blockquote', 'br', 'i', 'ul', 'ol', 'li', 'p', 'small', 'strike', 'strong',
          'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'u'],

        :attributes => {
          'table'      => ['summary', 'width'],
          'td'         => ['abbr', 'axis', 'colspan', 'rowspan', 'width'],
          'th'         => ['abbr', 'axis', 'colspan', 'rowspan', 'scope', 'width'],
          'ul'         => ['type']
        }
      }
    end

    def for_user
      {
        :elements => [
          'a', 'img', 'b', 'blockquote', 'br', 'i', 'ul', 'ol', 'li', 'p', 'div', 'small', 'strike', 'strong',
          'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'u', 'span'],

        :attributes => {
          'a'          => ['href', 'title'],
          'img'        => ['align', 'alt', 'height', 'src', 'title', 'width', 'style'],
          'blockquote' => ['cite'],
          'table'      => ['summary', 'width'],
          'td'         => ['abbr', 'axis', 'colspan', 'rowspan', 'width'],
          'th'         => ['abbr', 'axis', 'colspan', 'rowspan', 'scope', 'width'],
          'ul'         => ['type']
        },

        :add_attributes => {
          'a' => {'rel' => 'nofollow'}
        }
      }
    end
  end
end
