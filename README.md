# README
## eluciDATA

### Description
  The point of this project is to have a basic use case of the integration of a rail-based api application and a react ui/frontend for the management of unstructured data.
  The use case is specifically vague and open to allow to pulling in tools, techniques, and technologies which I'm either trying to get a better understanding of, or wishing to have a concrete example of.
  
  Some (but not limited to) the techniques and tools I wish to explore are:
  - Use of a RubyOnRails "api" application as an administrative backend and management utility of a domain's data model
     - use of an open-ended api client / documentation client such as swagger-ui
     - use of jsonb/hstore-based serialized auditing (logidize)
  - React/Redux/etc. based Frontend UI (consuming the above api)
  - Use of datastore-based api (postgREST extension) the 'admin backend' as a resource


### Setup / Start
> bin/setup
> cd elucidata-react-app && npm start
