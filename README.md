# nat-sensor-compass

## Installation
```
weexpack plugin add nat-sensor-compass
```

```
npm install weex-nat --save
```

## Usage

Use in weex file (.we)

```html
<script>
import 'Nat' from 'weex-nat'

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
