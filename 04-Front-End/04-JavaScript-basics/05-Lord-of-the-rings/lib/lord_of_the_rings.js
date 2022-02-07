const isGood = (soldierType) => {
  // TODO: return `true` if the soldierType is Good.
  // Hint: Hobbits, Elves, Dwarves and Eagles are Good
  const goods = ['Hobbits', 'Elves', 'Dwarves', 'Eagles'];
  return goods.includes(soldierType);
};

const buildSoldierObject = (battlefield) => {
  // TODO: Given a battlefield (String), return an object of forces.
  const newObject = {};
  battlefield.split(",").forEach((hero) => {
    newObject[hero.split(':')[0]] = Number.parseInt(hero.split(':')[1], 10);
  });
  return newObject;
};

const whoWinsTheWar = (battlefield) => {
  let pointGoods = 0;
  let pointBad = 0;
  battlefield.split(",").forEach((hero) => {
    if (isGood(hero.split(":")[0])) {
      pointGoods += Number.parseInt(hero.split(":")[1], 10);
    } else {
      pointBad += Number.parseInt(hero.split(":")[1], 10);
    }
  });
  if (pointGoods > pointBad) {
    return 'Good';
  }
  if (pointBad > pointGoods) {
    return 'Evil';
  }
  return 'Tie';
};


module.exports = { whoWinsTheWar, buildSoldierObject, isGood }; // Do not remove this line
