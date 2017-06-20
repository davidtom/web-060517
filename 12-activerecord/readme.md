1. What is activerecord?
  dynamic orm 
    object relational mapper
    database
        people -> Person
        songs  -> Song
        song row       -> <@name="thriller" @year=1982>
    object 
2. How does it make our lives easier?
        reduces the amount of code that we have to write
        Song.find_by_year()
        conventions -> 
           primary_key column
           Artist -> artists
3. How does it make our lives harder?
      may not follow conventions... 
4. How does it work?
    Introspects on our tables, writes methods, 
5. What questions do we have 
     ActiveRecord::Base
    module ActiveRecord
        class Base
        end
    end

     class ApplicationRecord < ActiveRecord::Base
        def self.find_by_id_and_name(id, name)
        end

        def self.all
            raise 'no method'
        end
     end
     
     class User < ApplicationRecord
     end

    class Song < ApplicationRecord
    end
5 minutes..