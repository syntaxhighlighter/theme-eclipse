fs = require 'fs'
sass = require 'node-sass'

describe 'syntaxhighlighter-theme-eclipse', ->
  it 'compiles ok', (done) ->
    fs.readFile "#{__dirname}/../scss/theme-eclipse.scss", 'utf8', (err, content) ->
      css = sass.renderSync data: content, includePaths: ["#{__dirname}/../node_modules/syntaxhighlighter-theme/scss"]
      throw new Error "Failed to compile" unless css?.length > 0
      done()
