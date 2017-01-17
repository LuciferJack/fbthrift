#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from cpython.ref cimport PyObject
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp cimport bool as cbool
from libcpp.map cimport map as cmap, pair as cpair
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.set cimport set as cset
from libcpp.string cimport string
from libcpp.vector cimport vector

from thrift.lib.py3.thrift_client cimport cTClientBase
from thrift.lib.py3.folly cimport cFollyEventBase, cFollyTry, cFollyUnit

cimport module.types


cdef extern from "src/gen-cpp2/SimpleService.h" namespace "py3::simple":
  cdef cppclass cSimpleServiceAsyncClient "py3::simple::SimpleServiceAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cSimpleServiceClientWrapper] move(unique_ptr[cSimpleServiceClientWrapper])

cdef extern from "src/module/clients_wrapper.h" namespace "py3::simple":
  cdef cppclass cSimpleServiceClientWrapper "py3::simple::SimpleServiceClientWrapper":
    cSimpleServiceClientWrapper(
      shared_ptr[cSimpleServiceAsyncClient] async_client,
      shared_ptr[cFollyEventBase] event_base)
    void get_five(
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void add_five(
      int32_t arg_num,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void do_nothing(
      void (*callback) (PyObject*, cFollyTry[cFollyUnit]),
      object py_future)
    void concat(
      string arg_first,
      string arg_second,
      void (*callback) (PyObject*, cFollyTry[string]),
      object py_future)
    void get_value(
      module.types.cSimpleStruct arg_simple_struct,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void negate(
      cbool arg_input,
      void (*callback) (PyObject*, cFollyTry[cbool]),
      object py_future)
    void tiny(
      int8_t arg_input,
      void (*callback) (PyObject*, cFollyTry[int8_t]),
      object py_future)
    void small(
      int16_t arg_input,
      void (*callback) (PyObject*, cFollyTry[int16_t]),
      object py_future)
    void big(
      int64_t arg_input,
      void (*callback) (PyObject*, cFollyTry[int64_t]),
      object py_future)
    void two(
      double arg_input,
      void (*callback) (PyObject*, cFollyTry[double]),
      object py_future)
    void expected_exception(
      void (*callback) (PyObject*, cFollyTry[cFollyUnit]),
      object py_future)
    void unexpected_exception(
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void sum_i16_list(
      vector[int16_t] arg_numbers,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void sum_i32_list(
      vector[int32_t] arg_numbers,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void sum_i64_list(
      vector[int64_t] arg_numbers,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void concat_many(
      vector[string] arg_words,
      void (*callback) (PyObject*, cFollyTry[string]),
      object py_future)
    void count_structs(
      vector[module.types.cSimpleStruct] arg_items,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void sum_set(
      cset[int32_t] arg_numbers,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void contains_word(
      cset[string] arg_words,
      string arg_word,
      void (*callback) (PyObject*, cFollyTry[cbool]),
      object py_future)
    void get_map_value(
      cmap[string,string] arg_words,
      string arg_key,
      void (*callback) (PyObject*, cFollyTry[string]),
      object py_future)
    void map_length(
      cmap[string,module.types.cSimpleStruct] arg_items,
      void (*callback) (PyObject*, cFollyTry[int16_t]),
      object py_future)
    void sum_map_values(
      cmap[string,int16_t] arg_items,
      void (*callback) (PyObject*, cFollyTry[int16_t]),
      object py_future)
    void complex_sum_i32(
      module.types.cComplexStruct arg_counter,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void repeat_name(
      module.types.cComplexStruct arg_counter,
      void (*callback) (PyObject*, cFollyTry[string]),
      object py_future)
    void get_struct(
      void (*callback) (PyObject*, cFollyTry[module.types.cSimpleStruct]),
      object py_future)
    void fib(
      int16_t arg_n,
      void (*callback) (PyObject*, cFollyTry[vector[int32_t]]),
      object py_future)
    void unique_words(
      vector[string] arg_words,
      void (*callback) (PyObject*, cFollyTry[cset[string]]),
      object py_future)
    void words_count(
      vector[string] arg_words,
      void (*callback) (PyObject*, cFollyTry[cmap[string,int16_t]]),
      object py_future)
    void set_enum(
      module.types.cAnEnum arg_in_enum,
      void (*callback) (PyObject*, cFollyTry[module.types.cAnEnum]),
      object py_future)
    void list_of_lists(
      int16_t arg_num_lists,
      int16_t arg_num_items,
      void (*callback) (PyObject*, cFollyTry[vector[vector[int32_t]]]),
      object py_future)
    void word_character_frequency(
      string arg_sentence,
      void (*callback) (PyObject*, cFollyTry[cmap[string,cmap[string,int32_t]]]),
      object py_future)
    void list_of_sets(
      string arg_some_words,
      void (*callback) (PyObject*, cFollyTry[vector[cset[string]]]),
      object py_future)
    void nested_map_argument(
      cmap[string,vector[module.types.cSimpleStruct]] arg_struct_map,
      void (*callback) (PyObject*, cFollyTry[int32_t]),
      object py_future)
    void make_sentence(
      vector[vector[string]] arg_word_chars,
      void (*callback) (PyObject*, cFollyTry[string]),
      object py_future)
    void get_union(
      vector[cset[int32_t]] arg_sets,
      void (*callback) (PyObject*, cFollyTry[cset[int32_t]]),
      object py_future)
    void get_keys(
      vector[cmap[string,string]] arg_string_map,
      void (*callback) (PyObject*, cFollyTry[cset[string]]),
      object py_future)
    void lookup_double(
      int32_t arg_key,
      void (*callback) (PyObject*, cFollyTry[double]),
      object py_future)
    void retrieve_binary(
       arg_something,
      void (*callback) (PyObject*, cFollyTry[]),
      object py_future)
    void contain_binary(
      vector[string] arg_binaries,
      void (*callback) (PyObject*, cFollyTry[cset[string]]),
      object py_future)
