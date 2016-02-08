
open Ast_mapper
open Ast_helper
open Asttypes
open Longident

module Main = Typpx.Make.F(struct
    let tool_name = "ppx_package"
    let args = []
    let firstUntypedTransformation = Typpx.Default.untyped_identity
    module Typemod = Typpx.Default.Typemod
    module TypedTransformation = Typpx.Default.Typed_identity
    let lastUntypedTransformation = Typpx.Default.untyped_identity
  end)

let () = Main.run ()

(* This works, however... *)

(* let () = register "ppx_package" (fun _argv -> default_mapper) *)
