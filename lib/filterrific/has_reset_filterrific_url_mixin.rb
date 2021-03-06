# -*- coding: utf-8 -*-
#
# Adds reset_filterrific_url to controllers and views
#
module Filterrific
  module HasResetFilterrificUrlMixin

    # Returns a url that can be used to reset the Filterrific params
    def reset_filterrific_url(opts = {})
      opts = {
          :as => :filterrific
      }.merge(opts)
      url_for(
        { opts[:as] => { reset_filterrific: true } }.merge(opts)
      )
    end

  end
end
