Actor.destroy_all
TvShow.destroy_all
Character.destroy_all
daniel = Actor.create(name: 'Daniel Radcliffe')
julia = Actor.create(name: 'Julia Louis Dreyfuss')
mindy_k = Actor.create(name: 'Mindy Kaling')
benedict = Actor.create(name: 'Benedict Cumberbach')

harry_potter = TvShow.create(name: 'harry potter')
physician = TvShow.create(name: 'A physicians notebook')
office = TvShow.create(name: 'The office')
mindy_p = TvShow.create(name: 'The Mindy Project')
veep = TvShow.create(name: 'Veep')
seinfeld = TvShow.create(name: 'Seinfeld')

kelly = Character.create(name: 'kelly', tv_show: office, actor: mindy_k)
mindy = Character.create(name: 'mindy', tv_show: mindy_p, actor: mindy_k)
elaine = Character.create(name: 'elaine', tv_show: seinfeld, actor: julia)
harry_p = Character.create(name: 'harry potter', tv_show: harry_potter, actor: daniel)
young_d = Character.create(name: 'young doctor', tv_show: physician, actor: daniel)
young_d = Character.create(name: 'old doctor', tv_show: physician, actor: benedict)