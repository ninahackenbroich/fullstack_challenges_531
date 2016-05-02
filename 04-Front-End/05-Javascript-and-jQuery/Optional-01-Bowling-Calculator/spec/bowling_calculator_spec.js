var expect = require('chai').expect;
var bowlingScore = require('../lib/bowling_calculator');

var scenarios = [
  {
    rolls: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    score: 0
  },
  {
    rolls: [9,1, 9,1, 9,1, 9,1, 9,1, 9,1, 9,1, 9,1, 9,1, 9,1, 9],
    score: 190
  },
  {
    rolls: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
    score: 300
  },
  {
    rolls: [0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 10,1,0],
    score: 11
  },
  {
    rolls: [0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 10, 1,0],
    score: 12
  },
  {
    rolls: [1,4, 2,8, 6,4, 7,3, 10, 10, 10, 9,1, 4,5, 6,4,9],
    score: 179
  }
]

describe('Bowling Score', function() {
  scenarios.forEach(function(scenario) {
    it ('should be ' + scenario.score + ' for rolls ' + scenario.rolls, function() {
      var computedScore = bowlingScore(scenario.rolls);
      expect(computedScore).to.eq(scenario.score);
    });
  });
});