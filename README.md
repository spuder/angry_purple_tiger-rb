# AngryPurpleTiger

Ruby port of [helum/angry-purple-tiger](https://github.com/helium/angry-purple-tiger)

Takes any string and converts it into a friendly human phrase consisting of 3 words

`<adjective> <color> <animal>`

This naming convention is used in the helium network for naming [hundreds of thousands of hotspots](https://explorer.helium.com/hotspots). 

![](./images/helium.png)

There are `256^3` (`16,777,216`) possible combinations of 3 letter words. 
This algorithm is deterministic in that the same input will always produce the same output, however it is not guaranteed to be free from collisions. 


| input | 3 words |
| --- | --- |
| `my ugly input string` |  `rapid grey rattlesnake` | 
| `C89A436B-66C5-4427-9480-A67BB3211943` |  `petite tin mantis` | 
| `DE:AD:BE:EF:CO:FE` | `formal berry kitten` | 

## Usage

```ruby
require angry_purple_tiger
AngryPurpleTiger.new('my ugly input string')
=> "rapid grey rattlesnake"
```