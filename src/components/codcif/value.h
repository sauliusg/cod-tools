/*-------------------------------------------------------------------------*\
* $Author$
* $Date$ 
* $Revision$
* $URL$
\*-------------------------------------------------------------------------*/

#ifndef __VALUE_H
#define __VALUE_H

#include <cexceptions.h>

typedef struct VALUE VALUE;

typedef enum {
    CIF_UNKNOWN = 0,
    CIF_NON_EXISTANT,
    CIF_INT,
    CIF_FLOAT,
    CIF_UQSTRING,
    CIF_SQSTRING,
    CIF_DQSTRING,
    CIF_SQ3STRING,
    CIF_DQ3STRING,
    CIF_TEXT,
    CIF_LIST,
    CIF_TABLE,
    last_CIF_VALUE
} cif_value_type_t;

#include <ciflist.h>
#include <ciftable.h>

VALUE *new_value_from_scalar( char *s, cif_value_type_t type, cexception_t *ex );
VALUE *new_value_from_list( CIFLIST *list, cexception_t *ex );
VALUE *new_value_from_table( CIFTABLE *table, cexception_t *ex );

void delete_value( VALUE *value );
void value_dump( VALUE *value );

cif_value_type_t value_type( VALUE *value );
char *value_scalar( VALUE *value );
CIFLIST *value_list( VALUE *value );
CIFTABLE *value_table( VALUE *value );

#endif
