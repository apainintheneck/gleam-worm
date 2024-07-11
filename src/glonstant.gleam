/// Persist a value with a given name. The name must be globally unique, so the current recommendation is to
/// include your library or module name as a prefix on the name.
///
/// ## Examples
///
/// ```gleam
/// pub type RegexCache {
///   RegexCache(greeting: regex.Regex, name: regex.Regex)
/// }
///
/// fn regexes() -> RegexCache {
///   use <- glonstant.persist("my_app")
///   RegexCache(regex.from_string("^\\w+"), regex.from_string("\\w+$"))
/// }
/// ```
@external(erlang, "glonstant_ffi", "persist")
@external(javascript, "./glonstant_ffi.mjs", "persist")
pub fn persist(name: String, generator: fn() -> a) -> a
