# clown-car

[![Madlib Project Badge](https://img.shields.io/badge/madlib-purple?logo=github&logoSize=auto)](//github.com/madlib-lang/madlib) <!-- <!-- $MADLIB.projectBadge --> -->
[![clown-car v0.0.0](https://img.shields.io/badge/v0.0.0-purple?label=version)](//github.com/brekk/pilcrow) <!-- <!-- $MADLIB.json.version --> -->

a helpful addition to the `party-bus`

## Usage

Use `clown-car` to automagically generate a logger file for `party-bus`, so you don't have to maintain the boilerplate.

Here's an example `.clowncar` file:
```
// comments are allowed, but only single line
// this is the base tag value: `PartyBus.tag("body")`
bicycle 
- body // this is an implicit nested tag (so: `PartyBus.tagWithScope("bicycle", ["body"])`)
- body:fork // this is a nested implicit tag (so: `PartyBus.tagWithScope("bicycle", ["body", "fork"])` and this becomes `bodyFork`)
- config = xyz // `config = PartyBus.tagWithScope("bicycle", ["xyz"])`
- ref = config:seat // `ref = PartyBus.tagWithScope("bicycle", ["config", "seat"])`
- handlebar
- handlebar:brake
- seat
- wheel
- wheel:spoke
- wheel:tire
- wheel:shifter
- wheel:brake
- wheel:brake:front
- wheel:brake:rear

motorcycle = bicycle-ish // second base, `log.motorcycle = PartyBus.tag("bicycle-ish")`

motoGogo = motorcycle:vroom // `log.motoGogo = PartyBus.tagWithScope("motorcycle", ["vroom"])`

skibbo = nub:jub:grub
```

## Dependencies

<!-- $MADLIB.dependencies -->
