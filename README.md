# nat-sensor-compass

- [Documentation](http://natjs.com/#/reference/sensor/compass)
- [Github](https://github.com/natjs/weex-nat-sensor-compass)

## Installation
```
weexpack plugin add nat-sensor-compass
```

```
npm install natjs --save
```

## Usage

Use in weex project (`.vue`/`.we`)

```html
<script>
import Nat from 'natjs'

// get
Nat.compass.get((err, ret) => {
    console.log(ret)
})

// watch
Nat.compass.watch((err, ret) => {
    console.log(ret)
})

// clearWatch
Nat.compass.clearWatch()

</script>
```

See the Nat [Documentation](http://natjs.com/) for more details.
