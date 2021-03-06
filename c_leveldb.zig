pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
const struct_unnamed_1 = extern struct {
    __clang_max_align_nonce1: c_longlong,
    __clang_max_align_nonce2: c_longdouble,
};
pub const max_align_t = struct_unnamed_1;
pub const int_least64_t = i64;
pub const uint_least64_t = u64;
pub const int_fast64_t = i64;
pub const uint_fast64_t = u64;
pub const int_least32_t = i32;
pub const uint_least32_t = u32;
pub const int_fast32_t = i32;
pub const uint_fast32_t = u32;
pub const int_least16_t = i16;
pub const uint_least16_t = u16;
pub const int_fast16_t = i16;
pub const uint_fast16_t = u16;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct_leveldb_t = @OpaqueType();
pub const leveldb_t = struct_leveldb_t;
pub const struct_leveldb_cache_t = @OpaqueType();
pub const leveldb_cache_t = struct_leveldb_cache_t;
pub const struct_leveldb_comparator_t = @OpaqueType();
pub const leveldb_comparator_t = struct_leveldb_comparator_t;
pub const struct_leveldb_env_t = @OpaqueType();
pub const leveldb_env_t = struct_leveldb_env_t;
pub const struct_leveldb_filelock_t = @OpaqueType();
pub const leveldb_filelock_t = struct_leveldb_filelock_t;
pub const struct_leveldb_filterpolicy_t = @OpaqueType();
pub const leveldb_filterpolicy_t = struct_leveldb_filterpolicy_t;
pub const struct_leveldb_iterator_t = @OpaqueType();
pub const leveldb_iterator_t = struct_leveldb_iterator_t;
pub const struct_leveldb_logger_t = @OpaqueType();
pub const leveldb_logger_t = struct_leveldb_logger_t;
pub const struct_leveldb_options_t = @OpaqueType();
pub const leveldb_options_t = struct_leveldb_options_t;
pub const struct_leveldb_randomfile_t = @OpaqueType();
pub const leveldb_randomfile_t = struct_leveldb_randomfile_t;
pub const struct_leveldb_readoptions_t = @OpaqueType();
pub const leveldb_readoptions_t = struct_leveldb_readoptions_t;
pub const struct_leveldb_seqfile_t = @OpaqueType();
pub const leveldb_seqfile_t = struct_leveldb_seqfile_t;
pub const struct_leveldb_snapshot_t = @OpaqueType();
pub const leveldb_snapshot_t = struct_leveldb_snapshot_t;
pub const struct_leveldb_writablefile_t = @OpaqueType();
pub const leveldb_writablefile_t = struct_leveldb_writablefile_t;
pub const struct_leveldb_writebatch_t = @OpaqueType();
pub const leveldb_writebatch_t = struct_leveldb_writebatch_t;
pub const struct_leveldb_writeoptions_t = @OpaqueType();
pub const leveldb_writeoptions_t = struct_leveldb_writeoptions_t;
pub extern fn leveldb_open(options: ?*const leveldb_options_t, name: [*c]const u8, errptr: [*c][*c]u8) ?*leveldb_t;
pub extern fn leveldb_close(db: ?*leveldb_t) void;
pub extern fn leveldb_put(db: ?*leveldb_t, options: ?*const leveldb_writeoptions_t, key: [*c]const u8, keylen: usize, val: [*c]const u8, vallen: usize, errptr: [*c][*c]u8) void;
pub extern fn leveldb_delete(db: ?*leveldb_t, options: ?*const leveldb_writeoptions_t, key: [*c]const u8, keylen: usize, errptr: [*c][*c]u8) void;
pub extern fn leveldb_write(db: ?*leveldb_t, options: ?*const leveldb_writeoptions_t, batch: ?*leveldb_writebatch_t, errptr: [*c][*c]u8) void;
pub extern fn leveldb_get(db: ?*leveldb_t, options: ?*const leveldb_readoptions_t, key: [*]const u8, keylen: usize, vallen: [*c]usize, errptr: [*c][*c]u8) [*c]u8;
pub extern fn leveldb_create_iterator(db: ?*leveldb_t, options: ?*const leveldb_readoptions_t) ?*leveldb_iterator_t;
pub extern fn leveldb_create_snapshot(db: ?*leveldb_t) ?*const leveldb_snapshot_t;
pub extern fn leveldb_release_snapshot(db: ?*leveldb_t, snapshot: ?*const leveldb_snapshot_t) void;
pub extern fn leveldb_property_value(db: ?*leveldb_t, propname: [*c]const u8) [*c]u8;
pub extern fn leveldb_approximate_sizes(db: ?*leveldb_t, num_ranges: c_int, range_start_key: [*c]const [*c]const u8, range_start_key_len: [*c]const usize, range_limit_key: [*c]const [*c]const u8, range_limit_key_len: [*c]const usize, sizes: [*c]u64) void;
pub extern fn leveldb_compact_range(db: ?*leveldb_t, start_key: [*c]const u8, start_key_len: usize, limit_key: [*c]const u8, limit_key_len: usize) void;
pub extern fn leveldb_destroy_db(options: ?*const leveldb_options_t, name: [*c]const u8, errptr: [*c][*c]u8) void;
pub extern fn leveldb_repair_db(options: ?*const leveldb_options_t, name: [*c]const u8, errptr: [*c][*c]u8) void;
pub extern fn leveldb_iter_destroy(?*leveldb_iterator_t) void;
pub extern fn leveldb_iter_valid(?*const leveldb_iterator_t) u8;
pub extern fn leveldb_iter_seek_to_first(?*leveldb_iterator_t) void;
pub extern fn leveldb_iter_seek_to_last(?*leveldb_iterator_t) void;
pub extern fn leveldb_iter_seek(?*leveldb_iterator_t, k: [*c]const u8, klen: usize) void;
pub extern fn leveldb_iter_next(?*leveldb_iterator_t) void;
pub extern fn leveldb_iter_prev(?*leveldb_iterator_t) void;
pub extern fn leveldb_iter_key(?*const leveldb_iterator_t, klen: [*c]usize) [*c]const u8;
pub extern fn leveldb_iter_value(?*const leveldb_iterator_t, vlen: [*c]usize) [*c]const u8;
pub extern fn leveldb_iter_get_error(?*const leveldb_iterator_t, errptr: [*c][*c]u8) void;
pub extern fn leveldb_writebatch_create() ?*leveldb_writebatch_t;
pub extern fn leveldb_writebatch_destroy(?*leveldb_writebatch_t) void;
pub extern fn leveldb_writebatch_clear(?*leveldb_writebatch_t) void;
pub extern fn leveldb_writebatch_put(?*leveldb_writebatch_t, key: [*c]const u8, klen: usize, val: [*c]const u8, vlen: usize) void;
pub extern fn leveldb_writebatch_delete(?*leveldb_writebatch_t, key: [*c]const u8, klen: usize) void;
pub extern fn leveldb_writebatch_iterate(?*const leveldb_writebatch_t, state: ?*c_void, put: ?fn (?*c_void, [*c]const u8, usize, [*c]const u8, usize) callconv(.C) void, deleted: ?fn (?*c_void, [*c]const u8, usize) callconv(.C) void) void;
pub extern fn leveldb_writebatch_append(destination: ?*leveldb_writebatch_t, source: ?*const leveldb_writebatch_t) void;
pub extern fn leveldb_options_create() ?*leveldb_options_t;
pub extern fn leveldb_options_destroy(?*leveldb_options_t) void;
pub extern fn leveldb_options_set_comparator(?*leveldb_options_t, ?*leveldb_comparator_t) void;
pub extern fn leveldb_options_set_filter_policy(?*leveldb_options_t, ?*leveldb_filterpolicy_t) void;
pub extern fn leveldb_options_set_create_if_missing(?*leveldb_options_t, u8) void;
pub extern fn leveldb_options_set_error_if_exists(?*leveldb_options_t, u8) void;
pub extern fn leveldb_options_set_paranoid_checks(?*leveldb_options_t, u8) void;
pub extern fn leveldb_options_set_env(?*leveldb_options_t, ?*leveldb_env_t) void;
pub extern fn leveldb_options_set_info_log(?*leveldb_options_t, ?*leveldb_logger_t) void;
pub extern fn leveldb_options_set_write_buffer_size(?*leveldb_options_t, usize) void;
pub extern fn leveldb_options_set_max_open_files(?*leveldb_options_t, c_int) void;
pub extern fn leveldb_options_set_cache(?*leveldb_options_t, ?*leveldb_cache_t) void;
pub extern fn leveldb_options_set_block_size(?*leveldb_options_t, usize) void;
pub extern fn leveldb_options_set_block_restart_interval(?*leveldb_options_t, c_int) void;
pub extern fn leveldb_options_set_max_file_size(?*leveldb_options_t, usize) void;
pub const leveldb_no_compression = @enumToInt(enum_unnamed_2.leveldb_no_compression);
pub const leveldb_snappy_compression = @enumToInt(enum_unnamed_2.leveldb_snappy_compression);
const enum_unnamed_2 = extern enum(c_int) {
    leveldb_no_compression = 0,
    leveldb_snappy_compression = 1,
    _,
};
pub extern fn leveldb_options_set_compression(?*leveldb_options_t, c_int) void;
pub extern fn leveldb_comparator_create(state: ?*c_void, destructor: ?fn (?*c_void) callconv(.C) void, compare: ?fn (?*c_void, [*c]const u8, usize, [*c]const u8, usize) callconv(.C) c_int, name: ?fn (?*c_void) callconv(.C) [*c]const u8) ?*leveldb_comparator_t;
pub extern fn leveldb_comparator_destroy(?*leveldb_comparator_t) void;
pub extern fn leveldb_filterpolicy_create(state: ?*c_void, destructor: ?fn (?*c_void) callconv(.C) void, create_filter: ?fn (?*c_void, [*c]const [*c]const u8, [*c]const usize, c_int, [*c]usize) callconv(.C) [*c]u8, key_may_match: ?fn (?*c_void, [*c]const u8, usize, [*c]const u8, usize) callconv(.C) u8, name: ?fn (?*c_void) callconv(.C) [*c]const u8) ?*leveldb_filterpolicy_t;
pub extern fn leveldb_filterpolicy_destroy(?*leveldb_filterpolicy_t) void;
pub extern fn leveldb_filterpolicy_create_bloom(bits_per_key: c_int) ?*leveldb_filterpolicy_t;
pub extern fn leveldb_readoptions_create() ?*leveldb_readoptions_t;
pub extern fn leveldb_readoptions_destroy(?*leveldb_readoptions_t) void;
pub extern fn leveldb_readoptions_set_verify_checksums(?*leveldb_readoptions_t, u8) void;
pub extern fn leveldb_readoptions_set_fill_cache(?*leveldb_readoptions_t, u8) void;
pub extern fn leveldb_readoptions_set_snapshot(?*leveldb_readoptions_t, ?*const leveldb_snapshot_t) void;
pub extern fn leveldb_writeoptions_create() ?*leveldb_writeoptions_t;
pub extern fn leveldb_writeoptions_destroy(?*leveldb_writeoptions_t) void;
pub extern fn leveldb_writeoptions_set_sync(?*leveldb_writeoptions_t, u8) void;
pub extern fn leveldb_cache_create_lru(capacity: usize) ?*leveldb_cache_t;
pub extern fn leveldb_cache_destroy(cache: ?*leveldb_cache_t) void;
pub extern fn leveldb_create_default_env() ?*leveldb_env_t;
pub extern fn leveldb_env_destroy(?*leveldb_env_t) void;
pub extern fn leveldb_env_get_test_directory(?*leveldb_env_t) [*c]u8;
pub extern fn leveldb_free(ptr: ?*c_void) void;
pub extern fn leveldb_major_version() c_int;
pub extern fn leveldb_minor_version() c_int;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __WINT_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __CHAR16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __CHAR32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __UINT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT_LEAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT_LEAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __UINT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT_FAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT_FAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const NULL = @compileError("unable to translate C expr: expected ')'' here");
pub const __stdint_join3 = @compileError("unable to translate C expr: unexpected token Id{ .HashHash = void }");
pub const __int_c_join = @compileError("unable to translate C expr: unexpected token Id{ .HashHash = void }");
pub const __uint_c = @compileError("unable to translate C expr: expected ',' or ')'");
pub const __UINT64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __FINITE_MATH_ONLY__ = 0;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SEG_GS = 1;
pub const INT_FAST64_MAX = __INT_LEAST64_MAX;
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_MAX__ = 127;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT64_FMTX__ = "lX";
pub inline fn va_start(ap: var, param: var) @TypeOf(__builtin_va_start(ap, param)) {
    return __builtin_va_start(ap, param);
}
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __SSE__ = 1;
pub const __INT_LEAST16_MIN = INT64_MIN;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __NO_MATH_INLINES = 1;
pub const __SIZEOF_FLOAT128__ = 16;
pub const __INT_FAST32_FMTd__ = "d";
pub const __STDC_UTF_16__ = 1;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __ATOMIC_ACQUIRE = 2;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __INTMAX_FMTi__ = "li";
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const INT_FAST8_MIN = __INT_LEAST8_MIN;
pub const __INT_MAX__ = 2147483647;
pub const __INT_LEAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __SIZEOF_INT128__ = 16;
pub const __INT64_MAX__ = @as(c_long, 9223372036854775807);
pub const __DBL_MIN_10_EXP__ = -307;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub inline fn INT64_C(v: var) @TypeOf(__int_c(v, __int64_c_suffix)) {
    return __int_c(v, __int64_c_suffix);
}
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __UINT8_FMTu__ = "hhu";
pub const __INT_FAST16_MAX__ = 32767;
pub const __LP64__ = 1;
pub const __SIZE_FMTx__ = "lx";
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __UINT8_FMTX__ = "hhX";
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __PTRDIFF_FMTi__ = "li";
pub const INT_FAST32_MAX = __INT_LEAST32_MAX;
pub const __FLT_MIN_EXP__ = -125;
pub const __SIZEOF_LONG__ = 8;
pub const INT_FAST16_MAX = __INT_LEAST16_MAX;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __FLT_EVAL_METHOD__ = 0;
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __code_model_small_ = 1;
pub const __ELF__ = 1;
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const _LP64 = 1;
pub const __FLT_MAX_EXP__ = 128;
pub const UINT8_MAX = UINT8_C(255);
pub const __DBL_HAS_DENORM__ = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const __INT_LEAST64_FMTd__ = "ld";
pub const SIZE_MAX = __SIZE_MAX__;
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __amdfam10 = 1;
pub const __UINT_FAST32_FMTX__ = "X";
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __LZCNT__ = 1;
pub const __int64_c_suffix = __INT64_C_SUFFIX__;
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const __clang_patchlevel__ = 0;
pub const __UINT64_FMTu__ = "lu";
pub inline fn __INTN_MAX(n: var) @TypeOf(__stdint_join3(INT, n, _MAX)) {
    return __stdint_join3(INT, n, _MAX);
}
pub const UINT_FAST64_MAX = __UINT_LEAST64_MAX;
pub const INT_FAST32_MIN = __INT_LEAST32_MIN;
pub const __SIZEOF_SHORT__ = 2;
pub const __LDBL_DIG__ = 18;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __int_least8_t = int64_t;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __MMX__ = 1;
pub const __NO_INLINE__ = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __LITTLE_ENDIAN__ = 1;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __VERSION__ = "Clang 9.0.0 (tags/RELEASE_900/final)";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __INT_LEAST16_MAX__ = 32767;
pub const INT16_MAX = INT16_C(32767);
pub const __SCHAR_MAX__ = 127;
pub const __GNUC_MINOR__ = 2;
pub const __UINT32_FMTx__ = "x";
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST32_FMTu__ = "u";
pub const INT_LEAST16_MAX = __INT_LEAST16_MAX;
pub const WINT_MIN = __UINTN_C(__WINT_WIDTH__, 0);
pub const __UINT8_FMTx__ = "hhx";
pub const WCHAR_MIN = __INTN_MIN(__WCHAR_WIDTH__);
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const INT64_MIN = -INT64_C(9223372036854775807) - 1;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __clang__ = 1;
pub const __INT_LEAST32_MAX = INT64_MAX;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __UINTPTR_FMTu__ = "lu";
pub const UINT_FAST32_MAX = __UINT_LEAST32_MAX;
pub const __3dNOW__ = 1;
pub const __unix__ = 1;
pub const __INT_FAST32_TYPE__ = c_int;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub inline fn __va_copy(d: var, s: var) @TypeOf(__builtin_va_copy(d, s)) {
    return __builtin_va_copy(d, s);
}
pub const __UINT16_FMTx__ = "hx";
pub const INT8_MAX = INT8_C(127);
pub const __UINT_LEAST32_FMTo__ = "o";
pub inline fn __INTN_MIN(n: var) @TypeOf(__stdint_join3(INT, n, _MIN)) {
    return __stdint_join3(INT, n, _MIN);
}
pub const __FLT_MIN_10_EXP__ = -37;
pub const __int_least32_t = int64_t;
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const UINT_FAST8_MAX = __UINT_LEAST8_MAX;
pub const __GNUC_VA_LIST = 1;
pub const __uint_least16_t = uint64_t;
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZE_FMTX__ = "lX";
pub inline fn UINT32_C(v: var) @TypeOf(__uint_c(v, __int32_c_suffix)) {
    return __uint_c(v, __int32_c_suffix);
}
pub const __INT16_FMTd__ = "hd";
pub const __clang_version__ = "9.0.0 (tags/RELEASE_900/final)";
pub const __ATOMIC_RELEASE = 3;
pub const __UINT_FAST64_FMTX__ = "lX";
pub const WINT_MAX = __UINTN_MAX(__WINT_WIDTH__);
pub const __INTMAX_FMTd__ = "ld";
pub const INT_FAST16_MIN = __INT_LEAST16_MIN;
pub const __SEG_FS = 1;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const INT32_MIN = -INT32_C(2147483647) - 1;
pub inline fn __INTN_C(n: var, v: var) @TypeOf(__stdint_join3(INT, n, _C(v))) {
    return __stdint_join3(INT, n, _C(v));
}
pub const __WINT_WIDTH__ = 32;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __gnu_linux__ = 1;
pub const _DEBUG = 1;
pub const __UINTPTR_WIDTH__ = 64;
pub const __INT_LEAST32_FMTi__ = "i";
pub const INTMAX_MIN = -__INTMAX_MAX__ - 1;
pub const PTRDIFF_MIN = -__PTRDIFF_MAX__ - 1;
pub const __WCHAR_WIDTH__ = 32;
pub const __UINT16_FMTX__ = "hX";
pub const UINT_LEAST8_MAX = __UINT_LEAST8_MAX;
pub const unix = 1;
pub const INT64_MAX = INT64_C(9223372036854775807);
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT64_FMTd__ = "ld";
pub const __SSE3__ = 1;
pub const __UINT16_MAX__ = 65535;
pub const __ATOMIC_RELAXED = 0;
pub const __UINT_LEAST32_MAX = UINT64_MAX;
pub const __SSE4A__ = 1;
pub const INT32_MAX = INT32_C(2147483647);
pub const INT_FAST8_MAX = __INT_LEAST8_MAX;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const INT16_MIN = -INT16_C(32767) - 1;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __SSE2__ = 1;
pub const __STDC__ = 1;
pub const __UINT_LEAST16_MAX = UINT64_MAX;
pub const __INT_FAST16_TYPE__ = c_short;
pub const __UINT64_C_SUFFIX__ = UL;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __CHAR_BIT__ = 8;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const linux = 1;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INTMAX_WIDTH__ = 64;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __FLOAT128__ = 1;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const UINT_LEAST64_MAX = __UINT_LEAST64_MAX;
pub const __x86_64 = 1;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT8_FMTd__ = "hhd";
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINT8_MAX__ = 255;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __clang_minor__ = 0;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __WCHAR_TYPE__ = c_int;
pub const __INT_FAST64_FMTd__ = "ld";
pub const INT_LEAST64_MIN = __INT_LEAST64_MIN;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __seg_fs = __attribute__(address_space(257));
pub const __UINTMAX_FMTX__ = "lX";
pub const __INT16_FMTi__ = "hi";
pub const __INT_LEAST16_MAX = INT64_MAX;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __PRFCHW__ = 1;
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __uint_least32_t = uint64_t;
pub const INTPTR_MIN = -__INTPTR_MAX__ - 1;
pub const UINT64_MAX = UINT64_C(18446744073709551615);
pub const __UINT32_FMTu__ = "u";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __uint_least8_t = uint64_t;
pub const __amd64__ = 1;
pub const __INT64_C_SUFFIX__ = L;
pub inline fn INT16_C(v: var) @TypeOf(__int_c(v, __int16_c_suffix)) {
    return __int_c(v, __int16_c_suffix);
}
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __INT_LEAST8_MIN = INT64_MIN;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SSE2_MATH__ = 1;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __POPCNT__ = 1;
pub const __POINTER_WIDTH__ = 64;
pub const __UINT64_FMTx__ = "lx";
pub const __ATOMIC_ACQ_REL = 4;
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __STDC_HOSTED__ = 1;
pub const __GNUC__ = 4;
pub const __INT_FAST32_FMTi__ = "i";
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __seg_gs = __attribute__(address_space(256));
pub const __FXSR__ = 1;
pub const __UINT64_FMTo__ = "lo";
pub const __int_least16_t = int64_t;
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __INT_LEAST8_MAX = INT64_MAX;
pub const UINT_FAST16_MAX = __UINT_LEAST16_MAX;
pub const __uint_least64_t = uint64_t;
pub const __UINT_LEAST64_FMTo__ = "lo";
pub inline fn INT32_C(v: var) @TypeOf(__int_c(v, __int32_c_suffix)) {
    return __int_c(v, __int32_c_suffix);
}
pub const __STDC_UTF_32__ = 1;
pub const __PTRDIFF_WIDTH__ = 64;
pub const __SIZE_WIDTH__ = 64;
pub const __INT_LEAST32_MIN = INT64_MIN;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT_LEAST16_FMTd__ = "hd";
pub inline fn __int_c(v: var, suffix: var) @TypeOf(__int_c_join(v, suffix)) {
    return __int_c_join(v, suffix);
}
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const UINT32_MAX = UINT32_C(4294967295);
pub const __UINT16_FMTu__ = "hu";
pub const __DBL_MANT_DIG__ = 53;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const INT_LEAST8_MIN = __INT_LEAST8_MIN;
pub const __INT_LEAST64_FMTi__ = "li";
pub const __GNUC_STDC_INLINE__ = 1;
pub const __UINT32_FMTX__ = "X";
pub const __DBL_DIG__ = 15;
pub const __SHRT_MAX__ = 32767;
pub inline fn va_copy(dest: var, src: var) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub const __ATOMIC_CONSUME = 1;
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __INT32_FMTd__ = "d";
pub const __INT8_MAX__ = 127;
pub const __FLT_DECIMAL_DIG__ = 9;
pub inline fn UINT64_C(v: var) @TypeOf(__uint_c(v, __int64_c_suffix)) {
    return __uint_c(v, __int64_c_suffix);
}
pub const __INT_LEAST32_FMTd__ = "d";
pub const __UINT8_FMTo__ = "hho";
pub const __amdfam10__ = 1;
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __INTPTR_FMTi__ = "li";
pub const __UINT32_FMTo__ = "o";
pub const __UINT_FAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __GXX_ABI_VERSION = 1002;
pub const __tune_amdfam10__ = 1;
pub const INTMAX_MAX = __INTMAX_MAX__;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const INT_LEAST64_MAX = __INT_LEAST64_MAX;
pub const INT_LEAST16_MIN = __INT_LEAST16_MIN;
pub const __int_least64_t = int64_t;
pub const __INT32_TYPE__ = c_int;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __UINTPTR_FMTX__ = "lX";
pub const __INT8_FMTi__ = "hhi";
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub inline fn UINTMAX_C(v: var) @TypeOf(__int_c(v, __UINTMAX_C_SUFFIX__)) {
    return __int_c(v, __UINTMAX_C_SUFFIX__);
}
pub const __DBL_MIN_EXP__ = -1021;
pub const __INT_LEAST64_MIN = INT64_MIN;
pub const __INT64_FMTi__ = "li";
pub const __INT_FAST64_FMTi__ = "li";
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __clang_major__ = 9;
pub const __INT16_MAX__ = 32767;
pub const __linux = 1;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const INT_LEAST32_MAX = __INT_LEAST32_MAX;
pub const __UINT16_FMTo__ = "ho";
pub const __INT_LEAST64_MAX = INT64_MAX;
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const __UINT_LEAST8_MAX__ = 255;
pub const UINT16_MAX = UINT16_C(65535);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const INT_FAST64_MIN = __INT_LEAST64_MIN;
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __unix = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __SSE_MATH__ = 1;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __llvm__ = 1;
pub const __DBL_MAX_EXP__ = 1024;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const SIG_ATOMIC_MAX = __INTN_MAX(__SIG_ATOMIC_WIDTH__);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __linux__ = 1;
pub const __INT16_TYPE__ = c_short;
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINT_LEAST64_MAX = UINT64_MAX;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __3dNOW_A__ = 1;
pub const __FLT_RADIX__ = 2;
pub const __amd64 = 1;
pub const INT_LEAST8_MAX = __INT_LEAST8_MAX;
pub const __WINT_MAX__ = @as(c_uint, 4294967295);
pub const __int8_c_suffix = __INT64_C_SUFFIX__;
pub const __UINTPTR_FMTo__ = "lo";
pub const __INT32_MAX__ = 2147483647;
pub const __UINT_LEAST8_MAX = UINT64_MAX;
pub const __INTPTR_FMTd__ = "ld";
pub inline fn va_arg(ap: var, type_1: var) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub inline fn __UINTN_C(n: var, v: var) @TypeOf(__stdint_join3(UINT, n, _C(v))) {
    return __stdint_join3(UINT, n, _C(v));
}
pub const __INTPTR_WIDTH__ = 64;
pub const __int16_c_suffix = __INT64_C_SUFFIX__;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT32_FMTi__ = "i";
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __UINT_FAST16_FMTo__ = "ho";
pub inline fn __UINTN_MAX(n: var) @TypeOf(__stdint_join3(UINT, n, _MAX)) {
    return __stdint_join3(UINT, n, _MAX);
}
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub inline fn UINT16_C(v: var) @TypeOf(__uint_c(v, __int16_c_suffix)) {
    return __uint_c(v, __int16_c_suffix);
}
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub inline fn INTMAX_C(v: var) @TypeOf(__int_c(v, __INTMAX_C_SUFFIX__)) {
    return __int_c(v, __INTMAX_C_SUFFIX__);
}
pub inline fn offsetof(t: var, d: var) @TypeOf(__builtin_offsetof(t, d)) {
    return __builtin_offsetof(t, d);
}
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const UINT_LEAST16_MAX = __UINT_LEAST16_MAX;
pub const INT_LEAST32_MIN = __INT_LEAST32_MIN;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT_FAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const SIG_ATOMIC_MIN = __INTN_MIN(__SIG_ATOMIC_WIDTH__);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_FAST32_FMTx__ = "x";
pub const __PTRDIFF_FMTd__ = "ld";
pub const INT8_MIN = -INT8_C(127) - 1;
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __WCHAR_MAX__ = 2147483647;
pub const __ATOMIC_SEQ_CST = 5;
pub inline fn UINT8_C(v: var) @TypeOf(__uint_c(v, __int8_c_suffix)) {
    return __uint_c(v, __int8_c_suffix);
}
pub const __LDBL_MANT_DIG__ = 64;
pub const UINT_LEAST32_MAX = __UINT_LEAST32_MAX;
pub const __UINT_FAST8_MAX__ = 255;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __STDC_VERSION__ = @as(c_long, 201112);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __SIZEOF_INT__ = 4;
pub const UINTMAX_MAX = __UINTMAX_MAX__;
pub const __UINT32_C_SUFFIX__ = U;
pub const __x86_64__ = 1;
pub inline fn va_end(ap: var) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub const __FLT_MANT_DIG__ = 24;
pub const __INT_LEAST8_MAX__ = 127;
pub inline fn INT8_C(v: var) @TypeOf(__int_c(v, __int8_c_suffix)) {
    return __int_c(v, __int8_c_suffix);
}
pub const __UINTMAX_FMTo__ = "lo";
pub const __SIZE_FMTo__ = "lo";
pub const __SIZEOF_DOUBLE__ = 8;
pub const __int32_c_suffix = __INT64_C_SUFFIX__;
pub const __SIZEOF_WCHAR_T__ = 4;
