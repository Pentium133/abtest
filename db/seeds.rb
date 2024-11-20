
exp1 = Experement.create(name: 'button_color')

exp1.experement_options << ExperementOption.new(option: '#FF0000', value: '33')
exp1.experement_options << ExperementOption.new(option: '#00FF00', value: '33')
exp1.experement_options << ExperementOption.new(option: '#0000FF', value: '33')

exp1.save