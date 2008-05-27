#------------------------------------------------------------------------
#$Author: saulius $
#$Date: 2008-01-21 15:26:58 +0200 (Mon, 21 Jan 2008) $ 
#$Revision: 361 $
#$URL: svn+ssh://pitonas.ibt.lt/home/xray/svn-repositories/cif-tools/trunk/Spacegroups/SpacegroupNames.pm $
#------------------------------------------------------------------------
#* 
#**

package SymopLookup;

use strict;

require Exporter;
@SymopLookup::ISA = qw(Exporter);
@SymopLookup::EXPORT = qw( %table );

%SymopLookup::table =
(
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b a 2'
    setting_name    => 'B b a 2'
    schoenflies     => 'C_2v^17'
    number => 41
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b a 2'
    setting_name    => 'B 2 c b'
    schoenflies     => 'C_2v^17'
    number => 41
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b a 2'
    setting_name    => 'C 2 c b'
    schoenflies     => 'C_2v^17'
    number => 41
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b a 2'
    setting_name    => 'C c 2 a'
    schoenflies     => 'C_2v^17'
    number => 41
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b a 2'
    setting_name    => 'A c 2 a'
    schoenflies     => 'C_2v^17'
    number => 41
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x,-y,z;-x,y+1/2,z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b m 2'
    setting_name    => 'B m a 2'
    schoenflies     => 'C_2v^15'
    number => 39
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,z;-x,y+1/2,z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b m 2'
    setting_name    => 'B 2 c m'
    schoenflies     => 'C_2v^15'
    number => 39
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,z;-x,y+1/2,z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b m 2'
    setting_name    => 'C 2 m b'
    schoenflies     => 'C_2v^15'
    number => 39
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,z;-x,y+1/2,z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b m 2'
    setting_name    => 'C m 2 a'
    schoenflies     => 'C_2v^15'
    number => 39
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,z;-x,y+1/2,z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'A b m 2'
    setting_name    => 'A c 2 m'
    schoenflies     => 'C_2v^15'
    number => 39
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'A m a 2'
    setting_name    => 'B b m 2'
    schoenflies     => 'C_2v^16'
    number => 40
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'A m a 2'
    setting_name    => 'B 2 m b'
    schoenflies     => 'C_2v^16'
    number => 40
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'A m a 2'
    setting_name    => 'C 2 c m'
    schoenflies     => 'C_2v^16'
    number => 40
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'A m a 2'
    setting_name    => 'C c m 2'
    schoenflies     => 'C_2v^16'
    number => 40
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'A m a 2'
    setting_name    => 'A m 2 a'
    schoenflies     => 'C_2v^16'
    number => 40
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'A m m 2'
    setting_name    => 'B m m 2'
    schoenflies     => 'C_2v^14'
    number => 38
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'A m m 2'
    setting_name    => 'B 2 m m'
    schoenflies     => 'C_2v^14'
    number => 38
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'A m m 2'
    setting_name    => 'C 2 m m'
    schoenflies     => 'C_2v^14'
    number => 38
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'A m m 2'
    setting_name    => 'C m 2 m'
    schoenflies     => 'C_2v^14'
    number => 38
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'A m m 2'
    setting_name    => 'A m 2 m'
    schoenflies     => 'C_2v^14'
    number => 38
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'C 1 2 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,y,-z",
    ]
}
'-x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'A 1 2 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,y,-z",
    ]
}
'-x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'I 1 2 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,y,-z",
    ]
}
'-x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'A 1 1 2'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,-y,z",
    ]
}
'-x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'B 1 1 2'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,-y,z",
    ]
}
'-x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'I 1 1 2'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "-x,-y,z",
    ]
}
'x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'B 2 1 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "x,-y,-z",
    ]
}
'x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'C 2 1 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "x,-y,-z",
    ]
}
'x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2'
    setting_name    => 'I 2 1 1'
    schoenflies     => 'C_2^3'
    number => 5
    symops => [
        "x,y,z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 2'
    setting_name    => 'C 2 2 2'
    schoenflies     => 'D_2^6'
    number => 21
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 2'
    setting_name    => 'A 2 2 2'
    schoenflies     => 'D_2^6'
    number => 21
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 2'
    setting_name    => 'A 2 2 2'
    schoenflies     => 'D_2^6'
    number => 21
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 2'
    setting_name    => 'B 2 2 2'
    schoenflies     => 'D_2^6'
    number => 21
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 2'
    setting_name    => 'B 2 2 2'
    schoenflies     => 'D_2^6'
    number => 21
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 21'
    setting_name    => 'C 2 2 21'
    schoenflies     => 'D_2^5'
    number => 20
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 21'
    setting_name    => 'A 21 2 2'
    schoenflies     => 'D_2^5'
    number => 20
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 21'
    setting_name    => 'A 21 2 2'
    schoenflies     => 'D_2^5'
    number => 20
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 21'
    setting_name    => 'B 2 21 2'
    schoenflies     => 'D_2^5'
    number => 20
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2 2 21'
    setting_name    => 'B 2 21 2'
    schoenflies     => 'D_2^5'
    number => 20
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,-z;-x,y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'C 1 2/c 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x,y,-z+1/2",
        "-x,-y,-z",
        "x,-y,z+1/2",
    ]
}
'-x,-y,-z;-x,y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'A 1 2/n 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x,y,-z+1/2",
        "-x,-y,-z",
        "x,-y,z+1/2",
    ]
}
'-x,-y,-z;-x,y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'I 1 2/a 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x,y,-z+1/2",
        "-x,-y,-z",
        "x,-y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'A 1 1 2/a'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,-y,-z",
        "x+1/2,y,-z",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'B 1 1 2/n'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,-y,-z",
        "x+1/2,y,-z",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'I 1 1 2/b'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,-y,-z",
        "x+1/2,y,-z",
    ]
}
'-x,-y,-z;-x,y+1/2,z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'B 2/a 1 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,y+1/2,z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'C 2/n 1 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,y+1/2,z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C 2/c'
    setting_name    => 'I 2/c 1 1'
    schoenflies     => 'C_2h^6'
    number => 15
    symops => [
        "x,y,z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'C 1 2/m 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,y,-z",
        "-x,-y,-z",
        "x,-y,z",
    ]
}
'-x,-y,-z;-x,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'A 1 2/m 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,y,-z",
        "-x,-y,-z",
        "x,-y,z",
    ]
}
'-x,-y,-z;-x,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'I 1 2/m 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,y,-z",
        "-x,-y,-z",
        "x,-y,z",
    ]
}
'-x,-y,-z;-x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'A 1 1 2/m'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,-y,-z",
        "x,y,-z",
    ]
}
'-x,-y,-z;-x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'B 1 1 2/m'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,-y,-z",
        "x,y,-z",
    ]
}
'-x,-y,-z;-x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'I 1 1 2/m'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,-y,-z",
        "x,y,-z",
    ]
}
'-x,-y,-z;-x,y,z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'B 2/m 1 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "x,-y,-z",
        "-x,-y,-z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,y,z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'C 2/m 1 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "x,-y,-z",
        "-x,-y,-z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,y,z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'C 2/m'
    setting_name    => 'I 2/m 1 1'
    schoenflies     => 'C_2h^3'
    number => 12
    symops => [
        "x,y,z",
        "x,-y,-z",
        "-x,-y,-z",
        "-x,y,z",
    ]
}
'x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'C 1 c 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x,-y,z+1/2",
    ]
}
'x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'A 1 n 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x,-y,z+1/2",
    ]
}
'x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'I 1 a 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x,-y,z+1/2",
    ]
}
'x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'A 1 1 a'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x+1/2,y,-z",
    ]
}
'x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'B 1 1 n'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x+1/2,y,-z",
    ]
}
'x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'I 1 1 b'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "x+1/2,y,-z",
    ]
}
'-x,y+1/2,z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'B b 1 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "-x,y+1/2,z",
    ]
}
'-x,y+1/2,z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'C n 1 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "-x,y+1/2,z",
    ]
}
'-x,y+1/2,z;x,y,z' => {
    spacegroup_name => 'C c'
    setting_name    => 'I c 1 1'
    schoenflies     => 'C_s^4'
    number => 9
    symops => [
        "x,y,z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c 2'
    setting_name    => 'C c c 2'
    schoenflies     => 'C_2v^13'
    number => 37
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c 2'
    setting_name    => 'A 2 a a'
    schoenflies     => 'C_2v^13'
    number => 37
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c 2'
    setting_name    => 'A 2 a a'
    schoenflies     => 'C_2v^13'
    number => 37
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c 2'
    setting_name    => 'B b 2 b'
    schoenflies     => 'C_2v^13'
    number => 37
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c 2'
    setting_name    => 'B b 2 b'
    schoenflies     => 'C_2v^13'
    number => 37
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y,-z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c a'
    setting_name    => 'C c c b'
    schoenflies     => 'D_2h^22'
    number => 68
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y,-z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c a'
    setting_name    => 'A b a a'
    schoenflies     => 'D_2h^22'
    number => 68
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y,-z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c a'
    setting_name    => 'A c a a'
    schoenflies     => 'D_2h^22'
    number => 68
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y,-z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c a'
    setting_name    => 'B b c b'
    schoenflies     => 'D_2h^22'
    number => 68
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y,-z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C c c a'
    setting_name    => 'B b a b'
    schoenflies     => 'D_2h^22'
    number => 68
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'C c c m'
    setting_name    => 'C c c m'
    schoenflies     => 'D_2h^20'
    number => 66
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'C c c m'
    setting_name    => 'A m a a'
    schoenflies     => 'D_2h^20'
    number => 66
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'C c c m'
    setting_name    => 'A m a a'
    schoenflies     => 'D_2h^20'
    number => 66
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'C c c m'
    setting_name    => 'B b m b'
    schoenflies     => 'D_2h^20'
    number => 66
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'C c c m'
    setting_name    => 'B b m b'
    schoenflies     => 'D_2h^20'
    number => 66
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'x,-y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'C 1 m 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,-y,z",
    ]
}
'x,-y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'A 1 m 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,-y,z",
    ]
}
'x,-y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'I 1 m 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,-y,z",
    ]
}
'x,y,-z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'A 1 1 m'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,y,-z",
    ]
}
'x,y,-z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'B 1 1 m'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,y,-z",
    ]
}
'x,y,-z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'I 1 1 m'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "x,y,-z",
    ]
}
'-x,y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'B m 1 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "-x,y,z",
    ]
}
'-x,y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'C m 1 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "-x,y,z",
    ]
}
'-x,y,z;x,y,z' => {
    spacegroup_name => 'C m'
    setting_name    => 'I m 1 1'
    schoenflies     => 'C_s^3'
    number => 8
    symops => [
        "x,y,z",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C m c 21'
    setting_name    => 'C c m 21'
    schoenflies     => 'C_2v^12'
    number => 36
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C m c 21'
    setting_name    => 'A 21 m a'
    schoenflies     => 'C_2v^12'
    number => 36
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C m c 21'
    setting_name    => 'A 21 a m'
    schoenflies     => 'C_2v^12'
    number => 36
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C m c 21'
    setting_name    => 'B b 21 m'
    schoenflies     => 'C_2v^12'
    number => 36
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'C m c 21'
    setting_name    => 'B m 21 b'
    schoenflies     => 'C_2v^12'
    number => 36
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-x,y,z;x,-y+1/2,z+1/2;x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c a'
    setting_name    => 'C c m b'
    schoenflies     => 'D_2h^18'
    number => 64
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-x,y,z;x,-y+1/2,z+1/2;x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c a'
    setting_name    => 'A b m a'
    schoenflies     => 'D_2h^18'
    number => 64
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-x,y,z;x,-y+1/2,z+1/2;x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c a'
    setting_name    => 'A c a m'
    schoenflies     => 'D_2h^18'
    number => 64
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-x,y,z;x,-y+1/2,z+1/2;x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c a'
    setting_name    => 'B b c m'
    schoenflies     => 'D_2h^18'
    number => 64
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-x,y,z;x,-y+1/2,z+1/2;x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c a'
    setting_name    => 'B m a b'
    schoenflies     => 'D_2h^18'
    number => 64
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y,-z+1/2;-x,y,z;x,-y,-z;x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c m'
    setting_name    => 'C c m m'
    schoenflies     => 'D_2h^17'
    number => 63
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y,-z+1/2;-x,y,z;x,-y,-z;x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c m'
    setting_name    => 'A m m a'
    schoenflies     => 'D_2h^17'
    number => 63
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y,-z+1/2;-x,y,z;x,-y,-z;x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c m'
    setting_name    => 'A m a m'
    schoenflies     => 'D_2h^17'
    number => 63
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y,-z+1/2;-x,y,z;x,-y,-z;x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c m'
    setting_name    => 'B b m m'
    schoenflies     => 'D_2h^17'
    number => 63
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y,-z+1/2;-x,y,z;x,-y,-z;x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'C m c m'
    setting_name    => 'B m m b'
    schoenflies     => 'D_2h^17'
    number => 63
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C m m 2'
    setting_name    => 'C m m 2'
    schoenflies     => 'C_2v^11'
    number => 35
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C m m 2'
    setting_name    => 'A 2 m m'
    schoenflies     => 'C_2v^11'
    number => 35
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C m m 2'
    setting_name    => 'A 2 m m'
    schoenflies     => 'C_2v^11'
    number => 35
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C m m 2'
    setting_name    => 'B m 2 m'
    schoenflies     => 'C_2v^11'
    number => 35
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'C m m 2'
    setting_name    => 'B m 2 m'
    schoenflies     => 'C_2v^11'
    number => 35
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C m m a'
    setting_name    => 'C m m b'
    schoenflies     => 'D_2h^21'
    number => 67
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C m m a'
    setting_name    => 'A b m m'
    schoenflies     => 'D_2h^21'
    number => 67
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C m m a'
    setting_name    => 'A c m m'
    schoenflies     => 'D_2h^21'
    number => 67
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C m m a'
    setting_name    => 'B m c m'
    schoenflies     => 'D_2h^21'
    number => 67
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'C m m a'
    setting_name    => 'B m a m'
    schoenflies     => 'D_2h^21'
    number => 67
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C m m m'
    setting_name    => 'C m m m'
    schoenflies     => 'D_2h^19'
    number => 65
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C m m m'
    setting_name    => 'A m m m'
    schoenflies     => 'D_2h^19'
    number => 65
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C m m m'
    setting_name    => 'A m m m'
    schoenflies     => 'D_2h^19'
    number => 65
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C m m m'
    setting_name    => 'B m m m'
    schoenflies     => 'D_2h^19'
    number => 65
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'C m m m'
    setting_name    => 'B m m m'
    schoenflies     => 'D_2h^19'
    number => 65
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x+1/2,-z+1/2,y+1/2;-x+1/2,z+1/2,-y+1/2;-x,-y,z;-x,y,-z;-y+1/2,-x+1/2,z+1/2;-y+1/2,x+1/2,-z+1/2;-y,-z,x;-y,z,-x;-z+1/2,-y+1/2,x+1/2;-z+1/2,y+1/2,-x+1/2;-z,-x,y;-z,x,-y;x+1/2,-z+1/2,-y+1/2;x+1/2,z+1/2,y+1/2;x,-y,-z;x,y,z;y+1/2,-x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-z,-x;y,z,x;z+1/2,-y+1/2,-x+1/2;z+1/2,y+1/2,x+1/2;z,-x,-y;z,x,y' => {
    spacegroup_name => 'F -4 3 c'
    setting_name    => 'F -4 3 c'
    schoenflies     => 'T_d^5'
    number => 219
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y+1/2,x+1/2,z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,-x+1/2,-z+1/2",
        "-y+1/2,x+1/2,-z+1/2",
        "x+1/2,z+1/2,y+1/2",
        "-x+1/2,z+1/2,-y+1/2",
        "-x+1/2,-z+1/2,y+1/2",
        "x+1/2,-z+1/2,-y+1/2",
        "z+1/2,y+1/2,x+1/2",
        "z+1/2,-y+1/2,-x+1/2",
        "-z+1/2,y+1/2,-x+1/2",
        "-z+1/2,-y+1/2,x+1/2",
    ]
}
'-x,-y,z;-x,-z,y;-x,y,-z;-x,z,-y;-y,-x,z;-y,-z,x;-y,x,-z;-y,z,-x;-z,-x,y;-z,-y,x;-z,x,-y;-z,y,-x;x,-y,-z;x,-z,-y;x,y,z;x,z,y;y,-x,-z;y,-z,-x;y,x,z;y,z,x;z,-x,-y;z,-y,-x;z,x,y;z,y,x' => {
    spacegroup_name => 'F -4 3 m'
    setting_name    => 'F -4 3 m'
    schoenflies     => 'T_d^2'
    number => 216
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,z",
        "-y,-x,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,z,y",
        "-x,z,-y",
        "-x,-z,y",
        "x,-z,-y",
        "z,y,x",
        "z,-y,-x",
        "-z,y,-x",
        "-z,-y,x",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'F 2 2 2'
    setting_name    => 'F 2 2 2'
    schoenflies     => 'D_2^7'
    number => 22
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;-y,-z,x;-y,z,-x;-z,-x,y;-z,x,-y;x,-y,-z;x,y,z;y,-z,-x;y,z,x;z,-x,-y;z,x,y' => {
    spacegroup_name => 'F 2 3'
    setting_name    => 'F 2 3'
    schoenflies     => 'T^2'
    number => 196
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
    ]
}
'-x,-y,z;-x,-z,-y;-x,y,-z;-x,z,y;-y,-x,-z;-y,-z,x;-y,x,z;-y,z,-x;-z,-x,y;-z,-y,-x;-z,x,-y;-z,y,x;x,-y,-z;x,-z,y;x,y,z;x,z,-y;y,-x,z;y,-z,-x;y,x,-z;y,z,x;z,-x,-y;z,-y,x;z,x,y;z,y,-x' => {
    spacegroup_name => 'F 4 3 2'
    setting_name    => 'F 4 3 2'
    schoenflies     => 'O^3'
    number => 209
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/4,-z+1/4,-y+1/4;-x+3/4,z+3/4,y+1/4;-x,-y+1/2,z+1/2;-y+1/2,z+1/2,-x;-y+1/4,-x+1/4,-z+1/4;-y+3/4,x+3/4,z+1/4;-y,-z+1/2,x+1/2;-z+1/2,x+1/2,-y;-z+1/4,-y+1/4,-x+1/4;-z+3/4,y+3/4,x+1/4;-z,-x+1/2,y+1/2;x+1/2,-y,-z+1/2;x+1/4,-z+3/4,y+3/4;x+3/4,z+1/4,-y+3/4;x,y,z;y+1/2,-z,-x+1/2;y+1/4,-x+3/4,z+3/4;y+3/4,x+1/4,-z+3/4;y,z,x;z+1/2,-x,-y+1/2;z+1/4,-y+3/4,x+3/4;z+3/4,y+1/4,-x+3/4;z,x,y' => {
    spacegroup_name => 'F 41 3 2'
    setting_name    => 'F 41 3 2'
    schoenflies     => 'O^4'
    number => 210
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y,-z+1/2",
        "z,x,y",
        "z+1/2,-x,-y+1/2",
        "-z,-x+1/2,y+1/2",
        "-z+1/2,x+1/2,-y",
        "y,z,x",
        "-y+1/2,z+1/2,-x",
        "y+1/2,-z,-x+1/2",
        "-y,-z+1/2,x+1/2",
        "y+3/4,x+1/4,-z+3/4",
        "-y+1/4,-x+1/4,-z+1/4",
        "y+1/4,-x+3/4,z+3/4",
        "-y+3/4,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y+3/4",
        "-x+3/4,z+3/4,y+1/4",
        "-x+1/4,-z+1/4,-y+1/4",
        "x+1/4,-z+3/4,y+3/4",
        "z+3/4,y+1/4,-x+3/4",
        "z+1/4,-y+3/4,x+3/4",
        "-z+3/4,y+3/4,x+1/4",
        "-z+1/4,-y+1/4,-x+1/4",
    ]
}
'-x+1/4,-y+1/4,z;-x+1/4,y,-z+1/4;-x,-y,-z;-x,y+3/4,z+3/4;-y+1/4,-z+1/4,x;-y+1/4,z,-x+1/4;-y,-z,-x;-y,z+3/4,x+3/4;-z+1/4,-x+1/4,y;-z+1/4,x,-y+1/4;-z,-x,-y;-z,x+3/4,y+3/4;x+3/4,-y,z+3/4;x+3/4,y+3/4,-z;x,-y+1/4,-z+1/4;x,y,z;y+3/4,-z,x+3/4;y+3/4,z+3/4,-x;y,-z+1/4,-x+1/4;y,z,x;z+3/4,-x,y+3/4;z+3/4,x+3/4,-y;z,-x+1/4,-y+1/4;z,x,y' => {
    spacegroup_name => 'F d -3'
    setting_name    => 'F d -3'
    schoenflies     => 'T_h^4'
    number => 203
    symops => [
        "x,y,z",
        "-x+1/4,-y+1/4,z",
        "-x+1/4,y,-z+1/4",
        "x,-y+1/4,-z+1/4",
        "z,x,y",
        "z,-x+1/4,-y+1/4",
        "-z+1/4,-x+1/4,y",
        "-z+1/4,x,-y+1/4",
        "y,z,x",
        "-y+1/4,z,-x+1/4",
        "y,-z+1/4,-x+1/4",
        "-y+1/4,-z+1/4,x",
        "-x,-y,-z",
        "x+3/4,y+3/4,-z",
        "x+3/4,-y,z+3/4",
        "-x,y+3/4,z+3/4",
        "-z,-x,-y",
        "-z,x+3/4,y+3/4",
        "z+3/4,x+3/4,-y",
        "z+3/4,-x,y+3/4",
        "-y,-z,-x",
        "y+3/4,-z,x+3/4",
        "-y,z+3/4,x+3/4",
        "y+3/4,z+3/4,-x",
    ]
}
'-x+1/2,-z+1/2,-y+1/2;-x+1/2,y+3/4,z+1/4;-x+1/4,-y+3/4,z+1/2;-x+1/4,-z+3/4,y;-x+3/4,y+1/2,-z+1/4;-x+3/4,z,-y+1/2;-x,-y,-z;-x,z+3/4,y+1/4;-y+1/2,-x+1/2,-z+1/2;-y+1/2,z+3/4,x+1/4;-y+1/4,-x+3/4,z;-y+1/4,-z+3/4,x+1/2;-y+3/4,x,-z+1/4;-y+3/4,z+1/2,-x+1/4;-y,-z,-x;-y,x+3/4,z+1/4;-z+1/2,-y+1/2,-x+1/2;-z+1/2,x+3/4,y+1/4;-z+1/4,-x+3/4,y+1/2;-z+1/4,-y+3/4,x;-z+3/4,x+1/2,-y+1/4;-z+3/4,y,-x+1/4;-z,-x,-y;-z,y+3/4,x+1/4;x+1/2,-y+1/4,-z+3/4;x+1/2,z+1/2,y+1/2;x+1/4,-y+1/2,z+3/4;x+1/4,-z,y+3/4;x+3/4,y+1/4,-z+1/2;x+3/4,z+1/4,-y;x,-z+1/4,-y+3/4;x,y,z;y+1/2,-z+1/4,-x+3/4;y+1/2,x+1/2,z+1/2;y+1/4,-x,z+3/4;y+1/4,-z+1/2,x+3/4;y+3/4,x+1/4,-z;y+3/4,z+1/4,-x+1/2;y,-x+1/4,-z+3/4;y,z,x;z+1/2,-x+1/4,-y+3/4;z+1/2,y+1/2,x+1/2;z+1/4,-x+1/2,y+3/4;z+1/4,-y,x+3/4;z+3/4,x+1/4,-y+1/2;z+3/4,y+1/4,-x;z,-y+1/4,-x+3/4;z,x,y' => {
    spacegroup_name => 'F d -3 c'
    setting_name    => 'F d -3 c'
    schoenflies     => 'O_h^8'
    number => 228
    symops => [
        "x,y,z",
        "-x+1/4,-y+3/4,z+1/2",
        "-x+3/4,y+1/2,-z+1/4",
        "x+1/2,-y+1/4,-z+3/4",
        "z,x,y",
        "z+1/2,-x+1/4,-y+3/4",
        "-z+1/4,-x+3/4,y+1/2",
        "-z+3/4,x+1/2,-y+1/4",
        "y,z,x",
        "-y+3/4,z+1/2,-x+1/4",
        "y+1/2,-z+1/4,-x+3/4",
        "-y+1/4,-z+3/4,x+1/2",
        "y+3/4,x+1/4,-z",
        "-y+1/2,-x+1/2,-z+1/2",
        "y+1/4,-x,z+3/4",
        "-y,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y",
        "-x,z+3/4,y+1/4",
        "-x+1/2,-z+1/2,-y+1/2",
        "x+1/4,-z,y+3/4",
        "z+3/4,y+1/4,-x",
        "z+1/4,-y,x+3/4",
        "-z,y+3/4,x+1/4",
        "-z+1/2,-y+1/2,-x+1/2",
        "-x,-y,-z",
        "x+3/4,y+1/4,-z+1/2",
        "x+1/4,-y+1/2,z+3/4",
        "-x+1/2,y+3/4,z+1/4",
        "-z,-x,-y",
        "-z+1/2,x+3/4,y+1/4",
        "z+3/4,x+1/4,-y+1/2",
        "z+1/4,-x+1/2,y+3/4",
        "-y,-z,-x",
        "y+1/4,-z+1/2,x+3/4",
        "-y+1/2,z+3/4,x+1/4",
        "y+3/4,z+1/4,-x+1/2",
        "-y+1/4,-x+3/4,z",
        "y+1/2,x+1/2,z+1/2",
        "-y+3/4,x,-z+1/4",
        "y,-x+1/4,-z+3/4",
        "-x+1/4,-z+3/4,y",
        "x,-z+1/4,-y+3/4",
        "x+1/2,z+1/2,y+1/2",
        "-x+3/4,z,-y+1/2",
        "-z+1/4,-y+3/4,x",
        "-z+3/4,y,-x+1/4",
        "z,-y+1/4,-x+3/4",
        "z+1/2,y+1/2,x+1/2",
    ]
}
'-x+1/2,y+1/4,z+3/4;-x+1/2,z+3/4,y+1/4;-x+1/4,-z+3/4,y+1/2;-x+1/4,y+1/2,-z+3/4;-x+3/4,-y+1/4,z+1/2;-x+3/4,z+1/2,-y+1/4;-x,-y,-z;-x,-z,-y;-y+1/2,x+3/4,z+1/4;-y+1/2,z+1/4,x+3/4;-y+1/4,-x+3/4,z+1/2;-y+1/4,z+1/2,-x+3/4;-y+3/4,-z+1/4,x+1/2;-y+3/4,x+1/2,-z+1/4;-y,-x,-z;-y,-z,-x;-z+1/2,x+1/4,y+3/4;-z+1/2,y+3/4,x+1/4;-z+1/4,-y+3/4,x+1/2;-z+1/4,x+1/2,-y+3/4;-z+3/4,-x+1/4,y+1/2;-z+3/4,y+1/2,-x+1/4;-z,-x,-y;-z,-y,-x;x+1/2,-y+3/4,-z+1/4;x+1/2,-z+1/4,-y+3/4;x+1/4,-z+1/2,y+3/4;x+1/4,y+3/4,-z+1/2;x+3/4,-y+1/2,z+1/4;x+3/4,z+1/4,-y+1/2;x,y,z;x,z,y;y+1/2,-x+1/4,-z+3/4;y+1/2,-z+3/4,-x+1/4;y+1/4,-x+1/2,z+3/4;y+1/4,z+3/4,-x+1/2;y+3/4,-z+1/2,x+1/4;y+3/4,x+1/4,-z+1/2;y,x,z;y,z,x;z+1/2,-x+3/4,-y+1/4;z+1/2,-y+1/4,-x+3/4;z+1/4,-y+1/2,x+3/4;z+1/4,x+3/4,-y+1/2;z+3/4,-x+1/2,y+1/4;z+3/4,y+1/4,-x+1/2;z,x,y;z,y,x' => {
    spacegroup_name => 'F d -3 m'
    setting_name    => 'F d -3 m'
    schoenflies     => 'O_h^7'
    number => 227
    symops => [
        "x,y,z",
        "-x+3/4,-y+1/4,z+1/2",
        "-x+1/4,y+1/2,-z+3/4",
        "x+1/2,-y+3/4,-z+1/4",
        "z,x,y",
        "z+1/2,-x+3/4,-y+1/4",
        "-z+3/4,-x+1/4,y+1/2",
        "-z+1/4,x+1/2,-y+3/4",
        "y,z,x",
        "-y+1/4,z+1/2,-x+3/4",
        "y+1/2,-z+3/4,-x+1/4",
        "-y+3/4,-z+1/4,x+1/2",
        "y+3/4,x+1/4,-z+1/2",
        "-y,-x,-z",
        "y+1/4,-x+1/2,z+3/4",
        "-y+1/2,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y+1/2",
        "-x+1/2,z+3/4,y+1/4",
        "-x,-z,-y",
        "x+1/4,-z+1/2,y+3/4",
        "z+3/4,y+1/4,-x+1/2",
        "z+1/4,-y+1/2,x+3/4",
        "-z+1/2,y+3/4,x+1/4",
        "-z,-y,-x",
        "-x,-y,-z",
        "x+1/4,y+3/4,-z+1/2",
        "x+3/4,-y+1/2,z+1/4",
        "-x+1/2,y+1/4,z+3/4",
        "-z,-x,-y",
        "-z+1/2,x+1/4,y+3/4",
        "z+1/4,x+3/4,-y+1/2",
        "z+3/4,-x+1/2,y+1/4",
        "-y,-z,-x",
        "y+3/4,-z+1/2,x+1/4",
        "-y+1/2,z+1/4,x+3/4",
        "y+1/4,z+3/4,-x+1/2",
        "-y+1/4,-x+3/4,z+1/2",
        "y,x,z",
        "-y+3/4,x+1/2,-z+1/4",
        "y+1/2,-x+1/4,-z+3/4",
        "-x+1/4,-z+3/4,y+1/2",
        "x+1/2,-z+1/4,-y+3/4",
        "x,z,y",
        "-x+3/4,z+1/2,-y+1/4",
        "-z+1/4,-y+3/4,x+1/2",
        "-z+3/4,y+1/2,-x+1/4",
        "z+1/2,-y+1/4,-x+3/4",
        "z,y,x",
    ]
}
'-x+1/4,y+1/4,z+1/4;-x,-y,z;x+1/4,-y+1/4,z+1/4;x,y,z' => {
    spacegroup_name => 'F d d 2'
    setting_name    => 'F d d 2'
    schoenflies     => 'C_2v^19'
    number => 43
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/4,-y+1/4,z+1/4",
        "-x+1/4,y+1/4,z+1/4",
    ]
}
'-x+1/4,y+1/4,z+1/4;-x,-y,z;x+1/4,-y+1/4,z+1/4;x,y,z' => {
    spacegroup_name => 'F d d 2'
    setting_name    => 'F 2 d d'
    schoenflies     => 'C_2v^19'
    number => 43
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/4,-y+1/4,z+1/4",
        "-x+1/4,y+1/4,z+1/4",
    ]
}
'-x+1/4,y+1/4,z+1/4;-x,-y,z;x+1/4,-y+1/4,z+1/4;x,y,z' => {
    spacegroup_name => 'F d d 2'
    setting_name    => 'F 2 d d'
    schoenflies     => 'C_2v^19'
    number => 43
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/4,-y+1/4,z+1/4",
        "-x+1/4,y+1/4,z+1/4",
    ]
}
'-x+1/4,y+1/4,z+1/4;-x,-y,z;x+1/4,-y+1/4,z+1/4;x,y,z' => {
    spacegroup_name => 'F d d 2'
    setting_name    => 'F d 2 d'
    schoenflies     => 'C_2v^19'
    number => 43
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/4,-y+1/4,z+1/4",
        "-x+1/4,y+1/4,z+1/4",
    ]
}
'-x+1/4,y+1/4,z+1/4;-x,-y,z;x+1/4,-y+1/4,z+1/4;x,y,z' => {
    spacegroup_name => 'F d d 2'
    setting_name    => 'F d 2 d'
    schoenflies     => 'C_2v^19'
    number => 43
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/4,-y+1/4,z+1/4",
        "-x+1/4,y+1/4,z+1/4",
    ]
}
'-x+3/4,-y+3/4,z;-x+3/4,y,-z+3/4;-x,-y,-z;-x,y+1/4,z+1/4;x+1/4,-y,z+1/4;x+1/4,y+1/4,-z;x,-y+3/4,-z+3/4;x,y,z' => {
    spacegroup_name => 'F d d d'
    setting_name    => 'F d d d'
    schoenflies     => 'D_2h^24'
    number => 70
    symops => [
        "x,y,z",
        "-x+3/4,-y+3/4,z",
        "-x+3/4,y,-z+3/4",
        "x,-y+3/4,-z+3/4",
        "-x,-y,-z",
        "x+1/4,y+1/4,-z",
        "x+1/4,-y,z+1/4",
        "-x,y+1/4,z+1/4",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-z,-x;-y,-z,x;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,x,-y;-z,x,y;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-z,-x;y,-z,x;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,x,-y;z,x,y' => {
    spacegroup_name => 'F m -3'
    setting_name    => 'F m -3'
    schoenflies     => 'T_h^3'
    number => 202
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
    ]
}
'-x+1/2,-z+1/2,-y+1/2;-x+1/2,-z+1/2,y+1/2;-x+1/2,z+1/2,-y+1/2;-x+1/2,z+1/2,y+1/2;-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,-x+1/2,z+1/2;-y+1/2,x+1/2,-z+1/2;-y+1/2,x+1/2,z+1/2;-y,-z,-x;-y,-z,x;-y,z,-x;-y,z,x;-z+1/2,-y+1/2,-x+1/2;-z+1/2,-y+1/2,x+1/2;-z+1/2,y+1/2,-x+1/2;-z+1/2,y+1/2,x+1/2;-z,-x,-y;-z,-x,y;-z,x,-y;-z,x,y;x+1/2,-z+1/2,-y+1/2;x+1/2,-z+1/2,y+1/2;x+1/2,z+1/2,-y+1/2;x+1/2,z+1/2,y+1/2;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y+1/2,-x+1/2,-z+1/2;y+1/2,-x+1/2,z+1/2;y+1/2,x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-z,-x;y,-z,x;y,z,-x;y,z,x;z+1/2,-y+1/2,-x+1/2;z+1/2,-y+1/2,x+1/2;z+1/2,y+1/2,-x+1/2;z+1/2,y+1/2,x+1/2;z,-x,-y;z,-x,y;z,x,-y;z,x,y' => {
    spacegroup_name => 'F m -3 c'
    setting_name    => 'F m -3 c'
    schoenflies     => 'O_h^6'
    number => 226
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-y+1/2,x+1/2,z+1/2",
        "x+1/2,z+1/2,-y+1/2",
        "-x+1/2,z+1/2,y+1/2",
        "-x+1/2,-z+1/2,-y+1/2",
        "x+1/2,-z+1/2,y+1/2",
        "z+1/2,y+1/2,-x+1/2",
        "z+1/2,-y+1/2,x+1/2",
        "-z+1/2,y+1/2,x+1/2",
        "-z+1/2,-y+1/2,-x+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
        "-y+1/2,x+1/2,-z+1/2",
        "y+1/2,-x+1/2,-z+1/2",
        "-x+1/2,-z+1/2,y+1/2",
        "x+1/2,-z+1/2,-y+1/2",
        "x+1/2,z+1/2,y+1/2",
        "-x+1/2,z+1/2,-y+1/2",
        "-z+1/2,-y+1/2,x+1/2",
        "-z+1/2,y+1/2,-x+1/2",
        "z+1/2,-y+1/2,-x+1/2",
        "z+1/2,y+1/2,x+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,-z,-y;-x,-z,y;-x,y,-z;-x,y,z;-x,z,-y;-x,z,y;-y,-x,-z;-y,-x,z;-y,-z,-x;-y,-z,x;-y,x,-z;-y,x,z;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,-y,-x;-z,-y,x;-z,x,-y;-z,x,y;-z,y,-x;-z,y,x;x,-y,-z;x,-y,z;x,-z,-y;x,-z,y;x,y,-z;x,y,z;x,z,-y;x,z,y;y,-x,-z;y,-x,z;y,-z,-x;y,-z,x;y,x,-z;y,x,z;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,-y,-x;z,-y,x;z,x,-y;z,x,y;z,y,-x;z,y,x' => {
    spacegroup_name => 'F m -3 m'
    setting_name    => 'F m -3 m'
    schoenflies     => 'O_h^5'
    number => 225
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
        "-y,-x,z",
        "y,x,z",
        "-y,x,-z",
        "y,-x,-z",
        "-x,-z,y",
        "x,-z,-y",
        "x,z,y",
        "-x,z,-y",
        "-z,-y,x",
        "-z,y,-x",
        "z,-y,-x",
        "z,y,x",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'F m m 2'
    setting_name    => 'F m m 2'
    schoenflies     => 'C_2v^18'
    number => 42
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'F m m 2'
    setting_name    => 'F 2 m m'
    schoenflies     => 'C_2v^18'
    number => 42
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'F m m 2'
    setting_name    => 'F 2 m m'
    schoenflies     => 'C_2v^18'
    number => 42
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'F m m 2'
    setting_name    => 'F m 2 m'
    schoenflies     => 'C_2v^18'
    number => 42
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'F m m 2'
    setting_name    => 'F m 2 m'
    schoenflies     => 'C_2v^18'
    number => 42
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'F m m m'
    setting_name    => 'F m m m'
    schoenflies     => 'D_2h^23'
    number => 69
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-y,x,-z;x,y,z;y,-x,-z' => {
    spacegroup_name => 'I -4'
    setting_name    => 'F -4'
    schoenflies     => 'S_4^2'
    number => 82
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
    ]
}
'-x+1/2,y,-z+3/4;-x,-y,z;-y+1/2,-x,z+3/4;-y,x,-z;x+1/2,-y,-z+3/4;x,y,z;y+1/2,x,z+3/4;y,-x,-z' => {
    spacegroup_name => 'I -4 2 d'
    setting_name    => 'F -4 d 2'
    schoenflies     => 'D_2d^12'
    number => 122
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x+1/2,y,-z+3/4",
        "x+1/2,-y,-z+3/4",
        "-y+1/2,-x,z+3/4",
        "y+1/2,x,z+3/4",
    ]
}
'-x,-y,z;-x,y,-z;-y,-x,z;-y,x,-z;x,-y,-z;x,y,z;y,-x,-z;y,x,z' => {
    spacegroup_name => 'I -4 2 m'
    setting_name    => 'F -4 m 2'
    schoenflies     => 'D_2d^11'
    number => 121
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x,y,-z",
        "x,-y,-z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/4,-z+3/4,y+3/4;-x+3/4,z+3/4,-y+1/4;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/4,-x+3/4,z+3/4;-y+3/4,x+3/4,-z+1/4;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/4,-y+3/4,x+3/4;-z+3/4,y+3/4,-x+1/4;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/4,z+1/4,y+1/4;x+3/4,-z+1/4,-y+3/4;x,y,z;y+1/2,-z+1/2,-x;y+1/4,x+1/4,z+1/4;y+3/4,-x+1/4,-z+3/4;y,z,x;z+1/2,-x+1/2,-y;z+1/4,y+1/4,x+1/4;z+3/4,-y+1/4,-x+3/4;z,x,y' => {
    spacegroup_name => 'I -4 3 d'
    setting_name    => 'I -4 3 d'
    schoenflies     => 'T_d^6'
    number => 220
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "y+1/4,x+1/4,z+1/4",
        "-y+1/4,-x+3/4,z+3/4",
        "y+3/4,-x+1/4,-z+3/4",
        "-y+3/4,x+3/4,-z+1/4",
        "x+1/4,z+1/4,y+1/4",
        "-x+3/4,z+3/4,-y+1/4",
        "-x+1/4,-z+3/4,y+3/4",
        "x+3/4,-z+1/4,-y+3/4",
        "z+1/4,y+1/4,x+1/4",
        "z+3/4,-y+1/4,-x+3/4",
        "-z+3/4,y+3/4,-x+1/4",
        "-z+1/4,-y+3/4,x+3/4",
    ]
}
'-x,-y,z;-x,-z,y;-x,y,-z;-x,z,-y;-y,-x,z;-y,-z,x;-y,x,-z;-y,z,-x;-z,-x,y;-z,-y,x;-z,x,-y;-z,y,-x;x,-y,-z;x,-z,-y;x,y,z;x,z,y;y,-x,-z;y,-z,-x;y,x,z;y,z,x;z,-x,-y;z,-y,-x;z,x,y;z,y,x' => {
    spacegroup_name => 'I -4 3 m'
    setting_name    => 'I -4 3 m'
    schoenflies     => 'T_d^3'
    number => 217
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,z",
        "-y,-x,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,z,y",
        "-x,z,-y",
        "-x,-z,y",
        "x,-z,-y",
        "z,y,x",
        "z,-y,-x",
        "-z,y,-x",
        "-z,-y,x",
    ]
}
'-x,-y,z;-x,y,z+1/2;-y,-x,-z+1/2;-y,x,-z;x,-y,z+1/2;x,y,z;y,-x,-z;y,x,-z+1/2' => {
    spacegroup_name => 'I -4 c 2'
    setting_name    => 'F -4 2 c'
    schoenflies     => 'D_2d^10'
    number => 120
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
    ]
}
'-x,-y,z;-x,y,z;-y,-x,-z;-y,x,-z;x,-y,z;x,y,z;y,-x,-z;y,x,-z' => {
    spacegroup_name => 'I -4 m 2'
    setting_name    => 'F -4 2 m'
    schoenflies     => 'D_2d^9'
    number => 119
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z",
        "-x,y,z",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'I 2 2 2'
    setting_name    => 'I 2 2 2'
    schoenflies     => 'D_2^8'
    number => 23
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;-y,-z,x;-y,z,-x;-z,-x,y;-z,x,-y;x,-y,-z;x,y,z;y,-z,-x;y,z,x;z,-x,-y;z,x,y' => {
    spacegroup_name => 'I 2 3'
    setting_name    => 'I 2 3'
    schoenflies     => 'T^3'
    number => 197
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
    ]
}
'-x+1/2,-y,z+1/2;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I 21 21 21'
    setting_name    => 'I 21 21 21'
    schoenflies     => 'D_2^9'
    number => 24
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x,y,z;y+1/2,-z+1/2,-x;y,z,x;z+1/2,-x+1/2,-y;z,x,y' => {
    spacegroup_name => 'I 21 3'
    setting_name    => 'I 21 3'
    schoenflies     => 'T^5'
    number => 199
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
    ]
}
'-x,-y,z;-y,x,z;x,y,z;y,-x,z' => {
    spacegroup_name => 'I 4'
    setting_name    => 'F 4'
    schoenflies     => 'C_4^5'
    number => 79
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
    ]
}
'-x,-y,z;-x,y,-z;-y,-x,-z;-y,x,z;x,-y,-z;x,y,z;y,-x,z;y,x,-z' => {
    spacegroup_name => 'I 4 2 2'
    setting_name    => 'F 4 2 2'
    schoenflies     => 'D_4^9'
    number => 97
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x,-y,z;-x,-z,-y;-x,y,-z;-x,z,y;-y,-x,-z;-y,-z,x;-y,x,z;-y,z,-x;-z,-x,y;-z,-y,-x;-z,x,-y;-z,y,x;x,-y,-z;x,-z,y;x,y,z;x,z,-y;y,-x,z;y,-z,-x;y,x,-z;y,z,x;z,-x,-y;z,-y,x;z,x,y;z,y,-x' => {
    spacegroup_name => 'I 4 3 2'
    setting_name    => 'I 4 3 2'
    schoenflies     => 'O^5'
    number => 211
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
    ]
}
'-x,-y,z;-x,y,z+1/2;-y,-x,z+1/2;-y,x,z;x,-y,z+1/2;x,y,z;y,-x,z;y,x,z+1/2' => {
    spacegroup_name => 'I 4 c m'
    setting_name    => 'F 4 m c'
    schoenflies     => 'C_4v^10'
    number => 108
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x,-y,z;-x,y,z;-y,-x,z;-y,x,z;x,-y,z;x,y,z;y,-x,z;y,x,z' => {
    spacegroup_name => 'I 4 m m'
    setting_name    => 'F 4 m m'
    schoenflies     => 'C_4v^9'
    number => 107
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x,-y,-z;-x,-y,z;-y,x,-z;-y,x,z;x,y,-z;x,y,z;y,-x,-z;y,-x,z' => {
    spacegroup_name => 'I 4/m'
    setting_name    => 'F 4/m'
    schoenflies     => 'C_4h^5'
    number => 87
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;-y,-x,-z+1/2;-y,-x,z+1/2;-y,x,-z;-y,x,z;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z;y,-x,-z;y,-x,z;y,x,-z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'I 4/m c m'
    setting_name    => 'F 4/m m c'
    schoenflies     => 'D_4h^18'
    number => 140
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-x,-z;-y,-x,z;-y,x,-z;-y,x,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-x,-z;y,-x,z;y,x,-z;y,x,z' => {
    spacegroup_name => 'I 4/m m m'
    setting_name    => 'F 4/m m m'
    schoenflies     => 'D_4h^17'
    number => 139
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-y,x+1/2,z+1/4;x,y,z;y+1/2,-x,z+3/4' => {
    spacegroup_name => 'I 41'
    setting_name    => 'F 41'
    schoenflies     => 'C_4^6'
    number => 80
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-y,x+1/2,z+1/4",
        "y+1/2,-x,z+3/4",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y,-z+3/4;-y,-x,-z;-y,x+1/2,z+1/4;x,-y+1/2,-z+1/4;x,y,z;y+1/2,-x,z+3/4;y+1/2,x+1/2,-z+1/2' => {
    spacegroup_name => 'I 41 2 2'
    setting_name    => 'F 41 2 2'
    schoenflies     => 'D_4^10'
    number => 98
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-y,x+1/2,z+1/4",
        "y+1/2,-x,z+3/4",
        "-x+1/2,y,-z+3/4",
        "x,-y+1/2,-z+1/4",
        "y+1/2,x+1/2,-z+1/2",
        "-y,-x,-z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/4,z+3/4,y+1/4;-x+3/4,-z+3/4,-y+3/4;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/4,-x+1/4,-z+1/4;-y+1/4,x+3/4,z+1/4;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/4,y+3/4,x+1/4;-z+3/4,-y+3/4,-x+3/4;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/4,-z+1/4,y+3/4;x+3/4,z+1/4,-y+1/4;x,y,z;y+1/2,-z+1/2,-x;y+1/4,-x+1/4,z+3/4;y+3/4,x+1/4,-z+1/4;y,z,x;z+1/2,-x+1/2,-y;z+1/4,-y+1/4,x+3/4;z+3/4,y+1/4,-x+1/4;z,x,y' => {
    spacegroup_name => 'I 41 3 2'
    setting_name    => 'I 41 3 2'
    schoenflies     => 'O^8'
    number => 214
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "y+3/4,x+1/4,-z+1/4",
        "-y+1/4,-x+1/4,-z+1/4",
        "y+1/4,-x+1/4,z+3/4",
        "-y+1/4,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y+1/4",
        "-x+1/4,z+3/4,y+1/4",
        "-x+3/4,-z+3/4,-y+3/4",
        "x+1/4,-z+1/4,y+3/4",
        "z+3/4,y+1/4,-x+1/4",
        "z+1/4,-y+1/4,x+3/4",
        "-z+1/4,y+3/4,x+1/4",
        "-z+3/4,-y+3/4,-x+3/4",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-y,-x+1/2,z+3/4;-y,x+1/2,z+1/4;x,-y,z+1/2;x,y,z;y+1/2,-x,z+3/4;y+1/2,x,z+1/4' => {
    spacegroup_name => 'I 41 c d'
    setting_name    => 'F 41 d c'
    schoenflies     => 'C_4v^12'
    number => 110
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-y,x+1/2,z+1/4",
        "y+1/2,-x,z+3/4",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
        "-y,-x+1/2,z+3/4",
        "y+1/2,x,z+1/4",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z+1/2;-y,-x+1/2,z+1/4;-y,x+1/2,z+1/4;x,-y,z;x,y,z;y+1/2,-x,z+3/4;y+1/2,x,z+3/4' => {
    spacegroup_name => 'I 41 m d'
    setting_name    => 'F 41 d m'
    schoenflies     => 'C_4v^11'
    number => 109
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-y,x+1/2,z+1/4",
        "y+1/2,-x,z+3/4",
        "x,-y,z",
        "-x+1/2,y+1/2,z+1/2",
        "-y,-x+1/2,z+1/4",
        "y+1/2,x,z+3/4",
    ]
}
'-x+1/2,-y,z+1/2;-x,-y,-z;-y+1/4,x+1/4,-z+1/4;-y+3/4,x+1/4,z+1/4;x+1/2,y,-z+1/2;x,y,z;y+1/4,-x+3/4,-z+3/4;y+3/4,-x+3/4,z+3/4' => {
    spacegroup_name => 'I 41/a'
    setting_name    => 'F 41/d'
    schoenflies     => 'C_4h^6'
    number => 88
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-y+3/4,x+1/4,z+1/4",
        "y+3/4,-x+3/4,z+3/4",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "y+1/4,-x+3/4,-z+3/4",
        "-y+1/4,x+1/4,-z+1/4",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z;-x,-y,-z;-x,y,z+1/2;-y+1/4,-x+1/4,-z+1/4;-y+1/4,x+3/4,z+1/4;-y+3/4,-x+1/4,z+1/4;-y+3/4,x+3/4,-z+1/4;x+1/2,-y,z;x+1/2,y,-z+1/2;x,-y,-z+1/2;x,y,z;y+1/4,-x+1/4,z+3/4;y+1/4,x+3/4,-z+3/4;y+3/4,-x+1/4,-z+3/4;y+3/4,x+3/4,z+3/4' => {
    spacegroup_name => 'I 41/a c d'
    setting_name    => 'F 41/d d c'
    schoenflies     => 'D_4h^20'
    number => 142
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-y+1/4,x+3/4,z+1/4",
        "y+1/4,-x+1/4,z+3/4",
        "-x+1/2,y,-z",
        "x,-y,-z+1/2",
        "y+1/4,x+3/4,-z+3/4",
        "-y+1/4,-x+1/4,-z+1/4",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "y+3/4,-x+1/4,-z+3/4",
        "-y+3/4,x+3/4,-z+1/4",
        "x+1/2,-y,z",
        "-x,y,z+1/2",
        "-y+3/4,-x+1/4,z+1/4",
        "y+3/4,x+3/4,z+3/4",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;-y+1/4,-x+1/4,-z+3/4;-y+1/4,x+3/4,z+1/4;-y+3/4,-x+1/4,z+3/4;-y+3/4,x+3/4,-z+1/4;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z;y+1/4,-x+1/4,z+3/4;y+1/4,x+3/4,-z+1/4;y+3/4,-x+1/4,-z+3/4;y+3/4,x+3/4,z+1/4' => {
    spacegroup_name => 'I 41/a m d'
    setting_name    => 'F 41/d d m'
    schoenflies     => 'D_4h^19'
    number => 141
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-y+1/4,x+3/4,z+1/4",
        "y+1/4,-x+1/4,z+3/4",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "y+1/4,x+3/4,-z+1/4",
        "-y+1/4,-x+1/4,-z+3/4",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "y+3/4,-x+1/4,-z+3/4",
        "-y+3/4,x+3/4,-z+1/4",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
        "-y+3/4,-x+1/4,z+3/4",
        "y+3/4,x+3/4,z+1/4",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/2,z+1/2,x;-y,-z,-x;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/2,x+1/2,y;-z,-x,-y;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z;y+1/2,-z+1/2,-x;y+1/2,z,-x+1/2;y,-z+1/2,x+1/2;y,z,x;z+1/2,-x+1/2,-y;z+1/2,x,-y+1/2;z,-x+1/2,y+1/2;z,x,y' => {
    spacegroup_name => 'I a -3'
    setting_name    => 'I a -3'
    schoenflies     => 'T_h^7'
    number => 206
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
        "-z,-x,-y",
        "-z+1/2,x+1/2,y",
        "z+1/2,x,-y+1/2",
        "z,-x+1/2,y+1/2",
        "-y,-z,-x",
        "y,-z+1/2,x+1/2",
        "-y+1/2,z+1/2,x",
        "y+1/2,z,-x+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x+1/4,-z+3/4,y+3/4;-x+1/4,z+3/4,y+1/4;-x+3/4,-z+3/4,-y+3/4;-x+3/4,z+3/4,-y+1/4;-x,-y,-z;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/2,z+1/2,x;-y+1/4,-x+3/4,z+3/4;-y+1/4,x+3/4,z+1/4;-y+3/4,-x+3/4,-z+3/4;-y+3/4,x+3/4,-z+1/4;-y,-z,-x;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/2,x+1/2,y;-z+1/4,-y+3/4,x+3/4;-z+1/4,y+3/4,x+1/4;-z+3/4,-y+3/4,-x+3/4;-z+3/4,y+3/4,-x+1/4;-z,-x,-y;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x+1/4,-z+1/4,y+3/4;x+1/4,z+1/4,y+1/4;x+3/4,-z+1/4,-y+3/4;x+3/4,z+1/4,-y+1/4;x,-y+1/2,z+1/2;x,y,z;y+1/2,-z+1/2,-x;y+1/2,z,-x+1/2;y+1/4,-x+1/4,z+3/4;y+1/4,x+1/4,z+1/4;y+3/4,-x+1/4,-z+3/4;y+3/4,x+1/4,-z+1/4;y,-z+1/2,x+1/2;y,z,x;z+1/2,-x+1/2,-y;z+1/2,x,-y+1/2;z+1/4,-y+1/4,x+3/4;z+1/4,y+1/4,x+1/4;z+3/4,-y+1/4,-x+3/4;z+3/4,y+1/4,-x+1/4;z,-x+1/2,y+1/2;z,x,y' => {
    spacegroup_name => 'I a -3 d'
    setting_name    => 'I a -3 d'
    schoenflies     => 'O_h^10'
    number => 230
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "y+3/4,x+1/4,-z+1/4",
        "-y+3/4,-x+3/4,-z+3/4",
        "y+1/4,-x+1/4,z+3/4",
        "-y+1/4,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y+1/4",
        "-x+1/4,z+3/4,y+1/4",
        "-x+3/4,-z+3/4,-y+3/4",
        "x+1/4,-z+1/4,y+3/4",
        "z+3/4,y+1/4,-x+1/4",
        "z+1/4,-y+1/4,x+3/4",
        "-z+1/4,y+3/4,x+1/4",
        "-z+3/4,-y+3/4,-x+3/4",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
        "-z,-x,-y",
        "-z+1/2,x+1/2,y",
        "z+1/2,x,-y+1/2",
        "z,-x+1/2,y+1/2",
        "-y,-z,-x",
        "y,-z+1/2,x+1/2",
        "-y+1/2,z+1/2,x",
        "y+1/2,z,-x+1/2",
        "-y+1/4,-x+3/4,z+3/4",
        "y+1/4,x+1/4,z+1/4",
        "-y+3/4,x+3/4,-z+1/4",
        "y+3/4,-x+1/4,-z+3/4",
        "-x+1/4,-z+3/4,y+3/4",
        "x+3/4,-z+1/4,-y+3/4",
        "x+1/4,z+1/4,y+1/4",
        "-x+3/4,z+3/4,-y+1/4",
        "-z+1/4,-y+3/4,x+3/4",
        "-z+3/4,y+3/4,-x+1/4",
        "z+3/4,-y+1/4,-x+3/4",
        "z+1/4,y+1/4,x+1/4",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'I b a 2'
    setting_name    => 'I b a 2'
    schoenflies     => 'C_2v^21'
    number => 45
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'I b a 2'
    setting_name    => 'I 2 c b'
    schoenflies     => 'C_2v^21'
    number => 45
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'I b a 2'
    setting_name    => 'I 2 c b'
    schoenflies     => 'C_2v^21'
    number => 45
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'I b a 2'
    setting_name    => 'I c 2 a'
    schoenflies     => 'C_2v^21'
    number => 45
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'I b a 2'
    setting_name    => 'I c 2 a'
    schoenflies     => 'C_2v^21'
    number => 45
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I b a m'
    setting_name    => 'I b a m'
    schoenflies     => 'D_2h^26'
    number => 72
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I b a m'
    setting_name    => 'I m c b'
    schoenflies     => 'D_2h^26'
    number => 72
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I b a m'
    setting_name    => 'I m c b'
    schoenflies     => 'D_2h^26'
    number => 72
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I b a m'
    setting_name    => 'I c m a'
    schoenflies     => 'D_2h^26'
    number => 72
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I b a m'
    setting_name    => 'I c m a'
    schoenflies     => 'D_2h^26'
    number => 72
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'I b c a'
    setting_name    => 'I c a b'
    schoenflies     => 'D_2h^27'
    number => 73
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'I b c a'
    setting_name    => 'I b c a'
    schoenflies     => 'D_2h^27'
    number => 73
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'I b c a'
    setting_name    => 'I c a b'
    schoenflies     => 'D_2h^27'
    number => 73
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'I b c a'
    setting_name    => 'I b c a'
    schoenflies     => 'D_2h^27'
    number => 73
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'I b c a'
    setting_name    => 'I c a b'
    schoenflies     => 'D_2h^27'
    number => 73
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-z,-x;-y,-z,x;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,x,-y;-z,x,y;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-z,-x;y,-z,x;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,x,-y;z,x,y' => {
    spacegroup_name => 'I m -3'
    setting_name    => 'I m -3'
    schoenflies     => 'T_h^5'
    number => 204
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
    ]
}
'-x,-y,-z;-x,-y,z;-x,-z,-y;-x,-z,y;-x,y,-z;-x,y,z;-x,z,-y;-x,z,y;-y,-x,-z;-y,-x,z;-y,-z,-x;-y,-z,x;-y,x,-z;-y,x,z;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,-y,-x;-z,-y,x;-z,x,-y;-z,x,y;-z,y,-x;-z,y,x;x,-y,-z;x,-y,z;x,-z,-y;x,-z,y;x,y,-z;x,y,z;x,z,-y;x,z,y;y,-x,-z;y,-x,z;y,-z,-x;y,-z,x;y,x,-z;y,x,z;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,-y,-x;z,-y,x;z,x,-y;z,x,y;z,y,-x;z,y,x' => {
    spacegroup_name => 'I m -3 m'
    setting_name    => 'I m -3 m'
    schoenflies     => 'O_h^9'
    number => 229
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
        "-y,-x,z",
        "y,x,z",
        "-y,x,-z",
        "y,-x,-z",
        "-x,-z,y",
        "x,-z,-y",
        "x,z,y",
        "-x,z,-y",
        "-z,-y,x",
        "-z,y,-x",
        "z,-y,-x",
        "z,y,x",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'I m a 2'
    setting_name    => 'I b m 2'
    schoenflies     => 'C_2v^22'
    number => 46
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'I m a 2'
    setting_name    => 'I 2 m b'
    schoenflies     => 'C_2v^22'
    number => 46
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'I m a 2'
    setting_name    => 'I 2 c m'
    schoenflies     => 'C_2v^22'
    number => 46
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'I m a 2'
    setting_name    => 'I c 2 m'
    schoenflies     => 'C_2v^22'
    number => 46
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'I m a 2'
    setting_name    => 'I m 2 a'
    schoenflies     => 'C_2v^22'
    number => 46
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'I m m 2'
    setting_name    => 'I m m 2'
    schoenflies     => 'C_2v^20'
    number => 44
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'I m m 2'
    setting_name    => 'I 2 m m'
    schoenflies     => 'C_2v^20'
    number => 44
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'I m m 2'
    setting_name    => 'I 2 m m'
    schoenflies     => 'C_2v^20'
    number => 44
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'I m m 2'
    setting_name    => 'I m 2 m'
    schoenflies     => 'C_2v^20'
    number => 44
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'I m m 2'
    setting_name    => 'I m 2 m'
    schoenflies     => 'C_2v^20'
    number => 44
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I m m a'
    setting_name    => 'I m m b'
    schoenflies     => 'D_2h^28'
    number => 74
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I m m a'
    setting_name    => 'I b m m'
    schoenflies     => 'D_2h^28'
    number => 74
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I m m a'
    setting_name    => 'I c m m'
    schoenflies     => 'D_2h^28'
    number => 74
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I m m a'
    setting_name    => 'I m c m'
    schoenflies     => 'D_2h^28'
    number => 74
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;-x,y+1/2,-z;-x,y,z;x,-y+1/2,z;x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'I m m a'
    setting_name    => 'I m a m'
    schoenflies     => 'D_2h^28'
    number => 74
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,y+1/2,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y+1/2,-z",
        "x,-y+1/2,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'I m m m'
    setting_name    => 'I m m m'
    schoenflies     => 'D_2h^25'
    number => 71
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;x,y,z' => {
    spacegroup_name => 'P -1'
    setting_name    => 'P -1'
    schoenflies     => 'C_i^1'
    number => 2
    symops => [
        "x,y,z",
        "-x,-y,-z",
    ]
}
'-x+y,-x,z;-x,-y,-z;-y,x-y,z;x,y,z;x-y,x,-z;y,-x+y,-z' => {
    spacegroup_name => 'P -3'
    setting_name    => 'P -3'
    schoenflies     => 'C_3i^1'
    number => 147
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
    ]
}
'-x+y,-x,z;-x+y,y,-z+1/2;-x,-x+y,z+1/2;-x,-y,-z;-y,-x,-z+1/2;-y,x-y,z;x,x-y,-z+1/2;x,y,z;x-y,-y,z+1/2;x-y,x,-z;y,-x+y,-z;y,x,z+1/2' => {
    spacegroup_name => 'P -3 1 c'
    setting_name    => 'P -3 1 c'
    schoenflies     => 'D_3d^2'
    number => 163
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,-z+1/2",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,-z;-x,-x+y,z;-x,-y,-z;-y,-x,-z;-y,x-y,z;x,x-y,-z;x,y,z;x-y,-y,z;x-y,x,-z;y,-x+y,-z;y,x,z' => {
    spacegroup_name => 'P -3 1 m'
    setting_name    => 'P -3 1 m'
    schoenflies     => 'D_3d^1'
    number => 162
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-x,-x+y,-z+1/2;-x,-y,-z;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z;x-y,-y,-z+1/2;x-y,x,-z;y,-x+y,-z;y,x,-z+1/2' => {
    spacegroup_name => 'P -3 c 1'
    setting_name    => 'P -3 c 1'
    schoenflies     => 'D_3d^4'
    number => 165
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z+1/2",
        "x-y,-y,-z+1/2",
        "-x,-x+y,-z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z;-x,-x+y,-z;-x,-y,-z;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z;x-y,-y,-z;x-y,x,-z;y,-x+y,-z;y,x,-z' => {
    spacegroup_name => 'P -3 m 1'
    setting_name    => 'P -3 m 1'
    schoenflies     => 'D_3d^3'
    number => 164
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
    ]
}
'-x,-y,z;-y,x,-z;x,y,z;y,-x,-z' => {
    spacegroup_name => 'P -4'
    setting_name    => 'C -4'
    schoenflies     => 'S_4^1'
    number => 81
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
    ]
}
'-x,-y,z;-x,y,-z+1/2;-y,-x,z+1/2;-y,x,-z;x,-y,-z+1/2;x,y,z;y,-x,-z;y,x,z+1/2' => {
    spacegroup_name => 'P -4 2 c'
    setting_name    => 'C -4 c 2'
    schoenflies     => 'D_2d^2'
    number => 112
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x,-y,z;-x,y,-z;-y,-x,z;-y,x,-z;x,-y,-z;x,y,z;y,-x,-z;y,x,z' => {
    spacegroup_name => 'P -4 2 m'
    setting_name    => 'C -4 m 2'
    schoenflies     => 'D_2d^1'
    number => 111
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x,y,-z",
        "x,-y,-z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x,-y,z;-y+1/2,-x+1/2,z+1/2;-y,x,-z;x+1/2,-y+1/2,-z+1/2;x,y,z;y+1/2,x+1/2,z+1/2;y,-x,-z' => {
    spacegroup_name => 'P -4 21 c'
    setting_name    => 'C -4 c 21'
    schoenflies     => 'D_2d^4'
    number => 114
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;-y+1/2,-x+1/2,z;-y,x,-z;x+1/2,-y+1/2,-z;x,y,z;y+1/2,x+1/2,z;y,-x,-z' => {
    spacegroup_name => 'P -4 21 m'
    setting_name    => 'C -4 m 21'
    schoenflies     => 'D_2d^3'
    number => 113
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-y+1/2,-x+1/2,z",
        "y+1/2,x+1/2,z",
    ]
}
'-x,-y,z;-x,-z,y;-x,y,-z;-x,z,-y;-y,-x,z;-y,-z,x;-y,x,-z;-y,z,-x;-z,-x,y;-z,-y,x;-z,x,-y;-z,y,-x;x,-y,-z;x,-z,-y;x,y,z;x,z,y;y,-x,-z;y,-z,-x;y,x,z;y,z,x;z,-x,-y;z,-y,-x;z,x,y;z,y,x' => {
    spacegroup_name => 'P -4 3 m'
    setting_name    => 'P -4 3 m'
    schoenflies     => 'T_d^1'
    number => 215
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,z",
        "-y,-x,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,z,y",
        "-x,z,-y",
        "-x,-z,y",
        "x,-z,-y",
        "z,y,x",
        "z,-y,-x",
        "-z,y,-x",
        "-z,-y,x",
    ]
}
'-x+1/2,-z+1/2,y+1/2;-x+1/2,z+1/2,-y+1/2;-x,-y,z;-x,y,-z;-y+1/2,-x+1/2,z+1/2;-y+1/2,x+1/2,-z+1/2;-y,-z,x;-y,z,-x;-z+1/2,-y+1/2,x+1/2;-z+1/2,y+1/2,-x+1/2;-z,-x,y;-z,x,-y;x+1/2,-z+1/2,-y+1/2;x+1/2,z+1/2,y+1/2;x,-y,-z;x,y,z;y+1/2,-x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-z,-x;y,z,x;z+1/2,-y+1/2,-x+1/2;z+1/2,y+1/2,x+1/2;z,-x,-y;z,x,y' => {
    spacegroup_name => 'P -4 3 n'
    setting_name    => 'P -4 3 n'
    schoenflies     => 'T_d^4'
    number => 218
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y+1/2,x+1/2,z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,-x+1/2,-z+1/2",
        "-y+1/2,x+1/2,-z+1/2",
        "x+1/2,z+1/2,y+1/2",
        "-x+1/2,z+1/2,-y+1/2",
        "-x+1/2,-z+1/2,y+1/2",
        "x+1/2,-z+1/2,-y+1/2",
        "z+1/2,y+1/2,x+1/2",
        "z+1/2,-y+1/2,-x+1/2",
        "-z+1/2,y+1/2,-x+1/2",
        "-z+1/2,-y+1/2,x+1/2",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;-y+1/2,-x+1/2,-z;-y,x,-z;x+1/2,-y+1/2,z;x,y,z;y+1/2,x+1/2,-z;y,-x,-z' => {
    spacegroup_name => 'P -4 b 2'
    setting_name    => 'C -4 2 g'
    schoenflies     => 'D_2d^7'
    number => 117
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
        "y+1/2,x+1/2,-z",
        "-y+1/2,-x+1/2,-z",
    ]
}
'-x,-y,z;-x,y,z+1/2;-y,-x,-z+1/2;-y,x,-z;x,-y,z+1/2;x,y,z;y,-x,-z;y,x,-z+1/2' => {
    spacegroup_name => 'P -4 c 2'
    setting_name    => 'C -4 2 c'
    schoenflies     => 'D_2d^6'
    number => 116
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
    ]
}
'-x,-y,z;-x,y,z;-y,-x,-z;-y,x,-z;x,-y,z;x,y,z;y,-x,-z;y,x,-z' => {
    spacegroup_name => 'P -4 m 2'
    setting_name    => 'C -4 2 m'
    schoenflies     => 'D_2d^5'
    number => 115
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z",
        "-x,y,z",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;-y+1/2,-x+1/2,-z+1/2;-y,x,-z;x+1/2,-y+1/2,z+1/2;x,y,z;y+1/2,x+1/2,-z+1/2;y,-x,-z' => {
    spacegroup_name => 'P -4 n 2'
    setting_name    => 'C -4 2 g'
    schoenflies     => 'D_2d^8'
    number => 118
    symops => [
        "x,y,z",
        "-x,-y,z",
        "y,-x,-z",
        "-y,x,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-y,x-y,-z;-y,x-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P -6'
    setting_name    => 'P -6'
    schoenflies     => 'C_3h^1'
    number => 174
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
    ]
}
'-x+y,-x,-z+1/2;-x+y,-x,z;-x,-x+y,-z;-x,-x+y,z+1/2;-y,x-y,-z+1/2;-y,x-y,z;x,y,-z+1/2;x,y,z;x-y,-y,-z;x-y,-y,z+1/2;y,x,-z;y,x,z+1/2' => {
    spacegroup_name => 'P -6 2 c'
    setting_name    => 'P -6 2 c'
    schoenflies     => 'D_3h^4'
    number => 190
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "x,y,-z+1/2",
        "-y,x-y,-z+1/2",
        "-x+y,-x,-z+1/2",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-x,-x+y,-z;-x,-x+y,z;-y,x-y,-z;-y,x-y,z;x,y,-z;x,y,z;x-y,-y,-z;x-y,-y,z;y,x,-z;y,x,z' => {
    spacegroup_name => 'P -6 2 m'
    setting_name    => 'P -6 2 m'
    schoenflies     => 'D_3h^3'
    number => 189
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,-z+1/2;-x+y,-x,z;-x+y,y,-z;-x+y,y,z+1/2;-y,-x,-z;-y,-x,z+1/2;-y,x-y,-z+1/2;-y,x-y,z;x,x-y,-z;x,x-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P -6 c 2'
    setting_name    => 'P -6 c 2'
    schoenflies     => 'D_3h^2'
    number => 188
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "x,y,-z+1/2",
        "-y,x-y,-z+1/2",
        "-x+y,-x,-z+1/2",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-x+y,y,-z;-x+y,y,z;-y,-x,-z;-y,-x,z;-y,x-y,-z;-y,x-y,z;x,x-y,-z;x,x-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P -6 m 2'
    setting_name    => 'P -6 m 2'
    schoenflies     => 'D_3h^1'
    number => 187
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
    ]
}
'x,y,z' => {
    spacegroup_name => 'P 1'
    setting_name    => 'P 1'
    schoenflies     => 'C_1^1'
    number => 1
    symops => [
        "x,y,z",
    ]
}
'-x,y,-z;x,y,z' => {
    spacegroup_name => 'P 2'
    setting_name    => 'P 1 2 1'
    schoenflies     => 'C_2^1'
    number => 3
    symops => [
        "x,y,z",
        "-x,y,-z",
    ]
}
'-x,-y,z;x,y,z' => {
    spacegroup_name => 'P 2'
    setting_name    => 'P 1 1 2'
    schoenflies     => 'C_2^1'
    number => 3
    symops => [
        "x,y,z",
        "-x,-y,z",
    ]
}
'x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2'
    setting_name    => 'P 2 1 1'
    schoenflies     => 'C_2^1'
    number => 3
    symops => [
        "x,y,z",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 2'
    setting_name    => 'P 2 2 2'
    schoenflies     => 'D_2^1'
    number => 16
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 21'
    setting_name    => 'P 2 2 21'
    schoenflies     => 'D_2^2'
    number => 17
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 21'
    setting_name    => 'P 21 2 2'
    schoenflies     => 'D_2^2'
    number => 17
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 21'
    setting_name    => 'P 21 2 2'
    schoenflies     => 'D_2^2'
    number => 17
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 21'
    setting_name    => 'P 2 21 2'
    schoenflies     => 'D_2^2'
    number => 17
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z+1/2;-x,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2 2 21'
    setting_name    => 'P 2 21 2'
    schoenflies     => 'D_2^2'
    number => 17
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z",
    ]
}
'-x,-y,z;-x,y,-z;-y,-z,x;-y,z,-x;-z,-x,y;-z,x,-y;x,-y,-z;x,y,z;y,-z,-x;y,z,x;z,-x,-y;z,x,y' => {
    spacegroup_name => 'P 2 3'
    setting_name    => 'P 2 3'
    schoenflies     => 'T^1'
    number => 195
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
    ]
}
'-x,-y,-z;-x,y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 2/c 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x,y,-z+1/2",
        "-x,-y,-z",
        "x,-y,z+1/2",
    ]
}
'-x+1/2,y,-z+1/2;-x,-y,-z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 2/n 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x+1/2,y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,-y,z+1/2",
    ]
}
'-x+1/2,y,-z;-x,-y,-z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 2/a 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x+1/2,y,-z",
        "-x,-y,-z",
        "x+1/2,-y,z",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 1 2/a'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,-y,-z",
        "x+1/2,y,-z",
    ]
}
'-x+1/2,-y+1/2,z;-x,-y,-z;x+1/2,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 1 2/n'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
    ]
}
'-x,-y+1/2,z;-x,-y,-z;x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 1 1 2/b'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "-x,-y+1/2,z",
        "-x,-y,-z",
        "x,y+1/2,-z",
    ]
}
'-x,-y,-z;-x,y+1/2,z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 2/a 1 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,y+1/2,z+1/2;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 2/n 1 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,-y,-z;-x,y,z+1/2;x,-y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 2/c'
    setting_name    => 'P 2/c 1 1'
    schoenflies     => 'C_2h^4'
    number => 13
    symops => [
        "x,y,z",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P 2/m'
    setting_name    => 'P 1 2/m 1'
    schoenflies     => 'C_2h^1'
    number => 10
    symops => [
        "x,y,z",
        "-x,y,-z",
        "-x,-y,-z",
        "x,-y,z",
    ]
}
'-x,-y,-z;-x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P 2/m'
    setting_name    => 'P 1 1 2/m'
    schoenflies     => 'C_2h^1'
    number => 10
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,-y,-z",
        "x,y,-z",
    ]
}
'-x,-y,-z;-x,y,z;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P 2/m'
    setting_name    => 'P 2/m 1 1'
    schoenflies     => 'C_2h^1'
    number => 10
    symops => [
        "x,y,z",
        "x,-y,-z",
        "-x,-y,-z",
        "-x,y,z",
    ]
}
'-x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21'
    setting_name    => 'P 1 21 1'
    schoenflies     => 'C_2^2'
    number => 4
    symops => [
        "x,y,z",
        "-x,y+1/2,-z",
    ]
}
'-x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P 21'
    setting_name    => 'P 1 1 21'
    schoenflies     => 'C_2^2'
    number => 4
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
    ]
}
'x+1/2,-y,-z;x,y,z' => {
    spacegroup_name => 'P 21'
    setting_name    => 'P 21 1 1'
    schoenflies     => 'C_2^2'
    number => 4
    symops => [
        "x,y,z",
        "x+1/2,-y,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 2'
    setting_name    => 'P 21 21 2'
    schoenflies     => 'D_2^3'
    number => 18
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 2'
    setting_name    => 'P 2 21 21'
    schoenflies     => 'D_2^3'
    number => 18
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 2'
    setting_name    => 'P 2 21 21'
    schoenflies     => 'D_2^3'
    number => 18
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 2'
    setting_name    => 'P 21 2 21'
    schoenflies     => 'D_2^3'
    number => 18
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 2'
    setting_name    => 'P 21 2 21'
    schoenflies     => 'D_2^3'
    number => 18
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21 21 21'
    setting_name    => 'P 21 21 21'
    schoenflies     => 'D_2^4'
    number => 19
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x,y,z;y+1/2,-z+1/2,-x;y,z,x;z+1/2,-x+1/2,-y;z,x,y' => {
    spacegroup_name => 'P 21 3'
    setting_name    => 'P 21 3'
    schoenflies     => 'T^4'
    number => 198
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
    ]
}
'-x,-y,-z;-x,y+1/2,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 21/c 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x,y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,-y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x,-y,-z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 21/n 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,-y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,-z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 21/a 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x+1/2,y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,-y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,-y,-z;x+1/2,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 1 21/a'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x,-y,-z;x+1/2,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 1 21/n'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
    ]
}
'-x,-y+1/2,z+1/2;-x,-y,-z;x,y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 1 1 21/b'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "-x,-y+1/2,z+1/2",
        "-x,-y,-z",
        "x,y+1/2,-z+1/2",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,-z;x+1/2,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 21/a 1 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,-z;x+1/2,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 21/n 1 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,-z;x+1/2,-y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/c'
    setting_name    => 'P 21/c 1 1'
    schoenflies     => 'C_2h^5'
    number => 14
    symops => [
        "x,y,z",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x,-y,-z;-x,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P 21/m'
    setting_name    => 'P 1 21/m 1'
    schoenflies     => 'C_2h^2'
    number => 11
    symops => [
        "x,y,z",
        "-x,y+1/2,-z",
        "-x,-y,-z",
        "x,-y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P 21/m'
    setting_name    => 'P 1 1 21/m'
    schoenflies     => 'C_2h^2'
    number => 11
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,-y,-z",
        "x,y,-z+1/2",
    ]
}
'-x+1/2,y,z;-x,-y,-z;x+1/2,-y,-z;x,y,z' => {
    spacegroup_name => 'P 21/m'
    setting_name    => 'P 21/m 1 1'
    schoenflies     => 'C_2h^2'
    number => 11
    symops => [
        "x,y,z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "-x+1/2,y,z",
    ]
}
'-x+y,-x,z;-y,x-y,z;x,y,z' => {
    spacegroup_name => 'P 3'
    setting_name    => 'P 3'
    schoenflies     => 'C_3^1'
    number => 143
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
    ]
}
'-x+y,-x,z;-x+y,y,-z;-y,-x,-z;-y,x-y,z;x,x-y,-z;x,y,z' => {
    spacegroup_name => 'P 3 1 2'
    setting_name    => 'P 3 1 2'
    schoenflies     => 'D_3^1'
    number => 149
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
    ]
}
'-x+y,-x,z;-x,-x+y,z+1/2;-y,x-y,z;x,y,z;x-y,-y,z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 3 1 c'
    setting_name    => 'P 3 1 c'
    schoenflies     => 'C_3v^4'
    number => 159
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,z;-x,-x+y,z;-y,x-y,z;x,y,z;x-y,-y,z;y,x,z' => {
    spacegroup_name => 'P 3 1 m'
    setting_name    => 'P 3 1 m'
    schoenflies     => 'C_3v^2'
    number => 157
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,z;-x,-x+y,-z;-y,x-y,z;x,y,z;x-y,-y,-z;y,x,-z' => {
    spacegroup_name => 'P 3 2 1'
    setting_name    => 'P 3 2 1'
    schoenflies     => 'D_3^2'
    number => 150
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P 3 c 1'
    setting_name    => 'P 3 c 1'
    schoenflies     => 'C_3v^3'
    number => 158
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z' => {
    spacegroup_name => 'P 3 m 1'
    setting_name    => 'P 3 m 1'
    schoenflies     => 'C_3v^1'
    number => 156
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
    ]
}
'-x+y,-x,z+2/3;-y,x-y,z+1/3;x,y,z' => {
    spacegroup_name => 'P 31'
    setting_name    => 'P 31'
    schoenflies     => 'C_3^2'
    number => 144
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
    ]
}
'-x+y,-x,z+2/3;-x+y,y,-z+1/3;-y,-x,-z+2/3;-y,x-y,z+1/3;x,x-y,-z;x,y,z' => {
    spacegroup_name => 'P 31 1 2'
    setting_name    => 'P 31 1 2'
    schoenflies     => 'D_3^3'
    number => 151
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "-y,-x,-z+2/3",
        "-x+y,y,-z+1/3",
        "x,x-y,-z",
    ]
}
'-x+y,-x,z+2/3;-x,-x+y,-z+1/3;-y,x-y,z+1/3;x,y,z;x-y,-y,-z+2/3;y,x,-z' => {
    spacegroup_name => 'P 31 2 1'
    setting_name    => 'P 31 2 1'
    schoenflies     => 'D_3^4'
    number => 152
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "y,x,-z",
        "x-y,-y,-z+2/3",
        "-x,-x+y,-z+1/3",
    ]
}
'-x+y,-x,z+1/3;-y,x-y,z+2/3;x,y,z' => {
    spacegroup_name => 'P 32'
    setting_name    => 'P 32'
    schoenflies     => 'C_3^3'
    number => 145
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
    ]
}
'-x+y,-x,z+1/3;-x+y,y,-z+2/3;-y,-x,-z+1/3;-y,x-y,z+2/3;x,x-y,-z;x,y,z' => {
    spacegroup_name => 'P 32 1 2'
    setting_name    => 'P 32 1 2'
    schoenflies     => 'D_3^5'
    number => 153
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "-y,-x,-z+1/3",
        "-x+y,y,-z+2/3",
        "x,x-y,-z",
    ]
}
'-x+y,-x,z+1/3;-x,-x+y,-z+2/3;-y,x-y,z+2/3;x,y,z;x-y,-y,-z+1/3;y,x,-z' => {
    spacegroup_name => 'P 32 2 1'
    setting_name    => 'P 32 2 1'
    schoenflies     => 'D_3^6'
    number => 154
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "y,x,-z",
        "x-y,-y,-z+1/3",
        "-x,-x+y,-z+2/3",
    ]
}
'-x,-y,z;-y,x,z;x,y,z;y,-x,z' => {
    spacegroup_name => 'P 4'
    setting_name    => 'C 4'
    schoenflies     => 'C_4^1'
    number => 75
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
    ]
}
'-x,-y,z;-x,y,-z;-y,-x,-z;-y,x,z;x,-y,-z;x,y,z;y,-x,z;y,x,-z' => {
    spacegroup_name => 'P 4 2 2'
    setting_name    => 'C 4 2 2'
    schoenflies     => 'D_4^1'
    number => 89
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x,-y,z;-y+1/2,x+1/2,z;-y,-x,-z;x+1/2,-y+1/2,-z;x,y,z;y+1/2,-x+1/2,z;y,x,-z' => {
    spacegroup_name => 'P 4 21 2'
    setting_name    => 'C 4 21 2'
    schoenflies     => 'D_4^2'
    number => 90
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y+1/2,x+1/2,z",
        "y+1/2,-x+1/2,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x,-y,z;-x,-z,-y;-x,y,-z;-x,z,y;-y,-x,-z;-y,-z,x;-y,x,z;-y,z,-x;-z,-x,y;-z,-y,-x;-z,x,-y;-z,y,x;x,-y,-z;x,-z,y;x,y,z;x,z,-y;y,-x,z;y,-z,-x;y,x,-z;y,z,x;z,-x,-y;z,-y,x;z,x,y;z,y,-x' => {
    spacegroup_name => 'P 4 3 2'
    setting_name    => 'P 4 3 2'
    schoenflies     => 'O^1'
    number => 207
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;-y+1/2,-x+1/2,z;-y,x,z;x+1/2,-y+1/2,z;x,y,z;y+1/2,x+1/2,z;y,-x,z' => {
    spacegroup_name => 'P 4 b m'
    setting_name    => 'C 4 m g1'
    schoenflies     => 'C_4v^2'
    number => 100
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
        "-y+1/2,-x+1/2,z",
        "y+1/2,x+1/2,z",
    ]
}
'-x,-y,z;-x,y,z+1/2;-y,-x,z+1/2;-y,x,z;x,-y,z+1/2;x,y,z;y,-x,z;y,x,z+1/2' => {
    spacegroup_name => 'P 4 c c'
    setting_name    => 'C 4 c c'
    schoenflies     => 'C_4v^5'
    number => 103
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x,-y,z;-x,y,z;-y,-x,z;-y,x,z;x,-y,z;x,y,z;y,-x,z;y,x,z' => {
    spacegroup_name => 'P 4 m m'
    setting_name    => 'C 4 m m'
    schoenflies     => 'C_4v^1'
    number => 99
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;-y+1/2,-x+1/2,z+1/2;-y,x,z;x+1/2,-y+1/2,z+1/2;x,y,z;y+1/2,x+1/2,z+1/2;y,-x,z' => {
    spacegroup_name => 'P 4 n c'
    setting_name    => 'C 4 c g2'
    schoenflies     => 'P_4v^6'
    number => 104
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-y,x,-z;-y,x,z;x,y,-z;x,y,z;y,-x,-z;y,-x,z' => {
    spacegroup_name => 'P 4/m'
    setting_name    => 'C 4/m'
    schoenflies     => 'C_4h^1'
    number => 83
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;-y+1/2,-x+1/2,-z;-y+1/2,-x+1/2,z;-y,x,-z;-y,x,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z;y+1/2,x+1/2,-z;y+1/2,x+1/2,z;y,-x,-z;y,-x,z' => {
    spacegroup_name => 'P 4/m b m'
    setting_name    => 'C 4/m m b'
    schoenflies     => 'D_4h^5'
    number => 127
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "y+1/2,x+1/2,-z",
        "-y+1/2,-x+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
        "-y+1/2,-x+1/2,z",
        "y+1/2,x+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;-y,-x,-z+1/2;-y,-x,z+1/2;-y,x,-z;-y,x,z;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z;y,-x,-z;y,-x,z;y,x,-z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 4/m c c'
    setting_name    => 'C 4/m c c'
    schoenflies     => 'D_4h^2'
    number => 124
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-x,-z;-y,-x,z;-y,x,-z;-y,x,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-x,-z;y,-x,z;y,x,-z;y,x,z' => {
    spacegroup_name => 'P 4/m m m'
    setting_name    => 'C 4/m m m'
    schoenflies     => 'D_4h^1'
    number => 123
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,-x+1/2,z+1/2;-y,x,-z;-y,x,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z;y+1/2,x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-x,-z;y,-x,z' => {
    spacegroup_name => 'P 4/m n c'
    setting_name    => 'C 4/m c n'
    schoenflies     => 'D_4h^6'
    number => 128
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z",
        "y,-x,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z",
        "-y,x,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x,-y,-z;-y+1/2,x,z;-y,x+1/2,-z;x+1/2,y+1/2,-z;x,y,z;y+1/2,-x,-z;y,-x+1/2,z' => {
    spacegroup_name => 'P 4/n'
    setting_name    => 'C 4/a'
    schoenflies     => 'C_4h^3'
    number => 85
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z",
        "y,-x+1/2,z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z",
        "-y,x+1/2,-z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;-y+1/2,-x+1/2,-z;-y+1/2,x,z;-y,-x,z;-y,x+1/2,-z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z;y+1/2,-x,-z;y+1/2,x+1/2,z;y,-x+1/2,z;y,x,-z' => {
    spacegroup_name => 'P 4/n b m'
    setting_name    => 'C 4/a m b'
    schoenflies     => 'D_4h^3'
    number => 125
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z",
        "y,-x+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "y,x,-z",
        "-y+1/2,-x+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z",
        "-y,x+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
        "-y,-x,z",
        "y+1/2,x+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-y+1/2,-x+1/2,z+1/2;-y+1/2,x,z;-y,-x,-z+1/2;-y,x+1/2,-z;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z;y+1/2,-x,-z;y+1/2,x+1/2,-z+1/2;y,-x+1/2,z;y,x,z+1/2' => {
    spacegroup_name => 'P 4/n c c'
    setting_name    => 'C 4/a c c'
    schoenflies     => 'D_4h^8'
    number => 130
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z",
        "y,-x+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "y+1/2,x+1/2,-z+1/2",
        "-y,-x,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z",
        "-y,x+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
        "-y+1/2,-x+1/2,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;-y+1/2,-x+1/2,z;-y+1/2,x,z;-y,-x,-z;-y,x+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z;y+1/2,-x,-z;y+1/2,x+1/2,-z;y,-x+1/2,z;y,x,z' => {
    spacegroup_name => 'P 4/n m m'
    setting_name    => 'C 4/a m m'
    schoenflies     => 'D_4h^7'
    number => 129
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z",
        "y,-x+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "y+1/2,x+1/2,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z",
        "-y,x+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
        "-y+1/2,-x+1/2,z",
        "y,x,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;-y+1/2,-x+1/2,-z+1/2;-y+1/2,x,z;-y,-x,z+1/2;-y,x+1/2,-z;x+1/2,-y,z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,-z+1/2;x,y,z;y+1/2,-x,-z;y+1/2,x+1/2,z+1/2;y,-x+1/2,z;y,x,-z+1/2' => {
    spacegroup_name => 'P 4/n n c'
    setting_name    => 'C 4/a c n'
    schoenflies     => 'D_4h^4'
    number => 126
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z",
        "y,-x+1/2,z",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "y,x,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z",
        "-y,x+1/2,-z",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
        "-y,-x,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x,-y,z+1/2;-y,x,z+1/4;x,y,z;y,-x,z+3/4' => {
    spacegroup_name => 'P 41'
    setting_name    => 'C 41'
    schoenflies     => 'C_4^2'
    number => 76
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y,x,z+1/4",
        "y,-x,z+3/4",
    ]
}
'-x,-y,z+1/2;-x,y,-z;-y,-x,-z+1/4;-y,x,z+1/4;x,-y,-z+1/2;x,y,z;y,-x,z+3/4;y,x,-z+3/4' => {
    spacegroup_name => 'P 41 2 2'
    setting_name    => 'C 41 2 2'
    schoenflies     => 'D_4^3'
    number => 91
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y,x,z+1/4",
        "y,-x,z+3/4",
        "-x,y,-z",
        "x,-y,-z+1/2",
        "y,x,-z+3/4",
        "-y,-x,-z+1/4",
    ]
}
'-x+1/2,y+1/2,-z+1/4;-x,-y,z+1/2;-y+1/2,x+1/2,z+1/4;-y,-x,-z+1/2;x+1/2,-y+1/2,-z+3/4;x,y,z;y+1/2,-x+1/2,z+3/4;y,x,-z' => {
    spacegroup_name => 'P 41 21 2'
    setting_name    => 'C 41 2 21'
    schoenflies     => 'D_4^4'
    number => 92
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y+1/2,x+1/2,z+1/4",
        "y+1/2,-x+1/2,z+3/4",
        "-x+1/2,y+1/2,-z+1/4",
        "x+1/2,-y+1/2,-z+3/4",
        "y,x,-z",
        "-y,-x,-z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/4,z+3/4,y+1/4;-x+3/4,-z+3/4,-y+3/4;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/4,-x+1/4,-z+1/4;-y+1/4,x+3/4,z+1/4;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/4,y+3/4,x+1/4;-z+3/4,-y+3/4,-x+3/4;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/4,-z+1/4,y+3/4;x+3/4,z+1/4,-y+1/4;x,y,z;y+1/2,-z+1/2,-x;y+1/4,-x+1/4,z+3/4;y+3/4,x+1/4,-z+1/4;y,z,x;z+1/2,-x+1/2,-y;z+1/4,-y+1/4,x+3/4;z+3/4,y+1/4,-x+1/4;z,x,y' => {
    spacegroup_name => 'P 41 3 2'
    setting_name    => 'P 41 3 2'
    schoenflies     => 'O^7'
    number => 213
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "y+3/4,x+1/4,-z+1/4",
        "-y+1/4,-x+1/4,-z+1/4",
        "y+1/4,-x+1/4,z+3/4",
        "-y+1/4,x+3/4,z+1/4",
        "x+3/4,z+1/4,-y+1/4",
        "-x+1/4,z+3/4,y+1/4",
        "-x+3/4,-z+3/4,-y+3/4",
        "x+1/4,-z+1/4,y+3/4",
        "z+3/4,y+1/4,-x+1/4",
        "z+1/4,-y+1/4,x+3/4",
        "-z+1/4,y+3/4,x+1/4",
        "-z+3/4,-y+3/4,-x+3/4",
    ]
}
'-x,-y,z;-y,x,z+1/2;x,y,z;y,-x,z+1/2' => {
    spacegroup_name => 'P 42'
    setting_name    => 'C 42'
    schoenflies     => 'C_4^3'
    number => 77
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
    ]
}
'-x,-y,z;-x,y,-z;-y,-x,-z+1/2;-y,x,z+1/2;x,-y,-z;x,y,z;y,-x,z+1/2;y,x,-z+1/2' => {
    spacegroup_name => 'P 42 2 2'
    setting_name    => 'C 42 2 2'
    schoenflies     => 'D_4^5'
    number => 93
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x,-y,z;-y+1/2,x+1/2,z+1/2;-y,-x,-z;x+1/2,-y+1/2,-z+1/2;x,y,z;y+1/2,-x+1/2,z+1/2;y,x,-z' => {
    spacegroup_name => 'P 42 21 2'
    setting_name    => 'C 42 2 21'
    schoenflies     => 'D_4^6'
    number => 94
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y+1/2,x+1/2,z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "y,x,-z",
        "-y,-x,-z",
    ]
}
'-x+1/2,-z+1/2,-y+1/2;-x+1/2,z+1/2,y+1/2;-x,-y,z;-x,y,-z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,x+1/2,z+1/2;-y,-z,x;-y,z,-x;-z+1/2,-y+1/2,-x+1/2;-z+1/2,y+1/2,x+1/2;-z,-x,y;-z,x,-y;x+1/2,-z+1/2,y+1/2;x+1/2,z+1/2,-y+1/2;x,-y,-z;x,y,z;y+1/2,-x+1/2,z+1/2;y+1/2,x+1/2,-z+1/2;y,-z,-x;y,z,x;z+1/2,-y+1/2,x+1/2;z+1/2,y+1/2,-x+1/2;z,-x,-y;z,x,y' => {
    spacegroup_name => 'P 42 3 2'
    setting_name    => 'P 42 3 2'
    schoenflies     => 'O^2'
    number => 208
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-y+1/2,x+1/2,z+1/2",
        "x+1/2,z+1/2,-y+1/2",
        "-x+1/2,z+1/2,y+1/2",
        "-x+1/2,-z+1/2,-y+1/2",
        "x+1/2,-z+1/2,y+1/2",
        "z+1/2,y+1/2,-x+1/2",
        "z+1/2,-y+1/2,x+1/2",
        "-z+1/2,y+1/2,x+1/2",
        "-z+1/2,-y+1/2,-x+1/2",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;-y+1/2,-x+1/2,z+1/2;-y,x,z+1/2;x+1/2,-y+1/2,z;x,y,z;y+1/2,x+1/2,z+1/2;y,-x,z+1/2' => {
    spacegroup_name => 'P 42 b c'
    setting_name    => 'C 42 c g1'
    schoenflies     => 'C_4v^8'
    number => 106
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;-y,-x,z;-y,x,z+1/2;x,-y,z+1/2;x,y,z;y,-x,z+1/2;y,x,z' => {
    spacegroup_name => 'P 42 c m'
    setting_name    => 'C 42 m c'
    schoenflies     => 'D_4v^3'
    number => 101
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x,-y,z;-x,y,z;-y,-x,z+1/2;-y,x,z+1/2;x,-y,z;x,y,z;y,-x,z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 42 m c'
    setting_name    => 'C 42 c m'
    schoenflies     => 'C_4v^7'
    number => 105
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;-y+1/2,x+1/2,z+1/2;-y,-x,z;x+1/2,-y+1/2,z+1/2;x,y,z;y+1/2,-x+1/2,z+1/2;y,x,z' => {
    spacegroup_name => 'P 42 n m'
    setting_name    => 'C 42 m g2'
    schoenflies     => 'C_4v^4'
    number => 102
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y+1/2,x+1/2,z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x,-y,-z;-x,-y,z;-y,x,-z+1/2;-y,x,z+1/2;x,y,-z;x,y,z;y,-x,-z+1/2;y,-x,z+1/2' => {
    spacegroup_name => 'P 42/m'
    setting_name    => 'C 42/m'
    schoenflies     => 'C_4h^2'
    number => 84
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z+1/2",
        "-y,x,-z+1/2",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,-x+1/2,z+1/2;-y,x,-z+1/2;-y,x,z+1/2;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z;y+1/2,x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-x,-z+1/2;y,-x,z+1/2' => {
    spacegroup_name => 'P 42/m b c'
    setting_name    => 'C 42/m c b'
    schoenflies     => 'D_4h^13'
    number => 135
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z+1/2",
        "-y,x,-z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;-y,-x,-z;-y,-x,z;-y,x,-z+1/2;-y,x,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z;y,-x,-z+1/2;y,-x,z+1/2;y,x,-z;y,x,z' => {
    spacegroup_name => 'P 42/m c m'
    setting_name    => 'C 42/m m c'
    schoenflies     => 'D_4h^10'
    number => 132
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "y,x,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z+1/2",
        "-y,x,-z+1/2",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-x,-z+1/2;-y,-x,z+1/2;-y,x,-z+1/2;-y,x,z+1/2;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-x,-z+1/2;y,-x,z+1/2;y,x,-z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 42/m m c'
    setting_name    => 'C 42/m c m'
    schoenflies     => 'D_4h^9'
    number => 131
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y,x,z+1/2",
        "y,-x,z+1/2",
        "-x,y,-z",
        "x,-y,-z",
        "y,x,-z+1/2",
        "-y,-x,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "y,-x,-z+1/2",
        "-y,x,-z+1/2",
        "x,-y,z",
        "-x,y,z",
        "-y,-x,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;-y+1/2,x+1/2,-z+1/2;-y+1/2,x+1/2,z+1/2;-y,-x,-z;-y,-x,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z;y+1/2,-x+1/2,-z+1/2;y+1/2,-x+1/2,z+1/2;y,x,-z;y,x,z' => {
    spacegroup_name => 'P 42/m n m'
    setting_name    => 'C 42/m m n'
    schoenflies     => 'D_4h^14'
    number => 136
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-y+1/2,x+1/2,z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "y,x,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x,y,-z",
        "y+1/2,-x+1/2,-z+1/2",
        "-y+1/2,x+1/2,-z+1/2",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
        "-y,-x,z",
        "y,x,z",
    ]
}
'-x+1/2,-y+1/2,z;-x,-y,-z;-y+1/2,x,-z+1/2;-y,x+1/2,z+1/2;x+1/2,y+1/2,-z;x,y,z;y+1/2,-x+1/2,z+1/2;y,-x+1/2,-z+1/2' => {
    spacegroup_name => 'P 42/n'
    setting_name    => 'C 42/a'
    schoenflies     => 'C_4h^4'
    number => 86
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y,x+1/2,z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y,-x+1/2,-z+1/2",
        "-y+1/2,x,-z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,x,z+1/2;-y,-x,z+1/2;-y,x+1/2,-z+1/2;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z;y+1/2,-x,-z+1/2;y+1/2,x+1/2,z+1/2;y,-x+1/2,z+1/2;y,x,-z+1/2' => {
    spacegroup_name => 'P 42/n b c'
    setting_name    => 'C 42/a c b'
    schoenflies     => 'D_4h^11'
    number => 133
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z+1/2",
        "y,-x+1/2,z+1/2",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "y,x,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z+1/2",
        "-y,x+1/2,-z+1/2",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
        "-y,-x,z+1/2",
        "y+1/2,x+1/2,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;-y+1/2,-x+1/2,z;-y+1/2,x,z+1/2;-y,-x,-z;-y,x+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z;y+1/2,-x,-z+1/2;y+1/2,x+1/2,-z;y,-x+1/2,z+1/2;y,x,z' => {
    spacegroup_name => 'P 42/n c m'
    setting_name    => 'C 42/a m c'
    schoenflies     => 'D_4h^16'
    number => 138
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z+1/2",
        "y,-x+1/2,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "y+1/2,x+1/2,-z",
        "-y,-x,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z+1/2",
        "-y,x+1/2,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
        "-y+1/2,-x+1/2,z",
        "y,x,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;-y+1/2,-x+1/2,z+1/2;-y+1/2,x,z+1/2;-y,-x,-z+1/2;-y,x+1/2,-z+1/2;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z;y+1/2,-x,-z+1/2;y+1/2,x+1/2,-z+1/2;y,-x+1/2,z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 42/n m c'
    setting_name    => 'C 42/a c m'
    schoenflies     => 'D_4h^15'
    number => 137
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z+1/2",
        "y,-x+1/2,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "y+1/2,x+1/2,-z+1/2",
        "-y,-x,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z+1/2",
        "-y,x+1/2,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
        "-y+1/2,-x+1/2,z+1/2",
        "y,x,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;-y+1/2,-x+1/2,-z;-y+1/2,x,z+1/2;-y,-x,z;-y,x+1/2,-z+1/2;x+1/2,-y,z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,-z+1/2;x,y,z;y+1/2,-x,-z+1/2;y+1/2,x+1/2,z;y,-x+1/2,z+1/2;y,x,-z' => {
    spacegroup_name => 'P 42/n n m'
    setting_name    => 'C 42/a m n'
    schoenflies     => 'D_4h^12'
    number => 134
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-y+1/2,x,z+1/2",
        "y,-x+1/2,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "y,x,-z",
        "-y+1/2,-x+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "y+1/2,-x,-z+1/2",
        "-y,x+1/2,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
        "-y,-x,z",
        "y+1/2,x+1/2,z",
    ]
}
'-x,-y,z+1/2;-y,x,z+3/4;x,y,z;y,-x,z+1/4' => {
    spacegroup_name => 'P 43'
    setting_name    => 'C 43'
    schoenflies     => 'C_4^4'
    number => 78
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y,x,z+3/4",
        "y,-x,z+1/4",
    ]
}
'-x,-y,z+1/2;-x,y,-z;-y,-x,-z+3/4;-y,x,z+3/4;x,-y,-z+1/2;x,y,z;y,-x,z+1/4;y,x,-z+1/4' => {
    spacegroup_name => 'P 43 2 2'
    setting_name    => 'C 43 2 2'
    schoenflies     => 'D_4^7'
    number => 95
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y,x,z+3/4",
        "y,-x,z+1/4",
        "-x,y,-z",
        "x,-y,-z+1/2",
        "y,x,-z+1/4",
        "-y,-x,-z+3/4",
    ]
}
'-x+1/2,y+1/2,-z+3/4;-x,-y,z+1/2;-y+1/2,x+1/2,z+3/4;-y,-x,-z+1/2;x+1/2,-y+1/2,-z+1/4;x,y,z;y+1/2,-x+1/2,z+1/4;y,x,-z' => {
    spacegroup_name => 'P 43 21 2'
    setting_name    => 'C 43 2 21'
    schoenflies     => 'D_4^8'
    number => 96
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-y+1/2,x+1/2,z+3/4",
        "y+1/2,-x+1/2,z+1/4",
        "-x+1/2,y+1/2,-z+3/4",
        "x+1/2,-y+1/2,-z+1/4",
        "y,x,-z",
        "-y,-x,-z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/4,-z+1/4,-y+1/4;-x+3/4,z+1/4,y+3/4;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/4,-x+1/4,-z+1/4;-y+3/4,x+1/4,z+3/4;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/4,-y+1/4,-x+1/4;-z+3/4,y+1/4,x+3/4;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/4,z+3/4,-y+3/4;x+3/4,-z+3/4,y+1/4;x,y,z;y+1/2,-z+1/2,-x;y+1/4,x+3/4,-z+3/4;y+3/4,-x+3/4,z+1/4;y,z,x;z+1/2,-x+1/2,-y;z+1/4,y+3/4,-x+3/4;z+3/4,-y+3/4,x+1/4;z,x,y' => {
    spacegroup_name => 'P 43 3 2'
    setting_name    => 'P 43 3 2'
    schoenflies     => 'O^6'
    number => 212
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "y+1/4,x+3/4,-z+3/4",
        "-y+1/4,-x+1/4,-z+1/4",
        "y+3/4,-x+3/4,z+1/4",
        "-y+3/4,x+1/4,z+3/4",
        "x+1/4,z+3/4,-y+3/4",
        "-x+3/4,z+1/4,y+3/4",
        "-x+1/4,-z+1/4,-y+1/4",
        "x+3/4,-z+3/4,y+1/4",
        "z+1/4,y+3/4,-x+3/4",
        "z+3/4,-y+3/4,x+1/4",
        "-z+3/4,y+1/4,x+3/4",
        "-z+1/4,-y+1/4,-x+1/4",
    ]
}
'-x+y,-x,z;-x,-y,z;-y,x-y,z;x,y,z;x-y,x,z;y,-x+y,z' => {
    spacegroup_name => 'P 6'
    setting_name    => 'P 6'
    schoenflies     => 'C_6^1'
    number => 168
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
    ]
}
'-x+y,-x,z;-x+y,y,-z;-x,-x+y,-z;-x,-y,z;-y,-x,-z;-y,x-y,z;x,x-y,-z;x,y,z;x-y,-y,-z;x-y,x,z;y,-x+y,z;y,x,-z' => {
    spacegroup_name => 'P 6 2 2'
    setting_name    => 'P 6 2 2'
    schoenflies     => 'D_6^1'
    number => 177
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-x,-x+y,z+1/2;-x,-y,z;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z;x-y,-y,z+1/2;x-y,x,z;y,-x+y,z;y,x,z+1/2' => {
    spacegroup_name => 'P 6 c c'
    setting_name    => 'P 6 c c'
    schoenflies     => 'C_6v^2'
    number => 184
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z;-x,-x+y,z;-x,-y,z;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z;x-y,-y,z;x-y,x,z;y,-x+y,z;y,x,z' => {
    spacegroup_name => 'P 6 m m'
    setting_name    => 'P 6 m m'
    schoenflies     => 'C_6v^1'
    number => 183
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-x,-y,-z;-x,-y,z;-y,x-y,-z;-y,x-y,z;x,y,-z;x,y,z;x-y,x,-z;x-y,x,z;y,-x+y,-z;y,-x+y,z' => {
    spacegroup_name => 'P 6/m'
    setting_name    => 'P 6/m'
    schoenflies     => 'C_6h^1'
    number => 175
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-x+y,y,-z+1/2;-x+y,y,z+1/2;-x,-x+y,-z+1/2;-x,-x+y,z+1/2;-x,-y,-z;-x,-y,z;-y,-x,-z+1/2;-y,-x,z+1/2;-y,x-y,-z;-y,x-y,z;x,x-y,-z+1/2;x,x-y,z+1/2;x,y,-z;x,y,z;x-y,-y,-z+1/2;x-y,-y,z+1/2;x-y,x,-z;x-y,x,z;y,-x+y,-z;y,-x+y,z;y,x,-z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 6/m c c'
    setting_name    => 'P 6/m c c'
    schoenflies     => 'D_6h^2'
    number => 192
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "y,x,-z+1/2",
        "x-y,-y,-z+1/2",
        "-x,-x+y,-z+1/2",
        "-y,-x,-z+1/2",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,-z;-x+y,-x,z;-x+y,y,-z;-x+y,y,z;-x,-x+y,-z;-x,-x+y,z;-x,-y,-z;-x,-y,z;-y,-x,-z;-y,-x,z;-y,x-y,-z;-y,x-y,z;x,x-y,-z;x,x-y,z;x,y,-z;x,y,z;x-y,-y,-z;x-y,-y,z;x-y,x,-z;x-y,x,z;y,-x+y,-z;y,-x+y,z;y,x,-z;y,x,z' => {
    spacegroup_name => 'P 6/m m m'
    setting_name    => 'P 6/m m m'
    schoenflies     => 'D_6h^1'
    number => 191
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z",
        "y,-x+y,z",
        "x-y,x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z",
        "-y,x-y,-z",
        "-x+y,-x,-z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,z+2/3;-x,-y,z+1/2;-y,x-y,z+1/3;x,y,z;x-y,x,z+1/6;y,-x+y,z+5/6' => {
    spacegroup_name => 'P 61'
    setting_name    => 'P 61'
    schoenflies     => 'C_6^2'
    number => 169
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "-x,-y,z+1/2",
        "y,-x+y,z+5/6",
        "x-y,x,z+1/6",
    ]
}
'-x+y,-x,z+2/3;-x+y,y,-z+1/2;-x,-x+y,-z+2/3;-x,-y,z+1/2;-y,-x,-z+5/6;-y,x-y,z+1/3;x,x-y,-z+1/6;x,y,z;x-y,-y,-z;x-y,x,z+1/6;y,-x+y,z+5/6;y,x,-z+1/3' => {
    spacegroup_name => 'P 61 2 2'
    setting_name    => 'P 61 2 2'
    schoenflies     => 'D_6^2'
    number => 178
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "-x,-y,z+1/2",
        "y,-x+y,z+5/6",
        "x-y,x,z+1/6",
        "y,x,-z+1/3",
        "x-y,-y,-z",
        "-x,-x+y,-z+2/3",
        "-y,-x,-z+5/6",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+1/6",
    ]
}
'-x+y,-x,z+1/3;-x,-y,z;-y,x-y,z+2/3;x,y,z;x-y,x,z+1/3;y,-x+y,z+2/3' => {
    spacegroup_name => 'P 62'
    setting_name    => 'P 62'
    schoenflies     => 'C_6^4'
    number => 171
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "-x,-y,z",
        "y,-x+y,z+2/3",
        "x-y,x,z+1/3",
    ]
}
'-x+y,-x,z+1/3;-x+y,y,-z;-x,-x+y,-z+1/3;-x,-y,z;-y,-x,-z+2/3;-y,x-y,z+2/3;x,x-y,-z+1/3;x,y,z;x-y,-y,-z;x-y,x,z+1/3;y,-x+y,z+2/3;y,x,-z+2/3' => {
    spacegroup_name => 'P 62 2 2'
    setting_name    => 'P 62 2 2'
    schoenflies     => 'D_6^4'
    number => 180
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "-x,-y,z",
        "y,-x+y,z+2/3",
        "x-y,x,z+1/3",
        "y,x,-z+2/3",
        "x-y,-y,-z",
        "-x,-x+y,-z+1/3",
        "-y,-x,-z+2/3",
        "-x+y,y,-z",
        "x,x-y,-z+1/3",
    ]
}
'-x+y,-x,z;-x,-y,z+1/2;-y,x-y,z;x,y,z;x-y,x,z+1/2;y,-x+y,z+1/2' => {
    spacegroup_name => 'P 63'
    setting_name    => 'P 63'
    schoenflies     => 'C_6^6'
    number => 173
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,-z+1/2;-x,-x+y,-z;-x,-y,z+1/2;-y,-x,-z+1/2;-y,x-y,z;x,x-y,-z+1/2;x,y,z;x-y,-y,-z;x-y,x,z+1/2;y,-x+y,z+1/2;y,x,-z' => {
    spacegroup_name => 'P 63 2 2'
    setting_name    => 'P 63 2 2'
    schoenflies     => 'D_6^6'
    number => 182
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-y,-x,-z+1/2",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-x,-x+y,z;-x,-y,z+1/2;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z;x-y,-y,z;x-y,x,z+1/2;y,-x+y,z+1/2;y,x,z' => {
    spacegroup_name => 'P 63 c m'
    setting_name    => 'P 63 c m'
    schoenflies     => 'C_6v^3'
    number => 185
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,z;-x+y,y,z;-x,-x+y,z+1/2;-x,-y,z+1/2;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z;x-y,-y,z+1/2;x-y,x,z+1/2;y,-x+y,z+1/2;y,x,z+1/2' => {
    spacegroup_name => 'P 63 m c'
    setting_name    => 'P 63 m c'
    schoenflies     => 'C_6v^4'
    number => 186
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,-z+1/2;-x+y,-x,z;-x,-y,-z;-x,-y,z+1/2;-y,x-y,-z+1/2;-y,x-y,z;x,y,-z+1/2;x,y,z;x-y,x,-z;x-y,x,z+1/2;y,-x+y,-z;y,-x+y,z+1/2' => {
    spacegroup_name => 'P 63/m'
    setting_name    => 'P 63/m'
    schoenflies     => 'C_6h^2'
    number => 176
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z+1/2",
        "-y,x-y,-z+1/2",
        "-x+y,-x,-z+1/2",
    ]
}
'-x+y,-x,-z+1/2;-x+y,-x,z;-x+y,y,-z;-x+y,y,z+1/2;-x,-x+y,-z+1/2;-x,-x+y,z;-x,-y,-z;-x,-y,z+1/2;-y,-x,-z;-y,-x,z+1/2;-y,x-y,-z+1/2;-y,x-y,z;x,x-y,-z;x,x-y,z+1/2;x,y,-z+1/2;x,y,z;x-y,-y,-z+1/2;x-y,-y,z;x-y,x,-z;x-y,x,z+1/2;y,-x+y,-z;y,-x+y,z+1/2;y,x,-z+1/2;y,x,z' => {
    spacegroup_name => 'P 63/m c m'
    setting_name    => 'P 63/m c m'
    schoenflies     => 'D_6h^3'
    number => 193
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "y,x,-z+1/2",
        "x-y,-y,-z+1/2",
        "-x,-x+y,-z+1/2",
        "-y,-x,-z",
        "-x+y,y,-z",
        "x,x-y,-z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z+1/2",
        "-y,x-y,-z+1/2",
        "-x+y,-x,-z+1/2",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
        "y,x,z",
        "x-y,-y,z",
        "-x,-x+y,z",
    ]
}
'-x+y,-x,-z+1/2;-x+y,-x,z;-x+y,y,-z+1/2;-x+y,y,z;-x,-x+y,-z;-x,-x+y,z+1/2;-x,-y,-z;-x,-y,z+1/2;-y,-x,-z+1/2;-y,-x,z;-y,x-y,-z+1/2;-y,x-y,z;x,x-y,-z+1/2;x,x-y,z;x,y,-z+1/2;x,y,z;x-y,-y,-z;x-y,-y,z+1/2;x-y,x,-z;x-y,x,z+1/2;y,-x+y,-z;y,-x+y,z+1/2;y,x,-z;y,x,z+1/2' => {
    spacegroup_name => 'P 63/m m c'
    setting_name    => 'P 63/m m c'
    schoenflies     => 'D_6h^4'
    number => 194
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/2",
        "x-y,x,z+1/2",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-y,-x,-z+1/2",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "x,y,-z+1/2",
        "-y,x-y,-z+1/2",
        "-x+y,-x,-z+1/2",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
        "y,x,z+1/2",
        "x-y,-y,z+1/2",
        "-x,-x+y,z+1/2",
    ]
}
'-x+y,-x,z+2/3;-x,-y,z;-y,x-y,z+1/3;x,y,z;x-y,x,z+2/3;y,-x+y,z+1/3' => {
    spacegroup_name => 'P 64'
    setting_name    => 'P 64'
    schoenflies     => 'C_6^5'
    number => 172
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "-x,-y,z",
        "y,-x+y,z+1/3",
        "x-y,x,z+2/3",
    ]
}
'-x+y,-x,z+2/3;-x+y,y,-z;-x,-x+y,-z+2/3;-x,-y,z;-y,-x,-z+1/3;-y,x-y,z+1/3;x,x-y,-z+2/3;x,y,z;x-y,-y,-z;x-y,x,z+2/3;y,-x+y,z+1/3;y,x,-z+1/3' => {
    spacegroup_name => 'P 64 2 2'
    setting_name    => 'P 64 2 2'
    schoenflies     => 'D_6^5'
    number => 181
    symops => [
        "x,y,z",
        "-y,x-y,z+1/3",
        "-x+y,-x,z+2/3",
        "-x,-y,z",
        "y,-x+y,z+1/3",
        "x-y,x,z+2/3",
        "y,x,-z+1/3",
        "x-y,-y,-z",
        "-x,-x+y,-z+2/3",
        "-y,-x,-z+1/3",
        "-x+y,y,-z",
        "x,x-y,-z+2/3",
    ]
}
'-x+y,-x,z+1/3;-x,-y,z+1/2;-y,x-y,z+2/3;x,y,z;x-y,x,z+5/6;y,-x+y,z+1/6' => {
    spacegroup_name => 'P 65'
    setting_name    => 'P 65'
    schoenflies     => 'C_6^3'
    number => 170
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/6",
        "x-y,x,z+5/6",
    ]
}
'-x+y,-x,z+1/3;-x+y,y,-z+1/2;-x,-x+y,-z+1/3;-x,-y,z+1/2;-y,-x,-z+1/6;-y,x-y,z+2/3;x,x-y,-z+5/6;x,y,z;x-y,-y,-z;x-y,x,z+5/6;y,-x+y,z+1/6;y,x,-z+2/3' => {
    spacegroup_name => 'P 65 2 2'
    setting_name    => 'P 65 2 2'
    schoenflies     => 'D_6^3'
    number => 179
    symops => [
        "x,y,z",
        "-y,x-y,z+2/3",
        "-x+y,-x,z+1/3",
        "-x,-y,z+1/2",
        "y,-x+y,z+1/6",
        "x-y,x,z+5/6",
        "y,x,-z+2/3",
        "x-y,-y,-z",
        "-x,-x+y,-z+1/3",
        "-y,-x,-z+1/6",
        "-x+y,y,-z+1/2",
        "x,x-y,-z+5/6",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;-y+1/2,-z,x+1/2;-y+1/2,z+1/2,x;-y,-z,-x;-y,z+1/2,-x+1/2;-z+1/2,-x,y+1/2;-z+1/2,x+1/2,y;-z,-x,-y;-z,x+1/2,-y+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z;y+1/2,-z+1/2,-x;y+1/2,z,-x+1/2;y,-z+1/2,x+1/2;y,z,x;z+1/2,-x+1/2,-y;z+1/2,x,-y+1/2;z,-x+1/2,y+1/2;z,x,y' => {
    spacegroup_name => 'P a -3'
    setting_name    => 'P a -3'
    schoenflies     => 'T_h^6'
    number => 205
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "z,x,y",
        "z+1/2,-x+1/2,-y",
        "-z+1/2,-x,y+1/2",
        "-z,x+1/2,-y+1/2",
        "y,z,x",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z,x+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
        "-z,-x,-y",
        "-z+1/2,x+1/2,y",
        "z+1/2,x,-y+1/2",
        "z,-x+1/2,y+1/2",
        "-y,-z,-x",
        "y,-z+1/2,x+1/2",
        "-y+1/2,z+1/2,x",
        "y+1/2,z,-x+1/2",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P b a 2'
    setting_name    => 'P b a 2'
    schoenflies     => 'C_2v^8'
    number => 32
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P b a 2'
    setting_name    => 'P 2 c b'
    schoenflies     => 'C_2v^8'
    number => 32
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P b a 2'
    setting_name    => 'P 2 c b'
    schoenflies     => 'C_2v^8'
    number => 32
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P b a 2'
    setting_name    => 'P c 2 a'
    schoenflies     => 'C_2v^8'
    number => 32
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,z;-x,-y,z;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P b a 2'
    setting_name    => 'P c 2 a'
    schoenflies     => 'C_2v^8'
    number => 32
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P b a m'
    setting_name    => 'P b a m'
    schoenflies     => 'D_2h^9'
    number => 55
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P b a m'
    setting_name    => 'P m c b'
    schoenflies     => 'D_2h^9'
    number => 55
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P b a m'
    setting_name    => 'P m c b'
    schoenflies     => 'D_2h^9'
    number => 55
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P b a m'
    setting_name    => 'P c m a'
    schoenflies     => 'D_2h^9'
    number => 55
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,y+1/2,-z;-x+1/2,y+1/2,z;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z;x+1/2,-y+1/2,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P b a m'
    setting_name    => 'P c m a'
    schoenflies     => 'D_2h^9'
    number => 55
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P b a n'
    setting_name    => 'P b a n'
    schoenflies     => 'D_2h^4'
    number => 50
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P b a n'
    setting_name    => 'P n c b'
    schoenflies     => 'D_2h^4'
    number => 50
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P b a n'
    setting_name    => 'P n c b'
    schoenflies     => 'D_2h^4'
    number => 50
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P b a n'
    setting_name    => 'P c n a'
    schoenflies     => 'D_2h^4'
    number => 50
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z;-x,-y,-z;-x,y+1/2,z;x+1/2,-y,z;x+1/2,y+1/2,-z;x,-y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P b a n'
    setting_name    => 'P c n a'
    schoenflies     => 'D_2h^4'
    number => 50
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c a'
    setting_name    => 'P c a b'
    schoenflies     => 'D_2h^15'
    number => 61
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c a'
    setting_name    => 'P b c a'
    schoenflies     => 'D_2h^15'
    number => 61
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c a'
    setting_name    => 'P c a b'
    schoenflies     => 'D_2h^15'
    number => 61
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c a'
    setting_name    => 'P b c a'
    schoenflies     => 'D_2h^15'
    number => 61
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y,-z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c a'
    setting_name    => 'P c a b'
    schoenflies     => 'D_2h^15'
    number => 61
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y+1/2,-z+1/2;-x,y+1/2,z;x,-y+1/2,-z;x,-y+1/2,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P b c m'
    setting_name    => 'P c a m'
    schoenflies     => 'D_2h^11'
    number => 57
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y+1/2,-z+1/2;-x,y+1/2,z;x,-y+1/2,-z;x,-y+1/2,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P b c m'
    setting_name    => 'P m c a'
    schoenflies     => 'D_2h^11'
    number => 57
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y+1/2,-z+1/2;-x,y+1/2,z;x,-y+1/2,-z;x,-y+1/2,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P b c m'
    setting_name    => 'P m a b'
    schoenflies     => 'D_2h^11'
    number => 57
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y+1/2,-z+1/2;-x,y+1/2,z;x,-y+1/2,-z;x,-y+1/2,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P b c m'
    setting_name    => 'P b m a'
    schoenflies     => 'D_2h^11'
    number => 57
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z",
    ]
}
'-x,-y,-z;-x,-y,z+1/2;-x,y+1/2,-z+1/2;-x,y+1/2,z;x,-y+1/2,-z;x,-y+1/2,z+1/2;x,y,-z+1/2;x,y,z' => {
    spacegroup_name => 'P b c m'
    setting_name    => 'P c m b'
    schoenflies     => 'D_2h^11'
    number => 57
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "-x,y+1/2,-z+1/2",
        "x,-y+1/2,-z",
        "-x,-y,-z",
        "x,y,-z+1/2",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y+1/2,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c n'
    setting_name    => 'P c a n'
    schoenflies     => 'D_2h^14'
    number => 60
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,y,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y+1/2,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c n'
    setting_name    => 'P n c a'
    schoenflies     => 'D_2h^14'
    number => 60
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,y,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y+1/2,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c n'
    setting_name    => 'P n a b'
    schoenflies     => 'D_2h^14'
    number => 60
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,y,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y+1/2,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c n'
    setting_name    => 'P b n a'
    schoenflies     => 'D_2h^14'
    number => 60
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,y,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'-x+1/2,-y+1/2,z+1/2;-x+1/2,y+1/2,z;-x,-y,-z;-x,y,-z+1/2;x+1/2,-y+1/2,-z;x+1/2,y+1/2,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P b c n'
    setting_name    => 'P c n b'
    schoenflies     => 'D_2h^14'
    number => 60
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z+1/2",
        "-x,y,-z+1/2",
        "x+1/2,-y+1/2,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z+1/2",
        "x,-y,z+1/2",
        "-x+1/2,y+1/2,z",
    ]
}
'x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 c 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x,-y,z+1/2",
    ]
}
'x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 n 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x+1/2,-y,z+1/2",
    ]
}
'x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 a 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x+1/2,-y,z",
    ]
}
'x+1/2,y,-z;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 1 a'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x+1/2,y,-z",
    ]
}
'x+1/2,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 1 n'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x+1/2,y+1/2,-z",
    ]
}
'x,y+1/2,-z;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P 1 1 b'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "x,y+1/2,-z",
    ]
}
'-x,y+1/2,z;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P b 1 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "-x,y+1/2,z",
    ]
}
'-x,y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P n 1 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c'
    setting_name    => 'P c 1 1'
    schoenflies     => 'C_s^2'
    number => 7
    symops => [
        "x,y,z",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,z+1/2;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c a 21'
    setting_name    => 'P b c 21'
    schoenflies     => 'C_2v^5'
    number => 29
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y,z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,z+1/2;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c a 21'
    setting_name    => 'P 21 a b'
    schoenflies     => 'C_2v^5'
    number => 29
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y,z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,z+1/2;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c a 21'
    setting_name    => 'P 21 c a'
    schoenflies     => 'C_2v^5'
    number => 29
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y,z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,z+1/2;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c a 21'
    setting_name    => 'P c 21 b'
    schoenflies     => 'C_2v^5'
    number => 29
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y,z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,y,z+1/2;-x,-y,z+1/2;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P c a 21'
    setting_name    => 'P b 21 a'
    schoenflies     => 'C_2v^5'
    number => 29
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y,z",
        "-x+1/2,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c 2'
    setting_name    => 'P c c 2'
    schoenflies     => 'C_2v^3'
    number => 27
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c 2'
    setting_name    => 'P 2 a a'
    schoenflies     => 'C_2v^3'
    number => 27
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c 2'
    setting_name    => 'P 2 a a'
    schoenflies     => 'C_2v^3'
    number => 27
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c 2'
    setting_name    => 'P b 2 b'
    schoenflies     => 'C_2v^3'
    number => 27
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,z;-x,y,z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c 2'
    setting_name    => 'P b 2 b'
    schoenflies     => 'C_2v^3'
    number => 27
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;-x,y,-z+1/2;-x,y,z+1/2;x+1/2,y,-z;x,-y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c a'
    setting_name    => 'P c c b'
    schoenflies     => 'D_2h^8'
    number => 54
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;-x,y,-z+1/2;-x,y,z+1/2;x+1/2,y,-z;x,-y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c a'
    setting_name    => 'P b a a'
    schoenflies     => 'D_2h^8'
    number => 54
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;-x,y,-z+1/2;-x,y,z+1/2;x+1/2,y,-z;x,-y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c a'
    setting_name    => 'P c a a'
    schoenflies     => 'D_2h^8'
    number => 54
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;-x,y,-z+1/2;-x,y,z+1/2;x+1/2,y,-z;x,-y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c a'
    setting_name    => 'P b c b'
    schoenflies     => 'D_2h^8'
    number => 54
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y,z;-x,-y,-z;-x,y,-z+1/2;-x,y,z+1/2;x+1/2,y,-z;x,-y,-z+1/2;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c a'
    setting_name    => 'P b a b'
    schoenflies     => 'D_2h^8'
    number => 54
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P c c m'
    setting_name    => 'P c c m'
    schoenflies     => 'D_2h^3'
    number => 49
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P c c m'
    setting_name    => 'P m a a'
    schoenflies     => 'D_2h^3'
    number => 49
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P c c m'
    setting_name    => 'P m a a'
    schoenflies     => 'D_2h^3'
    number => 49
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P c c m'
    setting_name    => 'P b m b'
    schoenflies     => 'D_2h^3'
    number => 49
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z+1/2;-x,y,z+1/2;x,-y,-z+1/2;x,-y,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P c c m'
    setting_name    => 'P b m b'
    schoenflies     => 'D_2h^3'
    number => 49
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z+1/2",
        "x,-y,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z+1/2",
        "-x,y,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c n'
    setting_name    => 'P c c n'
    schoenflies     => 'D_2h^10'
    number => 56
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c n'
    setting_name    => 'P n a a'
    schoenflies     => 'D_2h^10'
    number => 56
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c n'
    setting_name    => 'P n a a'
    schoenflies     => 'D_2h^10'
    number => 56
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c n'
    setting_name    => 'P b n b'
    schoenflies     => 'D_2h^10'
    number => 56
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z+1/2;-x,-y,-z;-x,y+1/2,-z+1/2;x+1/2,-y,-z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P c c n'
    setting_name    => 'P b n a'
    schoenflies     => 'D_2h^10'
    number => 56
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z+1/2",
        "x+1/2,-y,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z+1/2",
        "-x+1/2,y,z+1/2",
    ]
}
'x,-y,z;x,y,z' => {
    spacegroup_name => 'P m'
    setting_name    => 'P 1 m 1'
    schoenflies     => 'C_s^1'
    number => 6
    symops => [
        "x,y,z",
        "x,-y,z",
    ]
}
'x,y,-z;x,y,z' => {
    spacegroup_name => 'P m'
    setting_name    => 'P 1 1 m'
    schoenflies     => 'C_s^1'
    number => 6
    symops => [
        "x,y,z",
        "x,y,-z",
    ]
}
'-x,y,z;x,y,z' => {
    spacegroup_name => 'P m'
    setting_name    => 'P m 1 1'
    schoenflies     => 'C_s^1'
    number => 6
    symops => [
        "x,y,z",
        "-x,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y,-z,-x;-y,-z,x;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,x,-y;-z,x,y;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y,-z,-x;y,-z,x;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,x,-y;z,x,y' => {
    spacegroup_name => 'P m -3'
    setting_name    => 'P m -3'
    schoenflies     => 'T_h^1'
    number => 200
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
    ]
}
'-x,-y,-z;-x,-y,z;-x,-z,-y;-x,-z,y;-x,y,-z;-x,y,z;-x,z,-y;-x,z,y;-y,-x,-z;-y,-x,z;-y,-z,-x;-y,-z,x;-y,x,-z;-y,x,z;-y,z,-x;-y,z,x;-z,-x,-y;-z,-x,y;-z,-y,-x;-z,-y,x;-z,x,-y;-z,x,y;-z,y,-x;-z,y,x;x,-y,-z;x,-y,z;x,-z,-y;x,-z,y;x,y,-z;x,y,z;x,z,-y;x,z,y;y,-x,-z;y,-x,z;y,-z,-x;y,-z,x;y,x,-z;y,x,z;y,z,-x;y,z,x;z,-x,-y;z,-x,y;z,-y,-x;z,-y,x;z,x,-y;z,x,y;z,y,-x;z,y,x' => {
    spacegroup_name => 'P m -3 m'
    setting_name    => 'P m -3 m'
    schoenflies     => 'O_h^1'
    number => 221
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y,x,-z",
        "-y,-x,-z",
        "y,-x,z",
        "-y,x,z",
        "x,z,-y",
        "-x,z,y",
        "-x,-z,-y",
        "x,-z,y",
        "z,y,-x",
        "z,-y,x",
        "-z,y,x",
        "-z,-y,-x",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
        "-y,-x,z",
        "y,x,z",
        "-y,x,-z",
        "y,-x,-z",
        "-x,-z,y",
        "x,-z,-y",
        "x,z,y",
        "-x,z,-y",
        "-z,-y,x",
        "-z,y,-x",
        "z,-y,-x",
        "z,y,x",
    ]
}
'-x+1/2,-z+1/2,-y+1/2;-x+1/2,-z+1/2,y+1/2;-x+1/2,z+1/2,-y+1/2;-x+1/2,z+1/2,y+1/2;-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;-y+1/2,-x+1/2,-z+1/2;-y+1/2,-x+1/2,z+1/2;-y+1/2,x+1/2,-z+1/2;-y+1/2,x+1/2,z+1/2;-y,-z,-x;-y,-z,x;-y,z,-x;-y,z,x;-z+1/2,-y+1/2,-x+1/2;-z+1/2,-y+1/2,x+1/2;-z+1/2,y+1/2,-x+1/2;-z+1/2,y+1/2,x+1/2;-z,-x,-y;-z,-x,y;-z,x,-y;-z,x,y;x+1/2,-z+1/2,-y+1/2;x+1/2,-z+1/2,y+1/2;x+1/2,z+1/2,-y+1/2;x+1/2,z+1/2,y+1/2;x,-y,-z;x,-y,z;x,y,-z;x,y,z;y+1/2,-x+1/2,-z+1/2;y+1/2,-x+1/2,z+1/2;y+1/2,x+1/2,-z+1/2;y+1/2,x+1/2,z+1/2;y,-z,-x;y,-z,x;y,z,-x;y,z,x;z+1/2,-y+1/2,-x+1/2;z+1/2,-y+1/2,x+1/2;z+1/2,y+1/2,-x+1/2;z+1/2,y+1/2,x+1/2;z,-x,-y;z,-x,y;z,x,-y;z,x,y' => {
    spacegroup_name => 'P m -3 n'
    setting_name    => 'P m -3 n'
    schoenflies     => 'O_h^3'
    number => 223
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "z,x,y",
        "z,-x,-y",
        "-z,-x,y",
        "-z,x,-y",
        "y,z,x",
        "-y,z,-x",
        "y,-z,-x",
        "-y,-z,x",
        "y+1/2,x+1/2,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "y+1/2,-x+1/2,z+1/2",
        "-y+1/2,x+1/2,z+1/2",
        "x+1/2,z+1/2,-y+1/2",
        "-x+1/2,z+1/2,y+1/2",
        "-x+1/2,-z+1/2,-y+1/2",
        "x+1/2,-z+1/2,y+1/2",
        "z+1/2,y+1/2,-x+1/2",
        "z+1/2,-y+1/2,x+1/2",
        "-z+1/2,y+1/2,x+1/2",
        "-z+1/2,-y+1/2,-x+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
        "-z,-x,-y",
        "-z,x,y",
        "z,x,-y",
        "z,-x,y",
        "-y,-z,-x",
        "y,-z,x",
        "-y,z,x",
        "y,z,-x",
        "-y+1/2,-x+1/2,z+1/2",
        "y+1/2,x+1/2,z+1/2",
        "-y+1/2,x+1/2,-z+1/2",
        "y+1/2,-x+1/2,-z+1/2",
        "-x+1/2,-z+1/2,y+1/2",
        "x+1/2,-z+1/2,-y+1/2",
        "x+1/2,z+1/2,y+1/2",
        "-x+1/2,z+1/2,-y+1/2",
        "-z+1/2,-y+1/2,x+1/2",
        "-z+1/2,y+1/2,-x+1/2",
        "z+1/2,-y+1/2,-x+1/2",
        "z+1/2,y+1/2,x+1/2",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P m a 2'
    setting_name    => 'P m a 2'
    schoenflies     => 'C_2v^4'
    number => 28
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P m a 2'
    setting_name    => 'P b m 2'
    schoenflies     => 'C_2v^4'
    number => 28
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P m a 2'
    setting_name    => 'P 2 m b'
    schoenflies     => 'C_2v^4'
    number => 28
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P m a 2'
    setting_name    => 'P 2 c m'
    schoenflies     => 'C_2v^4'
    number => 28
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,y,z;-x,-y,z;x+1/2,-y,z;x,y,z' => {
    spacegroup_name => 'P m a 2'
    setting_name    => 'P m 2 a'
    schoenflies     => 'C_2v^4'
    number => 28
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m c 21'
    setting_name    => 'P c m 21'
    schoenflies     => 'C_2v^2'
    number => 26
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m c 21'
    setting_name    => 'P 21 m a'
    schoenflies     => 'C_2v^2'
    number => 26
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m c 21'
    setting_name    => 'P 21 a m'
    schoenflies     => 'C_2v^2'
    number => 26
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m c 21'
    setting_name    => 'P b 21 m'
    schoenflies     => 'C_2v^2'
    number => 26
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z+1/2;-x,y,z;x,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m c 21'
    setting_name    => 'P m 21 b'
    schoenflies     => 'C_2v^2'
    number => 26
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m 2'
    setting_name    => 'P m m 2'
    schoenflies     => 'C_2v^1'
    number => 25
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m 2'
    setting_name    => 'P 2 m m'
    schoenflies     => 'C_2v^1'
    number => 25
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m 2'
    setting_name    => 'P 2 m m'
    schoenflies     => 'C_2v^1'
    number => 25
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m 2'
    setting_name    => 'P m 2 m'
    schoenflies     => 'C_2v^1'
    number => 25
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x,-y,z;-x,y,z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m 2'
    setting_name    => 'P m 2 m'
    schoenflies     => 'C_2v^1'
    number => 25
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z;-x,-y,-z;-x,y,-z;x+1/2,-y,-z;x+1/2,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m a'
    setting_name    => 'P m m b'
    schoenflies     => 'D_2h^5'
    number => 51
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z;-x,-y,-z;-x,y,-z;x+1/2,-y,-z;x+1/2,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m a'
    setting_name    => 'P b m m'
    schoenflies     => 'D_2h^5'
    number => 51
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z;-x,-y,-z;-x,y,-z;x+1/2,-y,-z;x+1/2,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m a'
    setting_name    => 'P c m m'
    schoenflies     => 'D_2h^5'
    number => 51
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z;-x,-y,-z;-x,y,-z;x+1/2,-y,-z;x+1/2,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m a'
    setting_name    => 'P m c m'
    schoenflies     => 'D_2h^5'
    number => 51
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y,z;-x+1/2,y,z;-x,-y,-z;-x,y,-z;x+1/2,-y,-z;x+1/2,y,-z;x,-y,z;x,y,z' => {
    spacegroup_name => 'P m m a'
    setting_name    => 'P m a m'
    schoenflies     => 'D_2h^5'
    number => 51
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x,y,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x,-y,z",
        "-x+1/2,y,z",
    ]
}
'-x,-y,-z;-x,-y,z;-x,y,-z;-x,y,z;x,-y,-z;x,-y,z;x,y,-z;x,y,z' => {
    spacegroup_name => 'P m m m'
    setting_name    => 'P m m m'
    schoenflies     => 'D_2h^1'
    number => 47
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x,y,-z",
        "x,-y,-z",
        "-x,-y,-z",
        "x,y,-z",
        "x,-y,z",
        "-x,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P m m n'
    setting_name    => 'P m m n'
    schoenflies     => 'D_2h^13'
    number => 59
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P m m n'
    setting_name    => 'P n m m'
    schoenflies     => 'D_2h^13'
    number => 59
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P m m n'
    setting_name    => 'P n m m'
    schoenflies     => 'D_2h^13'
    number => 59
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P m m n'
    setting_name    => 'P m n m'
    schoenflies     => 'D_2h^13'
    number => 59
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,z;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y,-z;x+1/2,y+1/2,-z;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P m m n'
    setting_name    => 'P m n m'
    schoenflies     => 'D_2h^13'
    number => 59
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x,y+1/2,-z",
        "x+1/2,-y,-z",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x,-y+1/2,z",
        "-x+1/2,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y,z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m n 21'
    setting_name    => 'P n m 21'
    schoenflies     => 'C_2v^7'
    number => 31
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y,z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m n 21'
    setting_name    => 'P 21 m n'
    schoenflies     => 'C_2v^7'
    number => 31
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y,z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m n 21'
    setting_name    => 'P 21 n m'
    schoenflies     => 'C_2v^7'
    number => 31
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y,z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m n 21'
    setting_name    => 'P n 21 m'
    schoenflies     => 'C_2v^7'
    number => 31
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x,y,z;x+1/2,-y,z+1/2;x,y,z' => {
    spacegroup_name => 'P m n 21'
    setting_name    => 'P m 21 n'
    schoenflies     => 'C_2v^7'
    number => 31
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P m n a'
    setting_name    => 'P n m b'
    schoenflies     => 'D_2h^7'
    number => 53
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P m n a'
    setting_name    => 'P b m n'
    schoenflies     => 'D_2h^7'
    number => 53
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P m n a'
    setting_name    => 'P c n m'
    schoenflies     => 'D_2h^7'
    number => 53
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P m n a'
    setting_name    => 'P n c m'
    schoenflies     => 'D_2h^7'
    number => 53
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y,z;x+1/2,-y,z+1/2;x+1/2,y,-z+1/2;x,-y,-z;x,y,z' => {
    spacegroup_name => 'P m n a'
    setting_name    => 'P m a n'
    schoenflies     => 'D_2h^7'
    number => 53
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x+1/2,y,-z+1/2",
        "x,-y,-z",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x+1/2,-y,z+1/2",
        "-x,y,z",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;-y+1/2,-z+1/2,x;-y+1/2,z,-x+1/2;-y,-z,-x;-y,z+1/2,x+1/2;-z+1/2,-x+1/2,y;-z+1/2,x,-y+1/2;-z,-x,-y;-z,x+1/2,y+1/2;x+1/2,-y,z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,-z+1/2;x,y,z;y+1/2,-z,x+1/2;y+1/2,z+1/2,-x;y,-z+1/2,-x+1/2;y,z,x;z+1/2,-x,y+1/2;z+1/2,x+1/2,-y;z,-x+1/2,-y+1/2;z,x,y' => {
    spacegroup_name => 'P n -3'
    setting_name    => 'P n -3'
    schoenflies     => 'T_h^2'
    number => 201
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "z,x,y",
        "z,-x+1/2,-y+1/2",
        "-z+1/2,-x+1/2,y",
        "-z+1/2,x,-y+1/2",
        "y,z,x",
        "-y+1/2,z,-x+1/2",
        "y,-z+1/2,-x+1/2",
        "-y+1/2,-z+1/2,x",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
        "-z,-x,-y",
        "-z,x+1/2,y+1/2",
        "z+1/2,x+1/2,-y",
        "z+1/2,-x,y+1/2",
        "-y,-z,-x",
        "y+1/2,-z,x+1/2",
        "-y,z+1/2,x+1/2",
        "y+1/2,z+1/2,-x",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,-z+1/2,y;-x+1/2,y,-z+1/2;-x+1/2,z,-y+1/2;-x,-y,-z;-x,-z,-y;-x,y+1/2,z+1/2;-x,z+1/2,y+1/2;-y+1/2,-x+1/2,z;-y+1/2,-z+1/2,x;-y+1/2,x,-z+1/2;-y,-x,-z;-y,-z,-x;-y,x+1/2,z+1/2;-y,z+1/2,-x+1/2;-y,z+1/2,x+1/2;-z+1/2,-x+1/2,y;-z+1/2,-y+1/2,x;-z+1/2,x,-y+1/2;-z+1/2,y,-x+1/2;-z,-x,-y;-z,-y,-x;-z,x+1/2,y+1/2;-z,y+1/2,x+1/2;x+1/2,-y,z+1/2;x+1/2,-z,y+1/2;x+1/2,y+1/2,-z;x+1/2,z+1/2,-y;x,-y+1/2,-z+1/2;x,-z+1/2,-y+1/2;x,y,z;x,z,y;y+1/2,-x,z+1/2;y+1/2,-z+1/2,-x;y+1/2,-z,x+1/2;y+1/2,x+1/2,-z;y+1/2,z+1/2,-x;y+1/2,z,x+1/2;y,-x+1/2,-z+1/2;y,x,z;z+1/2,-x,y+1/2;z+1/2,-y,x+1/2;z+1/2,x+1/2,-y;z+1/2,y+1/2,-x;z,-x+1/2,-y+1/2;z,-y+1/2,-x+1/2;z,x,y;z,y,x' => {
    spacegroup_name => 'P n -3 m'
    setting_name    => 'P n -3 m'
    schoenflies     => 'O_h^4'
    number => 224
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "z,x,y",
        "z,-x+1/2,-y+1/2",
        "-z+1/2,-x+1/2,y",
        "-z+1/2,x,-y+1/2",
        "y+1/2,z,x+1/2",
        "-y,z+1/2,-x+1/2",
        "y+1/2,-z+1/2,-x",
        "-y+1/2,-z+1/2,x",
        "y+1/2,x+1/2,-z",
        "-y,-x,-z",
        "y+1/2,-x,z+1/2",
        "-y,x+1/2,z+1/2",
        "x+1/2,z+1/2,-y",
        "-x,z+1/2,y+1/2",
        "-x,-z,-y",
        "x+1/2,-z,y+1/2",
        "z+1/2,y+1/2,-x",
        "z+1/2,-y,x+1/2",
        "-z,y+1/2,x+1/2",
        "-z,-y,-x",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
        "-z,-x,-y",
        "-z,x+1/2,y+1/2",
        "z+1/2,x+1/2,-y",
        "z+1/2,-x,y+1/2",
        "-y,-z,-x",
        "y+1/2,-z,x+1/2",
        "-y,z+1/2,x+1/2",
        "y+1/2,z+1/2,-x",
        "-y+1/2,-x+1/2,z",
        "y,x,z",
        "-y+1/2,x,-z+1/2",
        "y,-x+1/2,-z+1/2",
        "-x+1/2,-z+1/2,y",
        "x,-z+1/2,-y+1/2",
        "x,z,y",
        "-x+1/2,z,-y+1/2",
        "-z+1/2,-y+1/2,x",
        "-z+1/2,y,-x+1/2",
        "z,-y+1/2,-x+1/2",
        "z,y,x",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,-z+1/2,-y+1/2;-x+1/2,y,-z+1/2;-x+1/2,z,y;-x,-y,-z;-x,-z,y+1/2;-x,y+1/2,z+1/2;-x,z+1/2,-y;-y+1/2,-x+1/2,-z+1/2;-y+1/2,-z+1/2,x;-y+1/2,x,z;-y+1/2,z,-x+1/2;-y,-x,z+1/2;-y,-z,-x;-y,x+1/2,-z;-y,z+1/2,x+1/2;-z+1/2,-x+1/2,y;-z+1/2,-y+1/2,-x+1/2;-z+1/2,x,-y+1/2;-z+1/2,y,x;-z,-x,-y;-z,-y,x+1/2;-z,x+1/2,y+1/2;-z,y+1/2,-x;x+1/2,-y,z+1/2;x+1/2,-z,-y;x+1/2,y+1/2,-z;x+1/2,z+1/2,y+1/2;x,-y+1/2,-z+1/2;x,-z+1/2,y;x,y,z;x,z,-y+1/2;y+1/2,-x,-z;y+1/2,-z,x+1/2;y+1/2,x+1/2,z+1/2;y+1/2,z+1/2,-x;y,-x+1/2,z;y,-z+1/2,-x+1/2;y,x,-z+1/2;y,z,x;z+1/2,-x,y+1/2;z+1/2,-y,-x;z+1/2,x+1/2,-y;z+1/2,y+1/2,x+1/2;z,-x+1/2,-y+1/2;z,-y+1/2,x;z,x,y;z,y,-x+1/2' => {
    spacegroup_name => 'P n -3 n'
    setting_name    => 'P n -3 n'
    schoenflies     => 'O_h^2'
    number => 222
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "z,x,y",
        "z,-x+1/2,-y+1/2",
        "-z+1/2,-x+1/2,y",
        "-z+1/2,x,-y+1/2",
        "y,z,x",
        "-y+1/2,z,-x+1/2",
        "y,-z+1/2,-x+1/2",
        "-y+1/2,-z+1/2,x",
        "y,x,-z+1/2",
        "-y+1/2,-x+1/2,-z+1/2",
        "y,-x+1/2,z",
        "-y+1/2,x,z",
        "x,z,-y+1/2",
        "-x+1/2,z,y",
        "-x+1/2,-z+1/2,-y+1/2",
        "x,-z+1/2,y",
        "z,y,-x+1/2",
        "z,-y+1/2,x",
        "-z+1/2,y,x",
        "-z+1/2,-y+1/2,-x+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
        "-z,-x,-y",
        "-z,x+1/2,y+1/2",
        "z+1/2,x+1/2,-y",
        "z+1/2,-x,y+1/2",
        "-y,-z,-x",
        "y+1/2,-z,x+1/2",
        "-y,z+1/2,x+1/2",
        "y+1/2,z+1/2,-x",
        "-y,-x,z+1/2",
        "y+1/2,x+1/2,z+1/2",
        "-y,x+1/2,-z",
        "y+1/2,-x,-z",
        "-x,-z,y+1/2",
        "x+1/2,-z,-y",
        "x+1/2,z+1/2,y+1/2",
        "-x,z+1/2,-y",
        "-z,-y,x+1/2",
        "-z,y+1/2,-x",
        "z+1/2,-y,-x",
        "z+1/2,y+1/2,x+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z+1/2;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n a 21'
    setting_name    => 'P b n 21'
    schoenflies     => 'C_2v^9'
    number => 33
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z+1/2;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n a 21'
    setting_name    => 'P 21 n b'
    schoenflies     => 'C_2v^9'
    number => 33
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z+1/2;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n a 21'
    setting_name    => 'P 21 c n'
    schoenflies     => 'C_2v^9'
    number => 33
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z+1/2;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n a 21'
    setting_name    => 'P c 21 n'
    schoenflies     => 'C_2v^9'
    number => 33
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z+1/2;x+1/2,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n a 21'
    setting_name    => 'P n 21 a'
    schoenflies     => 'C_2v^9'
    number => 33
    symops => [
        "x,y,z",
        "-x,-y,z+1/2",
        "x+1/2,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y+1/2,z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n c 2'
    setting_name    => 'P c n 2'
    schoenflies     => 'C_2v^6'
    number => 30
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y+1/2,z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n c 2'
    setting_name    => 'P 2 n a'
    schoenflies     => 'C_2v^6'
    number => 30
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y+1/2,z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n c 2'
    setting_name    => 'P 2 a n'
    schoenflies     => 'C_2v^6'
    number => 30
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y+1/2,z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n c 2'
    setting_name    => 'P b 2 n'
    schoenflies     => 'C_2v^6'
    number => 30
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x,-y,z;-x,y+1/2,z+1/2;x,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n c 2'
    setting_name    => 'P n 2 b'
    schoenflies     => 'C_2v^6'
    number => 30
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y+1/2,-z+1/2;x+1/2,y,-z+1/2;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n m a'
    setting_name    => 'P m n b'
    schoenflies     => 'D_2h^16'
    number => 62
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y+1/2,-z+1/2;x+1/2,y,-z+1/2;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n m a'
    setting_name    => 'P b n m'
    schoenflies     => 'D_2h^16'
    number => 62
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y+1/2,-z+1/2;x+1/2,y,-z+1/2;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n m a'
    setting_name    => 'P c m n'
    schoenflies     => 'D_2h^16'
    number => 62
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y+1/2,-z+1/2;x+1/2,y,-z+1/2;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n m a'
    setting_name    => 'P m c n'
    schoenflies     => 'D_2h^16'
    number => 62
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,y+1/2,-z;x+1/2,-y+1/2,-z+1/2;x+1/2,y,-z+1/2;x,-y+1/2,z;x,y,z' => {
    spacegroup_name => 'P n m a'
    setting_name    => 'P n a m'
    schoenflies     => 'D_2h^16'
    number => 62
    symops => [
        "x,y,z",
        "-x+1/2,-y,z+1/2",
        "-x,y+1/2,-z",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z+1/2",
        "x,-y+1/2,z",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n n 2'
    setting_name    => 'P n n 2'
    schoenflies     => 'C_2v^10'
    number => 34
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n n 2'
    setting_name    => 'P 2 n n'
    schoenflies     => 'C_2v^10'
    number => 34
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n n 2'
    setting_name    => 'P 2 n n'
    schoenflies     => 'C_2v^10'
    number => 34
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n n 2'
    setting_name    => 'P n 2 n'
    schoenflies     => 'C_2v^10'
    number => 34
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,z+1/2;-x,-y,z;x+1/2,-y+1/2,z+1/2;x,y,z' => {
    spacegroup_name => 'P n n 2'
    setting_name    => 'P n 2 n'
    schoenflies     => 'C_2v^10'
    number => 34
    symops => [
        "x,y,z",
        "-x,-y,z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y+1/2,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y+1/2,z+1/2;x+1/2,y,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n a'
    setting_name    => 'P n n b'
    schoenflies     => 'D_2h^6'
    number => 52
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y+1/2,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y+1/2,z+1/2;x+1/2,y,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n a'
    setting_name    => 'P b n n'
    schoenflies     => 'D_2h^6'
    number => 52
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y+1/2,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y+1/2,z+1/2;x+1/2,y,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n a'
    setting_name    => 'P c n n'
    schoenflies     => 'D_2h^6'
    number => 52
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y+1/2,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y+1/2,z+1/2;x+1/2,y,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n a'
    setting_name    => 'P n c n'
    schoenflies     => 'D_2h^6'
    number => 52
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y,z;-x+1/2,y+1/2,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y+1/2,z+1/2;x+1/2,y,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n a'
    setting_name    => 'P n a n'
    schoenflies     => 'D_2h^6'
    number => 52
    symops => [
        "x,y,z",
        "-x+1/2,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P n n m'
    setting_name    => 'P n n m'
    schoenflies     => 'D_2h^12'
    number => 58
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P n n m'
    setting_name    => 'P m n n'
    schoenflies     => 'D_2h^12'
    number => 58
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P n n m'
    setting_name    => 'P m n n'
    schoenflies     => 'D_2h^12'
    number => 58
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P n n m'
    setting_name    => 'P n m n'
    schoenflies     => 'D_2h^12'
    number => 58
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,y+1/2,-z+1/2;-x+1/2,y+1/2,z+1/2;-x,-y,-z;-x,-y,z;x+1/2,-y+1/2,-z+1/2;x+1/2,-y+1/2,z+1/2;x,y,-z;x,y,z' => {
    spacegroup_name => 'P n n m'
    setting_name    => 'P n m n'
    schoenflies     => 'D_2h^12'
    number => 58
    symops => [
        "x,y,z",
        "-x,-y,z",
        "-x+1/2,y+1/2,-z+1/2",
        "x+1/2,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x,y,-z",
        "x+1/2,-y+1/2,z+1/2",
        "-x+1/2,y+1/2,z+1/2",
    ]
}
'-x+1/2,-y+1/2,z;-x+1/2,y,-z+1/2;-x,-y,-z;-x,y+1/2,z+1/2;x+1/2,-y,z+1/2;x+1/2,y+1/2,-z;x,-y+1/2,-z+1/2;x,y,z' => {
    spacegroup_name => 'P n n n'
    setting_name    => 'P n n n'
    schoenflies     => 'D_2h^2'
    number => 48
    symops => [
        "x,y,z",
        "-x+1/2,-y+1/2,z",
        "-x+1/2,y,-z+1/2",
        "x,-y+1/2,-z+1/2",
        "-x,-y,-z",
        "x+1/2,y+1/2,-z",
        "x+1/2,-y,z+1/2",
        "-x,y+1/2,z+1/2",
    ]
}
'-x+y,-x,z;-x,-y,-z;-y,x-y,z;x,y,z;x-y,x,-z;y,-x+y,-z' => {
    spacegroup_name => 'R -3'
    setting_name    => 'R -3'
    schoenflies     => 'C_3i^2'
    number => 148
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-x,-x+y,-z+1/2;-x,-y,-z;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z;x-y,-y,-z+1/2;x-y,x,-z;y,-x+y,-z;y,x,-z+1/2' => {
    spacegroup_name => 'R -3 c'
    setting_name    => 'R -3 c'
    schoenflies     => 'D_3d^6'
    number => 167
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z+1/2",
        "x-y,-y,-z+1/2",
        "-x,-x+y,-z+1/2",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z;-x,-x+y,-z;-x,-y,-z;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z;x-y,-y,-z;x-y,x,-z;y,-x+y,-z;y,x,-z' => {
    spacegroup_name => 'R -3 m'
    setting_name    => 'R -3 m'
    schoenflies     => 'D_3d^5'
    number => 166
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
        "-x,-y,-z",
        "y,-x+y,-z",
        "x-y,x,-z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
    ]
}
'-x+y,-x,z;-y,x-y,z;x,y,z' => {
    spacegroup_name => 'R 3'
    setting_name    => 'R 3'
    schoenflies     => 'C_3^4'
    number => 146
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
    ]
}
'-x+y,-x,z;-x,-x+y,-z;-y,x-y,z;x,y,z;x-y,-y,-z;y,x,-z' => {
    spacegroup_name => 'R 3 2'
    setting_name    => 'R 3 2'
    schoenflies     => 'D_3^7'
    number => 155
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "y,x,-z",
        "x-y,-y,-z",
        "-x,-x+y,-z",
    ]
}
'-x+y,-x,z;-x+y,y,z+1/2;-y,-x,z+1/2;-y,x-y,z;x,x-y,z+1/2;x,y,z' => {
    spacegroup_name => 'R 3 c'
    setting_name    => 'R 3 c'
    schoenflies     => 'C_3v^6'
    number => 161
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,z+1/2",
        "-x+y,y,z+1/2",
        "x,x-y,z+1/2",
    ]
}
'-x+y,-x,z;-x+y,y,z;-y,-x,z;-y,x-y,z;x,x-y,z;x,y,z' => {
    spacegroup_name => 'R 3 m'
    setting_name    => 'R 3 m'
    schoenflies     => 'C_3v^5'
    number => 160
    symops => [
        "x,y,z",
        "-y,x-y,z",
        "-x+y,-x,z",
        "-y,-x,z",
        "-x+y,y,z",
        "x,x-y,z",
    ]
}
);

1;
