
exp1 = Experement.create(name: 'button_color')

exp1.experement_options << ExperementOption.new(option: '#FF0000', value: '33')
exp1.experement_options << ExperementOption.new(option: '#00FF00', value: '33')
exp1.experement_options << ExperementOption.new(option: '#0000FF', value: '33')

exp1.save

exp2 = Experement.create(name: 'price')

exp2.experement_options << ExperementOption.new(option: '10', value: '75')
exp2.experement_options << ExperementOption.new(option: '20', value: '10')
exp2.experement_options << ExperementOption.new(option: '50', value: '5')
exp2.experement_options << ExperementOption.new(option: '5', value: '10')


exp2.save
