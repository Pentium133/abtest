# README

### GET /experements

Запрос доступных эксперементов, в заголовке необходимо передавать идентификатор устройства 'Device-Token' => '....'

#### RESPONSE

Массив доступных эксперементов для указанного Device-Token,
experiment_id - id эксперемента,
experiment_name - идентификатор эксперемента,
assigned_option - значение используемое в эксперементе
assigned_value - вес значения

```
[
  {
    "experiment_id": 1,
    "experiment_name": "button_color",
    "assigned_option": "#FF0000",
    "assigned_value": "33"
  },
  {...}
]
```

### GET /experements/stat

Статистика эксперементов
