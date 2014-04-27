# ruby_odata Change Log

### 0.0.1
* New Features
    * Basic CRUD Operations
    * Query Enhancement: Filters
    * Query Enhancement: Expands

### 0.0.2
* New Features
    * Query Enhancement: Order By (both desc and asc)

### 0.0.3
* Bug Fixes
    * Rearranged code to match the gem name.  Things were mismatched between odata_ruby and ruby_odata.

### 0.0.4
* New Features
    * Query Enhancement: skip
    * Query Enhancement: top
    * Ability to perform paging using skip and top together
    * Updated README with examples for order_by, skip, and top

### 0.0.5
* Bug Fixes
    * Works with Ruby 1.9.1
    * Works with ActiveSupport 3.0.0.beta4

### 0.0.6
* New Features
    * Ability to batch saves (Adds, Updates, Deletes); this will help save on network chatter

### 0.0.7
* New Features
    * Complex Types are now supported
    * Support for Edm.Int16, Edm.Int32, Edm.Int64
    * Support for Edm.Decimal
    * Support for Edm.DateTime

### 0.0.8
* New Features
    * Basic HTTP Authentication (thanks J.D. Mullin)
    * Modified cucumber tests to setup the test database so you no longer need to copy them yourself
    * Support for nullable elements returned from the Data Service (m:null ="true")
* Bug Fixes
    * ActiveSupport 2.3.x (tested 2.3.11) and 3.0.x (tested 3.0.4) are now supported
    * Works with Ruby 1.9.2

### 0.0.9
* New Features
    * Support for self-signed SSL certificates (thanks J.D. Mullin)
    * Refactored building classes/collections to only make one call to the service
    * Added support for a WCF service with lowercase entities (reported by Klaus Rohe)
* Bug Fixes
    * Fixed issue with passing a service URL with a trailing slash
* Other
    * Cleaned up testing by adding a default task to the Rakefile that runs RSpec and Cucumber

### 0.0.10
* New Features
    * Added the ability to pass additional parameters that are appended to the query string for requests
    * Added initial support for feed customizations (SyndicationTitle and SyndicationSummary)
    * Enhanced ruby_odata's awareness of classes based on the metadata instead of relying on results that are returned
* Bug Fixes
    * Fixed issues with nested collections (eager loading)
    * Handled ArgumentError on the Time.parse for older versions of Ruby; used DateTime.parse instead if Time.parse fails
    * Removed the camelize method call when building the root URL for collections (Reported by mkoegel, issue #3 on github)
    * Handled building results (classes) where the category element is missing but there is a title element instead. (Reported by mkoegel, issue #3 on github in the comments)
* Other
    * Change HTTP port to 8989 since 8888 conflicts with the Intel AppStore
    * Refactored service step for HTTP calls where the service address is defined within the step making it easier to make changes in the future.

### 0.1.0
* **BREAKING CHANGES**
    * Previously the ruby_odata `Service.execute` and `Service.save_changes` used to return a single entity object if there was only one result returned. Now, the results are always an Enumerable (except in the case of boolean results like a delete), so if you just need one result, use the `first` method on the result set
* New Features
    * Support for partial results (thanks arienmalec)
    * Added support for single layer inheritance (thanks to [Scott](http://odetocode.com/Blogs/scott/archive/2010/07/11/odata-and-ruby.aspx))
    * Added support for querying links (see [Issue 10](https://github.com/visoft/ruby_odata/issues/10))
    * Added support for adding links between entities (add_link)
    * Added support for lazy loading
    * Added a convenience method (`first`) for accessing a single result by id
    * Added basic reflection of the entity model via the ruby_odata service
    * Added the ability to create ruby_odata models in a specified namespace to prevent conflicts with local models
    * Added the ability to call function imports exposed by the WCF Data Service
  * Other
    * Changed the test project (for Cucumber integration tests) to use SQL Compact 4, Entity Framework 4.1, and WCF Data Services October 2011 CTP
    * Added [Pickle](https://github.com/ianwhite/pickle) integration to simplify Cucumber step definitions

### 0.1.1
* New Features
    * Added the `count` method (to `QueryBuilder`) for returning a count from an OData service
    * Added the `navigate` method (to `QueryBuilder`) in order to handle filtering of children

* Bug Fixes
    * Escaped IDs in queries where the ID is a string with spaces

* Other
    * Goodbye RDoc; Hello Markdown/YARD
    * Refactored exceptions to use proper error classes
    * Integrated [Guard](https://github.com/guard/guard) into the test suite for continuous testing
    * Integrated [VCR](https://github.com/myronmarston/vcr) into test suite in order to run Cucumber steps without running the test server.

### 0.1.2
* New Features
    * Added support for nokogiri >= 1.5.1 while maintaining backwards compatibility for >=1.4.2
    * Backports requirement is now for >= 2.3.0
    * Added the ability to pass in :rest_options to the service constructor within the options hash.

* Bug Fixes
    * Prevented `svc.load_property` from mutating the obj's metadata uri (thanks [@sillylogger](https://github.com/sillylogger))

### 0.1.3
* Bug Fixes
    * Persists the additional_params for partial calls (thanks [@levelboy](https://github.com/levelboy))

* Other
    * Specified v2.3.4 of the addressable gem since there was a bug when testing ruby_odata against Ruby 1.8.7

### 0.1.4
* Bug Fixes
    * Fixed issue with building a collection of complex types ([issue 26](https://github.com/visoft/ruby_odata/issues/26))
    * A collection of complex types is now returned as an array ([issue 26](https://github.com/visoft/ruby_odata/issues/26))
    * Fixed issue with building a child collection of native types ([issue 27](https://github.com/visoft/ruby_odata/issues/27))
    * Corrected problem with addressable not being referenced
    * Fixed issue with building nested expands ([issue 24](https://github.com/visoft/ruby_odata/pull/24), thanks [@joshuap](https://github.com/joshuap))

* Other
    * Updated the [VCR](https://github.com/myronmarston/vcr) and [WebMock](https://github.com/bblimke/webmock) gems to the latest versions (used for testing)
