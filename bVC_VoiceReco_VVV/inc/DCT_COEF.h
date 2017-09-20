#ifndef __DCT_COEF_H__
#define __DCT_COEF_H__

//#include"DCT_COEF.h"

extern const signed char DCT_COEF[12][24];
extern const unsigned char W_COEF[12];
extern const unsigned char WIN_HAMM_COEF[256];

/*���ݷ�Χ-128~127��ʹ��8bit�з��Ŵ洢*/
const signed char DCT_COEF[12][24]={
{   127,   125,   120,   114,   106,    95,    84,    71,    56,    41,    25,     8,    -8,   -25,   -41,   -56,   -71,   -84,   -95,  -106,  -114,  -120,  -125,  -127},
{   126,   117,   101,    77,    49,    17,   -17,   -49,   -77,  -101,  -117,  -126,  -126,  -117,  -101,   -77,   -49,   -17,    17,    49,    77,   101,   117,   126},
{   125,   106,    71,    25,   -25,   -71,  -106,  -125,  -125,  -106,   -71,   -25,    25,    71,   106,   125,   125,   106,    71,    25,   -25,   -71,  -106,  -125},
{   123,    90,    33,   -33,   -90,  -123,  -123,   -90,   -33,    33,    90,   123,   123,    90,    33,   -33,   -90,  -123,  -123,   -90,   -33,    33,    90,   123},
{   120,    71,    -8,   -84,  -125,  -114,   -56,    25,    95,   127,   106,    41,   -41,  -106,  -127,   -95,   -25,    56,   114,   125,    84,     8,   -71,  -120},
{   117,    49,   -49,  -117,  -117,   -49,    49,   117,   117,    49,   -49,  -117,  -117,   -49,    49,   117,   117,    49,   -49,  -117,  -117,   -49,    49,   117},
{   114,    25,   -84,  -127,   -71,    41,   120,   106,     8,   -95,  -125,   -56,    56,   125,    95,    -8,  -106,  -120,   -41,    71,   127,    84,   -25,  -114},
{   110,     0,  -110,  -110,     0,   110,   110,     0,  -110,  -110,     0,   110,   110,     0,  -110,  -110,     0,   110,   110,     0,  -110,  -110,     0,   110},
{   106,   -25,  -125,   -71,    71,   125,    25,  -106,  -106,    25,   125,    71,   -71,  -125,   -25,   106,   106,   -25,  -125,   -71,    71,   125,    25,  -106},
{   101,   -49,  -126,   -17,   117,    77,   -77,  -117,    17,   126,    49,  -101,  -101,    49,   126,    17,  -117,   -77,    77,   117,   -17,  -126,   -49,   101},
{    95,   -71,  -114,    41,   125,    -8,  -127,   -25,   120,    56,  -106,   -84,    84,   106,   -56,  -120,    25,   127,     8,  -125,   -41,   114,    71,   -95},
{    90,   -90,   -90,    90,    90,   -90,   -90,    90,    90,   -90,   -90,    90,    90,   -90,   -90,    90,    90,   -90,   -90,    90,    90,   -90,   -90,    90},
};

const unsigned char W_COEF[12]={
    93,   146,   191,   226,   248,   255,   248,   226,   191,   146,    93,    36
};

//WIN_HAMM_COEF[256]=uint8(hamming(256)*100);
const unsigned char WIN_HAMM_COEF[256]={20,     20,    21,    21,     21,    21,
22,    22,    23,    23,    24,    25,    25,    26,    27,    28,    29,    31,
32,    33,    34,    36,    37,    39,    40,    42,    44,    45,    47,    49,
51,    53,    55,    57,    59,    61,    64,    66,    68,    71,    73,    75,
78,    80,    83,    85,    88,    91,    93,    96,    99,   101,   104,   107,
110,    113,   115,    118,   121,    124,   127,    130,   133,    136,   138,
141,    144,   147,    150,   153,    156,   159,    161,   164,    167,   170,
173,    175,   178,    181,   183,    186,   189,    191,   194,    196,   199,
201,    204,   206,    208,   211,    213,   215,    217,   219,    221,   223,
225,    227,   229,    231,   233,    234,   236,    237,   239,    240,   242,
243,    244,   245,    247,   248,    249,   249,    250,   251,    252,   252,
253,    253,   254,    254,   255,    255,   255,    255,   255,    255,   255,
255,    254,   254,    253,   253,    252,   252,    251,   250,    249,   249,
248,    247,   245,    244,   243,    242,   240,    239,   237,    236,   234,
233,    231,   229,    227,   225,    223,   221,    219,   217,    215,   213,
211,    208,   206,    204,   201,    199,   196,    194,   191,    189,   186,
183,    181,   178,    175,   173,    170,   167,    164,   161,    159,   156,
153,    150,   147,    144,   141,    138,   136,    133,   130,    127,   124,
121,    118,   115,    113,   110,    107,   104,    101,    99,     96,    93,
91,    88,    85,    83,    80,    78,    75,    73,    71,    68,    66,    64,
61,    59,    57,    55,    53,    51,    49,    47,    45,    44,    42,    40,
39,    37,    36,    34,    33,    32,    31,    29,    28,    27,    26,    25,
25,    24,    23,    23,    22,    22,    21,    21,    21,    21,    20,     20
};
#endif