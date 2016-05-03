$(document).ready ->
        
  Models.City = Backbone.Model.extend
    locale: 'en'

    url: ->
      if this.cityname
        return "/"+@locale+"/cities/travel-to/" + this.cityname + ".json"
      else
        return "/"+@locale+"/cities.json"
        
    initialize: (item) ->
      @cityname = item.cityname
      @fetch
        success: ->
          # U.views.cities.home.render()
          # U.views.cities.index.render()
          a = 'a' # nothing
         
  Models.Cities = Backbone.Collection.extend
    model: Models.City
    locale: 'en'

    url: ->
      if @cityname
        return "/"+@locale+"/cities/travel-to/" + @cityname + ".json"
      else
        return "/"+@locale+"/cities.json"
    
    initialize: ->
      _.bindAll @, 'success', 'error'
      #this.fetch
      #  success: ->
      #    # U.views.cities.index.render()
      #    MyApp.right_region.show( U.views.cities.index )
                
    success: ->

    error: ->

