(* The MIT License (MIT)

   Copyright (c) 2014 Nicolas Ojeda Bar <n.oje.bar@gmail.com>

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in
   all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE. *)

(** Various utilities *)

val base64_encode : string -> string
(* val base64_encode_nopad : string -> string *)
val base64_decode : string -> string
(* val zlib_compress : string -> string *)
(* val zlib_uncompress : string -> string *)

(** {2 Modified UTF7} *)

val encode_mutf7 : string -> string
val decode_mutf7 : string -> string

(** {2 List} *)

val option_map : ('a -> 'b option) -> 'a list -> 'b list
(** Map with a function returning an option, dropping all [None] results and
    extracting all [Some] ones. *)

(** {2 String} *)
val compare_ci : string -> string -> int

val log : [ `Client | `Server ] -> string -> unit

val log_line_max_length : int option ref
(** Log lines will be truncated to that length when logged.
    This length does not include the ["C: "] or ["S: "] prefix.
    The default is [None], i.e. no truncation takes place. *)
