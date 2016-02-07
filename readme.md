
## Directory structure

The TyPPX-based ppx extension is in `preprocessor`. It is a trivial identity
mapper.

The app that uses it is in `app`.

## Steps to reproduce problem

`make up` in the `preprocessor` directory will build the ppx extension and pin
it on opam.

After that, opening `app/example.ml` in some editor with Merlin active will
display strange, unrelated errors.

<img width="434" alt="screen shot 2016-02-07 at 10 06 41 pm" src="https://cloud.githubusercontent.com/assets/4328341/12872782/1e1d8994-cde7-11e5-861b-336f46cc422c.png">

I'm guessing these are due to the ppx preprocessor not being loaded correctly,
as the errors go away when removing the `ppx_package` dependency from `_tags`,
or when changing to an `Ast_mapper`-based mapper.

