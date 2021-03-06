* ef_get_string_arg_element_sub.F
*
*  acm 12/03  from ef_get_arg_string
*
*  This software was developed by the Thermal Modeling and Analysis
*  Project(TMAP) of the National Oceanographic and Atmospheric
*  Administration's (NOAA) Pacific Marine Environmental Lab(PMEL),
*  hereafter referred to as NOAA/PMEL/TMAP.
*
*  Access and use of this software shall impose the following
*  obligations and understandings on the user. The user is granted the
*  right, without any fee or cost, to use, copy, modify, alter, enhance
*  and distribute this software, and any derivative works thereof, and
*  its supporting documentation for any purpose whatsoever, provided
*  that this entire notice appears in all copies of the software,
*  derivative works and supporting documentation.  Further, the user
*  agrees to credit NOAA/PMEL/TMAP in any publications that result from
*  the use of this software or in any product that includes this
*  software. The names TMAP, NOAA and/or PMEL, however, may not be used
*  in any advertising or publicity to endorse or promote any products
*  or commercial entity unless specific written permission is obtained
*  from NOAA/PMEL/TMAP. The user also understands that NOAA/PMEL/TMAP
*  is not obligated to provide the user with any support, consulting,
*  training or assistance of any kind with regard to the use, operation
*  and performance of this software nor to provide the user with any
*  updates, revisions, new versions or "bug fixes".
*
*  THIS SOFTWARE IS PROVIDED BY NOAA/PMEL/TMAP "AS IS" AND ANY EXPRESS
*  OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
*  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
*  ARE DISCLAIMED. IN NO EVENT SHALL NOAA/PMEL/TMAP BE LIABLE FOR ANY SPECIAL,
*  INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER
*  RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF
*  CONTRACT, NEGLIGENCE OR OTHER TORTUOUS ACTION, ARISING OUT OF OR IN
*  CONNECTION WITH THE ACCESS, USE OR PERFORMANCE OF THIS SOFTWARE. 
*
* This returns an element of the string array which was passed as an argument
* to the function.  
*
* Inside this subroutine arg is an array of pointers (cast as real*8),
* and we can call GET_STRING_ELEMENT to get a string element.
*
*       3/12 *kms* Added E and F dimensions
* V691+*acm* 8/14  Fix ticket 2190: long strings were being cut off.
*

      SUBROUTINE EF_GET_STRING_ARG_ELEMENT_SUB( lox, hix, loy, hiy,
     .                  loz, hiz, lot, hit, loe, hie, lof, hif, arg,
     .                  i, j, k, l, m, n, max_line_len, slen, text )

      INTEGER i, j, k, l, m, n,
     .        lox, hix, loy, hiy, loz, hiz, 
     .        lot, hit, loe, hie, lof, hif,
     .        slen, max_line_len
      CHARACTER*(*) text
      REAL*8 arg(lox:hix, loy:hiy, loz:hiz, lot:hit, loe:hie, lof:hif)

      CHARACTER GET_STRING_ELEMENT*2048

      text = GET_STRING_ELEMENT(lox, hix, loy, hiy, loz, hiz,
     .                          lot, hit, loe, hie, lof, hif, arg,
     .                          i, j, k, l, m, n, max_line_len, slen)

      RETURN
      END
