/* This is a skeleton driver that only serves as a basic sanity check
   that the Driver.xst mechansim doesn't have compile-time errors in it.
*/

#include "DBIXS.h"
#include "dbd_xsh.h"

#undef DBIh_SET_ERR_CHAR	/* to syntax check emulation */
#include "dbivport.h"

DBISTATE_DECLARE;

#define dbd_discon_all(drh, imp_drh)		(drh=drh,imp_drh=imp_drh,1)
#define dbd_dr_data_sources(drh, imp_drh, attr)	(drh=drh,imp_drh=imp_drh,Nullav)
#define dbd_db_do4(dbh,imp_dbh,p3,p4)		(dbh=dbh,imp_dbh=imp_dbh,p3=p3,p4=p4,-2)
#define dbd_db_last_insert_id(dbh, imp_dbh, p3,p4,p5,p6, attr) \
	(dbh=dbh,imp_dbh=imp_dbh,p3=p3,p4=p4,p5=p5,p6=p6,&sv_undef)
#define dbd_take_imp_data(h, imp_xxh, p3)	(h=h,imp_xxh=imp_xxh,1)
#define dbd_st_rows(h, imp_xxh)			(h=h,imp_xxh=imp_xxh,1)
#define dbd_st_execute_for_fetch(sth, imp_sth, p3, p4) \
	(sth=sth,imp_sth=imp_sth,p3=p3,p4=p4,&sv_undef)

struct imp_drh_st {
    dbih_drc_t com;     /* MUST be first element in structure   */
};
struct imp_dbh_st {
    dbih_dbc_t com;     /* MUST be first element in structure   */
};
struct imp_sth_st {
    dbih_stc_t com;     /* MUST be first element in structure   */
};

static int
foo_dummy(SV *h)
{
	D_imp_xxh(h);
	DBIh_SET_ERR_CHAR(h, imp_xxh, 0, 1, "err msg", "12345", Nullch);
	return 1;
}

MODULE = DBD::Perl    PACKAGE = DBD::Perl

INCLUDE: Perl.xsi

