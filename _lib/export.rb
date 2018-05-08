$LOAD_PATH.unshift('_lib')
require 'json'
require 'hyacinth_export'
require 'thumbnail'
require 'tqdm'

docs = Hyacinth::Export.to_json('_data/hyacinth-biggert.csv')
docs.tqdm.each do |doc|
  doc['pid'] = doc['_identifiers']
  doc['_identifiers'].delete(doc['pid'])
  ids = doc.delete('_identifiers')
  doc['identifiers'] = ids unless ids.empty?
  doc.delete('fedora_pid')
  doc['doi'] = doc['doi'].tr('doi:','')
  doc['thumbnail'] = thumbnail(doc['doi'])
end
$stdout.puts JSON.pretty_generate(docs)
