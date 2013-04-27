Plugin = Mercury.registerPlugin 'media'
  description: 'Provides interface for inserting and editing media.'
  version: '1.0.0'

  actions:
    link: 'insert'

  registerButton: ->
    @button.set(type: 'media')

  onButtonClick: ->
    new Plugin.Modal()

  insert: ->


class Plugin.Modal extends Mercury.Modal
  template:  'media'
  className: 'mercury-media-dialog'
  title:     'Media Manager'
  width:     600


@JST ||= {}
JST['/mercury/templates/media'] ||= ->
  """
  <form class="form-horizontal">
    <div class="form-inputs">

      <fieldset>
        <legend>Images</legend>
        <div class="control-group url optional">
          <label class="url optional control-label" for="media_image_url">
            <input name="media_type" type="radio" value="image_url" checked="checked"/>URL
          </label>
          <div class="controls">
            <input class="span6 string url optional" id="media_image_url" name="media[image_url]" size="50" type="text">
          </div>
        </div>
      </fieldset>

      <fieldset>
        <legend>Videos</legend>
        <div class="control-group url optional">
          <label class="url optional control-label" for="media_youtube_url">
            <input name="media_type" type="radio" value="youtube_url"/>YouTube URL
          </label>
          <div class="controls">
            <input class="span6 string url optional" id="media_youtube_url" name="media[youtube_url]" size="50" type="text" placeholder="http://youtu.be/28tZ-S1LFok">
          </div>
        </div>
        <div class="control-group url optional">
          <label class="url optional control-label" for="media_vimeo_url">
            <input name="media_type" type="radio" value="vimeo_url"/>Vimeo URL
          </label>
          <div class="controls">
            <input class="span6 string url optional" id="media_vimeo_url" name="media[vimeo_url]" size="50" type="text" placeholder="http://vimeo.com/36684976">
          </div>
        </div>
      </fieldset>

      <fieldset>
        <legend>Options</legend>

        <div class="media-options" id="image_url_options">
          <div class="control-group select optional">
            <label class="select optional control-label" for="media_image_alignment">Alignment</label>
            <div class="controls">
              <select class="select optional" id="media_image_alignment" name="media[image_alignment]">
                <option value="">None</option>
                <option value="left">Left</option>
                <option value="right">Right</option>
                <option value="top">Top</option>
                <option value="middle">Middle</option>
                <option value="bottom">Bottom</option>
                <option value="absmiddle">Absolute Middle</option>
                <option value="absbottom">Absolute Bottom</option>
              </select>
            </div>
          </div>
          <div class="control-group select optional">
            <label class="select optional control-label" for="media_image_float">Float</label>
            <div class="controls">
              <select class="select optional" id="media_image_float" name="media[image_float]">
                <option value="">None</option>
                <option value="left">Left</option>
                <option value="right">Right</option>
                <option value="none">None</option>
                <option value="inherit">Inherit</option>
              </select>
            </div>
          </div>
        </div>

        <div class="media-options" id="youtube_url_options" style="display:none">
          <div class="control-group number optional">
            <label class="number optional control-label" for="media_youtube_width">Width</label>
            <div class="controls">
              <input class="span2 number optional" id="media_youtube_width" name="media[youtube_width]" size="50" type="number" value="560">
            </div>
          </div>
          <div class="control-group number optional">
            <label class="number optional control-label" for="media_youtube_height">Height</label>
            <div class="controls">
              <input class="span2 number optional" id="media_youtube_height" name="media[youtube_height]" size="50" type="number" value="349">
            </div>
          </div>
        </div>

        <div class="media-options" id="vimeo_url_options" style="display:none">
          <div class="control-group number optional">
            <label class="number optional control-label" for="media_vimeo_width">Width</label>
            <div class="controls">
              <input class="span2 number optional" id="media_vimeo_width" name="media[vimeo_width]" size="50" type="number" value="400">
            </div>
          </div>
          <div class="control-group number optional">
            <label class="number optional control-label" for="media_vimeo_height">Height</label>
            <div class="controls">
              <input class="span2 number optional" id="media_vimeo_height" name="media[vimeo_height]" size="50" type="number" value="225">
            </div>
          </div>
        </div>
      </fieldset>

    </div>
    <div class="form-actions">
      <input class="btn btn-primary" name="commit" type="submit" value="Insert Media"/>
    </div>
  </form>
  """
