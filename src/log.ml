(*
 * This file is part of Baardskeerder.
 *
 * Copyright (C) 2011 Incubaid BVBA
 *
 * Baardskeerder is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Baardskeerder is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Baardskeerder.  If not, see <http://www.gnu.org/licenses/>.
 *)

open Entry
open Base
module type LOG = sig
  type t
  type slab
  val init: ?d:int -> string  -> unit
  val write : t -> slab -> unit 
  val last  : t -> pos
  val next  : t -> pos
  val read  : t -> pos -> entry
  val sync  : t -> unit
  val make  : string -> t
  val close : t -> unit
  val make_slab : t -> slab
  val add : slab -> entry -> pos
  val clear: t -> unit
  val get_d: t -> int
  val dump: ?out:out_channel -> t -> unit
  val string_of_slab : slab -> string
end
