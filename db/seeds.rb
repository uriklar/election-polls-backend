# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Poll.delete_all
Party.delete_all
Result.delete_all

parties = Party.create([
	{name: "הליכוד"},
	{name: "ישראל ביתינו"},
	{name: "הבית היהודי"},
	{name: "יש עתיד"},
	{name: "כולנו"},
	{name: "אלי ישי"},
	{name: "יהדות התורה"},
	{name: 'ש"ס'},
	{name: "העבודה"},
	{name: "מרצ"},
	{name: 'רע"מ תע"ל'},
	{name: 'בל"ד'},
	{name: 'חד"ש'}
])

poll = Poll.create({source: "גלובס",poller: "רפי סמית",population: 500,date: "4-12-2014"})
poll.results.create({party: Party.find_by_name("הליכוד"), mandates: 23})
poll.results.create({party: Party.find_by_name("ישראל ביתינו"), mandates: 10})
poll.results.create({party: Party.find_by_name("הבית היהודי"), mandates: 16})
poll.results.create({party: Party.find_by_name("יש עתיד"), mandates: 10})
poll.results.create({party: Party.find_by_name("כולנו"), mandates: 10})
poll.results.create({party: Party.find_by_name("אלי ישי"), mandates: 0})
poll.results.create({party: Party.find_by_name("יהדות התורה"), mandates: 7})
poll.results.create({party: Party.find_by_name('ש"ס'), mandates: 9})
poll.results.create({party: Party.find_by_name("העבודה"), mandates: 17})
poll.results.create({party: Party.find_by_name('מרצ'), mandates: 7})
poll.results.create({party: Party.find_by_name('רע"מ תע"ל'), mandates: 3})
poll.results.create({party: Party.find_by_name('בל"ד'), mandates: 3})
poll.results.create({party: Party.find_by_name('חד"ש'), mandates: 5})

poll = Poll.create({source: "ערוץ 10",poller: "מאגר מוחות - יצחק כץ",population: 500,date: "3-12-2014"})
poll.results.create({party: Party.find_by_name("הליכוד"), mandates: 26})
poll.results.create({party: Party.find_by_name("ישראל ביתינו"), mandates: 12})
poll.results.create({party: Party.find_by_name("הבית היהודי"), mandates: 16})
poll.results.create({party: Party.find_by_name("יש עתיד"), mandates: 8})
poll.results.create({party: Party.find_by_name("כולנו"), mandates: 8})
poll.results.create({party: Party.find_by_name("אלי ישי"), mandates: 0})
poll.results.create({party: Party.find_by_name("יהדות התורה"), mandates: 8})
poll.results.create({party: Party.find_by_name('ש"ס'), mandates: 8})
poll.results.create({party: Party.find_by_name("העבודה"), mandates: 16})
poll.results.create({party: Party.find_by_name('מרצ'), mandates: 7})
poll.results.create({party: Party.find_by_name('רע"מ תע"ל'), mandates: 4})
poll.results.create({party: Party.find_by_name('בל"ד'), mandates: 3})
poll.results.create({party: Party.find_by_name('חד"ש'), mandates: 4})