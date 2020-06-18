(module
  (export "calc" (func $calc))
  (export "calc1" (func $calc1))
  (export "calc2" (func $calc2))
  (export "calc3" (func $calc3))
  (export "calc4" (func $calc4))
  (export "calc5" (func $calc5))
  (export "calc6" (func $calc6))
  (export "calc7" (func $calc7))
  (export "calc8" (func $calc8))
  (export "calc9" (func $calc9))
  (func $calc (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc1 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc2 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc3 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc4 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc5 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc6 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc7 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc8 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
  (func $calc9 (param $var0 i32) (param $var1 i32) (result i32)
    (local $var2 i32) (local $var3 i32)
    get_local $var1
    get_local $var0
    get_local $var0
    get_local $var1
    i32.lt_s
    tee_local $var2
    select
    set_local $var3
    get_local $var0
    get_local $var1
    get_local $var2
    select
    set_local $var1
    block $label0
      loop $label3
        get_local $var1
        tee_local $var0
        i32.eqz
        br_if $label0
        block $label2
          block $label1
            get_local $var0
            i32.const -1
            i32.ne
            br_if $label1
            get_local $var3
            i32.const -2147483648
            i32.eq
            br_if $label2
          end $label1
          get_local $var3
          get_local $var0
          i32.rem_s
          set_local $var1
          get_local $var0
          set_local $var3
          br $label3
        end $label2
      end $label3
      i32.const 1048608
      i32.const 48
      i32.const 1048588
      unreachable
    end $label0
    get_local $var3
  )
)
