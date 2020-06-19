# GitHub Actions for Firebase

This Action for [firebase-bolt](https://github.com/FirebaseExtended/bolt) enables compiling of Firebase RTDB security rules.

## Inputs

- `args` - **Required** -- the name of the `firebase` RTDB bolt file that will compile into a JSON file with the same name, without the bolt-extension (i.e. `database.rules.bolt` => `database.rules.json`)

## Example

```yaml
- name: Compile RTDB security rules
  uses: oddbit/firebase-bolt-action@master
  with:
    args: database.rules.bolt
```
