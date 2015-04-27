# 002 Dynamic find_by Methods
Mar 06, 2007 | 1 minute | Active Record

[http://railscasts.com/episodes/2-dynamic-find-by-methods](http://railscasts.com/episodes/2-dynamic-find-by-methods)

```
rails g controller tasks
rails g model task name complete:boolean
rake db:migrate
```

```ruby
@tasks = Task.find_by_complete(false)
@tasks = Task.order('created_at DESC').find_by_complete(false)
```

..are working on current version of Rails. Normally I prefer `where` query method. (`where`, `order` methods currently return `ActiveRecord::Relation`)

And `find_by_complete(false)` returns one object, not an array, and works as `where(complete: false).take`

```ruby
@tasks = Task.where('complete = ?', false).to_a
@tasks = Task.where('complete = ?', false).order('created_at desc').to_a
```
