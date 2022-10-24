import 'models/game.dart';
import 'models/genre.dart';

const genresData = [
  Genre(
    id: 'g1',
    title: 'Action',
    imageUrl: 'action.jpg',
  ),
  Genre(
    id: 'g2',
    title: 'RPG',
    imageUrl: 'rpg.jpg',
  ),
  Genre(
    id: 'g3',
    title: 'FPS',
    imageUrl: 'fps.jpg',
  ),
  Genre(
    id: 'g4',
    title: 'Sports',
    imageUrl: 'sports.jpg',
  ),
  Genre(
    id: 'g5',
    title: 'Online',
    imageUrl: 'online.png',
  ),
  Genre(
    id: 'g6',
    title: 'Others',
    imageUrl: 'others.jpg',
  ),
];

const gamesData = [
  Game(
    id: 'g1',
    genres: [
      'g1',
    ],
    title: 'The Witcher 3',
    story:
        'In The Witcher 3 an ancient evil stirs, awakening. An evil that sows terror and abducts the young. An evil whose name is spoken only in whispers: the Wild Hunt. Led by four wraith commanders, this ravenous band of phantoms is the ultimate predator and has been for centuries. Its quarry: humans.',
    gameMode: GameMode.SinglePlayer,
    store: Store.Steam,
    imageUrl: 'The_Witcher_3.jpg',
    gameHours: 20,
    ratings: [
      98,
      96,
      95,
    ],
    isItForPC: true,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: true,
  ),
  Game(
    id: 'g2',
    genres: [
      'g1',
      'g2',
    ],
    title: 'Metal Gear V',
    story:
        'In the aftermath of the events of Ground Zeroes, Snake falls into a coma after the destruction of Mother Base, MSF\'s base of operations. Nine years later, Snake awakes from his coma and forms a new mercenary group, the Diamond Dogs',
    gameMode: GameMode.SinglePlayer,
    store: Store.Steam,
    imageUrl: 'MetalGearSolid5.jpg',
    gameHours: 45,
    ratings: [
      97,
      98,
      99,
    ],
    isItForPC: true,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: false,
  ),
  Game(
    id: 'g3',
    genres: [
      'g3',
    ],
    title: 'Cyberpunk 2077',
    story:
        'Cyberpunk 2077 is an open-world, action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification. You play as V, a mercenary outlaw going after a one-of-a-kind implant that is the key to immortality',
    gameMode: GameMode.SinglePlayer,
    store: Store.Steam,
    imageUrl: 'Cyberpunk-2077-2.jpg',
    gameHours: 60,
    ratings: [
      88,
      75,
      82,
    ],
    isItForPC: true,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: false,
  ),
  Game(
    id: 'g4',
    genres: [
      'g3',
    ],
    title: 'Red Dead Redemption',
    story:
        'Red Dead Redemption is a Western epic, set at the turn of the 20th century when the lawless and chaotic badlands began to give way to the expanding reach of government and the spread of the Industrial Age. The story of former outlaw, John Marston, Red Dead Redemption takes players on a great adventure across the American frontier',
    gameMode: GameMode.SinglePlayer,
    store: Store.Steam,
    imageUrl: 'Red_Dead_Redemption.jpg',
    gameHours: 50,
    ratings: [
      93,
      91,
      95,
    ],
    isItForPC: false,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: false,
  ),
  Game(
    id: 'g5',
    genres: [
      'g1',
      'g2',
      'g6',
    ],
    title: 'It Takes Two',
    story:
        'From Hazelight comes It Takes Two – an innovative co-op adventure where uniquely varied gameplay and emotional storytelling intertwine in a fantastical journey. Founded to push the creative boundaries of what’s possible in games, Hazelight is the award-winning studio behind the critically acclaimed A Way Out and Brothers: A Tale of Two Sons.',
    gameMode: GameMode.CoOp,
    store: Store.Microsoft,
    imageUrl: 'It_Takes_Two.jpg',
    gameHours: 13,
    ratings: [
      90,
      87,
      85,
    ],
    isItForPC: false,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: false,
  ),
  Game(
    id: 'g6',
    genres: [
      'g1',
      'g3',
      'g6',
    ],
    title: 'The Last of Us',
    story:
        'The Last of Us is a third-person Survival-Action game and PlayStation 3 exclusive featuring a unique character action driven storyline focused on the unlikely pairing of a young girl and a hardened scavenger in a post-apocalyptic gameworld. The game utilizes multiple gameplay mechanics, including "Dynamic Stealth,"',
    gameMode: GameMode.SinglePlayer,
    store: Store.Steam,
    imageUrl: 'The_Last_of_Us_Part_I.jpg',
    gameHours: 18,
    ratings: [
      82,
      85,
      86,
    ],
    isItForPC: false,
    isItForPS: true,
    isItForXbox: false,
    isItForSwitch: false,
  ),
  Game(
    id: 'g7',
    genres: [
      'g1',
      'g2',
      'g3',
      'g6',
    ],
    title: 'Pubg',
    story:
        'PlayerUnknown\'s Battlegrounds is a last-man-standing shooter being developed with community feedback. Starting with nothing, players must fight to locate weapons and supplies in a battle to be the lone survivor. This realistic, high tension game is set on a massive 8x8 km island with a level of detail that showcases Unreal Engine 4\'s capabilities.',
    gameMode: GameMode.MultiPlayer,
    store: Store.Steam,
    imageUrl: 'pubg.jpg',
    gameHours: 125,
    ratings: [
      83,
      91,
      87,
    ],
    isItForPC: true,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: true,
  ),
  Game(
    id: 'g8',
    genres: [
      'g4',
      'g5',
    ],
    title: 'Super Mario Odyssey',
    story:
        'Mario embarks on a new journey through unknown worlds, running and jumping through huge 3D worlds in the first sandbox-style Mario game since Super Mario 64 and Super Mario Sunshine. Set sail between expansive worlds aboard an airship, and perform all-new actions, such as throwing Mario\'s cap',
    gameMode: GameMode.MultiPlayer,
    store: Store.Epic,
    imageUrl: 'Super_Mario_Odyssey.jpg',
    gameHours: 27,
    ratings: [
      82,
      90,
      85,
    ],
    isItForPC: false,
    isItForPS: false,
    isItForXbox: false,
    isItForSwitch: true,
  ),
  Game(
    id: 'g9',
    genres: [
      'g4',
      'g5',
    ],
    title: 'FIFA 23',
    story:
        'FIFA 23 brings The World’s Game to the pitch, with HyperMotion2 Technology that delivers even more gameplay realism, men’s and women’s FIFA World Cup™ coming during the season, women’s club teams, cross-play features, and more',
    gameMode: GameMode.MultiPlayer,
    store: Store.Steam,
    imageUrl: 'FIFA_23.jpg',
    gameHours: 75,
    ratings: [
      80,
      81,
      75,
    ],
    isItForPC: true,
    isItForPS: true,
    isItForXbox: true,
    isItForSwitch: true,
  ),
];
