class Plant {
  final String id;
  final String name;
  final String description;
  final String careTips;

  Plant({
    required this.id,
    required this.name,
    required this.description,
    required this.careTips,
  });
}

// Lista com 30 plantas (sem imagens)
final List<Plant> plants = [
  Plant(
    id: '1',
    name: 'Suculenta',
    description: 'Planta ideal para ambientes internos.',
    careTips: 'Regue a cada 2 semanas e mantenha em luz indireta.',
  ),
  Plant(
    id: '2',
    name: 'Orquídea',
    description: 'Flor exótica e delicada.',
    careTips: 'Regue semanalmente e evite exposição direta ao sol.',
  ),
  Plant(
    id: '3',
    name: 'Samambaia',
    description: 'Planta de sombra que purifica o ar.',
    careTips: 'Mantenha o solo úmido e evite luz solar direta.',
  ),
  Plant(
    id: '4',
    name: 'Aloe Vera',
    description: 'Planta medicinal com propriedades curativas.',
    careTips: 'Regue moderadamente e coloque em local ensolarado.',
  ),
  Plant(
    id: '5',
    name: 'Pacová',
    description: 'Planta tropical com folhas grandes e brilhantes.',
    careTips: 'Regue regularmente e mantenha em ambiente úmido.',
  ),
  Plant(
    id: '6',
    name: 'Lírio da Paz',
    description: 'Planta decorativa que simboliza pureza.',
    careTips: 'Regue quando o solo estiver seco e mantenha à meia-sombra.',
  ),
  Plant(
    id: '7',
    name: 'Jiboia',
    description: 'Planta trepadeira fácil de cuidar.',
    careTips: 'Tolerante a pouca luz e rega esporádica.',
  ),
  Plant(
    id: '8',
    name: 'Cacto',
    description: 'Planta resistente e de baixa manutenção.',
    careTips: 'Regue raramente e mantenha em ambiente ensolarado.',
  ),
  Plant(
    id: '9',
    name: 'Zamioculca',
    description: 'Planta ornamental com folhas verde-escuras.',
    careTips: 'Regue a cada 2-3 semanas e evite excesso de água.',
  ),
  Plant(
    id: '10',
    name: 'Espada de São Jorge',
    description: 'Planta que traz boas energias segundo a cultura popular.',
    careTips: 'Regue ocasionalmente e mantenha em luz indireta.',
  ),
  Plant(
    id: '11',
    name: 'Begônia',
    description: 'Planta com flores coloridas e folhas decorativas.',
    careTips: 'Mantenha o solo úmido e evite luz solar direta.',
  ),
  Plant(
    id: '12',
    name: 'Hera Inglesa',
    description: 'Planta trepadeira que purifica o ar.',
    careTips: 'Regue regularmente e mantenha em ambiente fresco.',
  ),
  Plant(
    id: '13',
    name: 'Rosa do Deserto',
    description: 'Planta ornamental com flores vibrantes e caule suculento.',
    careTips: 'Regue quando o solo estiver seco e mantenha em local ensolarado.',
  ),
  Plant(
    id: '14',
    name: 'Palmeira Areca',
    description: 'Planta tropical que decora ambientes internos.',
    careTips: 'Regue moderadamente e mantenha em luz indireta.',
  ),
  Plant(
    id: '15',
    name: 'Costela-de-adão',
    description: 'Planta com folhas grandes e textura única.',
    careTips: 'Regue quando o solo estiver seco e mantenha em sombra parcial.',
  ),
  Plant(
    id: '16',
    name: 'Peperômia',
    description: 'Planta pequena e compacta, ideal para espaços reduzidos.',
    careTips: 'Regue moderadamente e evite luz solar direta.',
  ),
  Plant(
    id: '17',
    name: 'Cróton',
    description: 'Planta decorativa com folhas coloridas.',
    careTips: 'Regue regularmente e mantenha em luz indireta.',
  ),
  Plant(
    id: '18',
    name: 'Maranta',
    description: 'Planta com folhas que se fecham à noite.',
    careTips: 'Mantenha o solo úmido e evite luz solar direta.',
  ),
  Plant(
    id: '19',
    name: 'Antúrio',
    description: 'Planta com flores vermelhas brilhantes.',
    careTips: 'Regue quando o solo estiver seco e mantenha em luz indireta.',
  ),
  Plant(
    id: '20',
    name: 'Copo-de-leite',
    description: 'Planta ornamental com flores elegantes.',
    careTips: 'Regue regularmente e mantenha em ambiente iluminado.',
  ),
  Plant(
    id: '21',
    name: 'Calathea',
    description: 'Planta com folhas decorativas e padrões únicos.',
    careTips: 'Mantenha o solo úmido e evite luz solar direta.',
  ),
  Plant(
    id: '22',
    name: 'Dracena',
    description: 'Planta com folhas longas e pontiagudas.',
    careTips: 'Regue moderadamente e mantenha em luz indireta.',
  ),
  Plant(
    id: '23',
    name: 'Chamaedorea',
    description: 'Palmeira pequena ideal para ambientes internos.',
    careTips: 'Regue regularmente e mantenha em ambiente fresco.',
  ),
  Plant(
    id: '24',
    name: 'Singônio',
    description: 'Planta trepadeira com folhas em formato de coração.',
    careTips: 'Regue quando o solo estiver seco e mantenha em sombra parcial.',
  ),
  Plant(
    id: '25',
    name: 'Lanterna Chinesa',
    description: 'Planta ornamental com flores suspensas.',
    careTips: 'Regue regularmente e mantenha em luz indireta.',
  ),
  Plant(
    id: '26',
    name: 'Ráfis',
    description: 'Palmeira pequena e decorativa.',
    careTips: 'Regue moderadamente e mantenha em ambiente iluminado.',
  ),
  Plant(
    id: '27',
    name: 'Violeta Africana',
    description: 'Planta com flores roxas vibrantes.',
    careTips: 'Regue com cuidado e mantenha em luz indireta.',
  ),
  Plant(
    id: '28',
    name: 'Gérbera',
    description: 'Planta com flores coloridas e vibrantes.',
    careTips: 'Regue regularmente e mantenha em ambiente iluminado.',
  ),
  Plant(
    id: '29',
    name: 'Azaléia',
    description: 'Planta com flores delicadas e coloridas.',
    careTips: 'Regue moderadamente e mantenha em ambiente fresco.',
  ),
  Plant(
    id: '30',
    name: 'Ciclâmen',
    description: 'Planta com flores invertidas e folhas decorativas.',
    careTips: 'Regue quando o solo estiver seco e mantenha em luz indireta.',
  ),
];