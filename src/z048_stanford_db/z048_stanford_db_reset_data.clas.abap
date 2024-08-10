CLASS z048_stanford_db_reset_data DEFINITION PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS: reset_college_table.
    METHODS: reset_student_table.
    METHODS: reset_apply_table.

ENDCLASS.
CLASS z048_stanford_db_reset_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    reset_apply_table(  ).
    reset_college_table(  ).
    reset_student_table(  ).

    out->write( 'Reset Finisehd' ).


  ENDMETHOD.

  METHOD reset_apply_table.

    """ delete all from table
    DELETE FROM z048t_apply.

    INSERT z048t_apply FROM TABLE @(
    VALUE #(
        ( sid = 123 cname = 'Stanford' major = 'CS' decision = 'Y' )
        ( sid = 123 cname = 'Stanford' major = 'EE' decision = 'N' )
        ( sid = 123 cname = 'Berkeley' major = 'CS' decision = 'Y' )
        ( sid = 123 cname = 'Cornell' major = 'EE' decision = 'Y' )
        ( sid = 234 cname = 'Berkeley' major = 'biology' decision = 'N' )
        ( sid = 345 cname = 'MIT' major = 'bioengineering' decision = 'Y' )
        ( sid = 345 cname = 'Cornell' major = 'bioengineering' decision = 'N' )
        ( sid = 345 cname = 'Cornell' major = 'CS' decision = 'Y' )
        ( sid = 345 cname = 'Cornell' major = 'EE' decision = 'N' )
        ( sid = 678 cname = 'Stanford' major = 'history' decision = 'Y' )
        ( sid = 987 cname = 'Stanford' major = 'CS' decision = 'Y' )
        ( sid = 987 cname = 'Berkeley' major = 'CS' decision = 'Y' )
        ( sid = 876 cname = 'Stanford' major = 'CS' decision = 'N' )
        ( sid = 876 cname = 'MIT' major = 'biology' decision = 'Y' )
        ( sid = 876 cname = 'MIT' major = 'marine biology' decision = 'N' )
        ( sid = 765 cname = 'Stanford' major = 'history' decision = 'Y' )
        ( sid = 765 cname = 'Cornell' major = 'history' decision = 'N' )
        ( sid = 765 cname = 'Cornell' major = 'psychology' decision = 'Y' )
        ( sid = 543 cname = 'MIT' major = 'CS' decision = 'N' )
    )
).




  ENDMETHOD.

  METHOD reset_college_table.

    """ delete all from table
    DELETE FROM z048t_college.

    INSERT z048t_College FROM TABLE @(
        VALUE #(
            ( cname = 'Stanford' state = 'CA' enrollment = 15000 )
            ( cname = 'Berkeley' state = 'CA' enrollment = 36000 )
            ( cname = 'MIT' state = 'MA' enrollment = 10000 )
            ( cname = 'Cornell' state = 'NY' enrollment = 21000 )
        )
    ).




  ENDMETHOD.

  METHOD reset_student_table.

    DELETE FROM z048t_student.

    INSERT z048t_student FROM TABLE @(
      VALUE #(
                ( sid = 123 sname = 'Amy' gpa = '3.9' sizehs = 1000 )
                ( sid = 234 sname = 'Bob' gpa = '3.6' sizehs = 1500 )
                ( sid = 345 sname = 'Craig' gpa = '3.5' sizehs = 500 )
                ( sid = 456 sname = 'Doris' gpa = '3.9' sizehs = 1000 )
                ( sid = 567 sname = 'Edward' gpa = '2.9' sizehs = 2000 )
                ( sid = 678 sname = 'Fay' gpa = '3.8' sizehs = 200 )
                ( sid = 789 sname = 'Gary' gpa = '3.4' sizehs = 800 )
                ( sid = 987 sname = 'Helen' gpa = '3.7' sizehs = 800 )
                ( sid = 876 sname = 'Irene' gpa = '3.9' sizehs = 400 )
                ( sid = 765 sname = 'Jay' gpa = '2.9' sizehs = 1500 )
                ( sid = 654 sname = 'Amy' gpa = '3.9' sizehs = 1000 )
                ( sid = 543 sname = 'Craig' gpa = '3.4' sizehs = 2000 )
              )
      ).

  ENDMETHOD.

ENDCLASS.
