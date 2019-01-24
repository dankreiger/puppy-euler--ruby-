const pupEuler1 = require('../pupEuler1');
const pupEuler2 = require('../pupEuler2');

test('pupEuler1', () => {
  expect(pupEuler1()).toBe(233168);
});

test('pupEuler2', () => {
    expect(pupEuler2()).toBe(4613732);
});