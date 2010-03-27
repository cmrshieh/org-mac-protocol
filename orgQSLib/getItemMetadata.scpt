FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
getItemMetadata.scpt --- get data to be passed to org-protocol from front application

Copyright (C) 2009, 2010 Christopher Suckling

Author:  Christopher Suckling <suckling at gmail dot com>
		Alexander Poslavsky <alexander.poslavsky at gmail.com>

This file is Free Software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

It is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
License for more details.

You should have received a copy of the GNU General Public License
along with GNU Emacs; see the file COPYING.  If not, write to the
Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
Boston, MA 02110-1301, USA.

Vesion: 0.634

Commentary

Part of org-mac-protocol

Installation

1) Open in AppleScript Editor
2) Save as File Format: Script in  ~/Library/Scripts/orgQSLib/

Please see org-mac-protocol.org for full installation and usage instructions
     � 	 		 
 g e t I t e m M e t a d a t a . s c p t   - - -   g e t   d a t a   t o   b e   p a s s e d   t o   o r g - p r o t o c o l   f r o m   f r o n t   a p p l i c a t i o n 
 
 C o p y r i g h t   ( C )   2 0 0 9 ,   2 0 1 0   C h r i s t o p h e r   S u c k l i n g 
 
 A u t h o r :     C h r i s t o p h e r   S u c k l i n g   < s u c k l i n g   a t   g m a i l   d o t   c o m > 
 	 	 A l e x a n d e r   P o s l a v s k y   < a l e x a n d e r . p o s l a v s k y   a t   g m a i l . c o m > 
 
 T h i s   f i l e   i s   F r e e   S o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   3 ,   o r   ( a t   y o u r   o p t i o n ) 
 a n y   l a t e r   v e r s i o n . 
 
 I t   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T 
 A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y 
 o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c 
 L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   G N U   E m a c s ;   s e e   t h e   f i l e   C O P Y I N G .     I f   n o t ,   w r i t e   t o   t h e 
 F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r , 
 B o s t o n ,   M A   0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 V e s i o n :   0 . 6 3 4 
 
 C o m m e n t a r y 
 
 P a r t   o f   o r g - m a c - p r o t o c o l 
 
 I n s t a l l a t i o n 
 
 1 )   O p e n   i n   A p p l e S c r i p t   E d i t o r 
 2 )   S a v e   a s   F i l e   F o r m a t :   S c r i p t   i n     ~ / L i b r a r y / S c r i p t s / o r g Q S L i b / 
 
 P l e a s e   s e e   o r g - m a c - p r o t o c o l . o r g   f o r   f u l l   i n s t a l l a t i o n   a n d   u s a g e   i n s t r u c t i o n s 
   
  
 l     ��������  ��  ��        p         ������ 0 thelink theLink��        p         ������ 0 escerrorurl escErrorURL��        p         ������ "0 escerrormessage escErrorMessage��        p         ������ 0 escapp escApp��        l     ��������  ��  ��        i         I      �� ���� "0 getitemmetadata getItemMetadata       o      ���� 0 theprotocol theProtocol    !�� ! o      ���� 0 theapp theApp��  ��    k     " "  # $ # l     ��������  ��  ��   $  % & % Z      ' (���� ' >     ) * ) l     +���� + c      , - , o     ���� 0 theapp theApp - m    ��
�� 
TEXT��  ��   * m     . . � / /  S a f a r i - T a b s ( I    �� 0���� 0 	linkerror 	linkError 0  1 2 1 o   	 
���� 0 theprotocol theProtocol 2  3�� 3 o   
 ���� 0 theapp theApp��  ��  ��  ��   &  4 5 4 l   ��������  ��  ��   5  6 7 6 Z    � 8 9�� : 8 =     ; < ; l    =���� = c     > ? > o    ���� 0 theapp theApp ? m    ��
�� 
TEXT��  ��   < m     @ @ � A A  S a f a r i 9 I    #�� B���� 0 
linksafari 
linkSafari B  C D C o    ���� 0 theprotocol theProtocol D  E�� E o    ���� 0 theapp theApp��  ��  ��   : Z   & � F G�� H F =   & + I J I l  & ) K���� K c   & ) L M L o   & '���� 0 theapp theApp M m   ' (��
�� 
TEXT��  ��   J m   ) * N N � O O  S a f a r i - T a b s G I   . 5�� P����  0 linksafaritabs linkSafariTabs P  Q R Q o   / 0���� 0 theprotocol theProtocol R  S�� S o   0 1���� 0 theapp theApp��  ��  ��   H Z   8 � T U�� V T =   8 = W X W l  8 ; Y���� Y c   8 ; Z [ Z o   8 9���� 0 theapp theApp [ m   9 :��
�� 
TEXT��  ��   X m   ; < \ \ � ] ]  S k i m U I   @ G�� ^���� 0 linkskim linkSkim ^  _ ` _ o   A B���� 0 theprotocol theProtocol `  a�� a o   B C���� 0 theapp theApp��  ��  ��   V Z   J � b c�� d b =   J O e f e l  J M g���� g c   J M h i h o   J K���� 0 theapp theApp i m   K L��
�� 
TEXT��  ��   f m   M N j j � k k  B i b D e s k c I   R Y�� l���� 0 linkbibdesk linkBibDesk l  m n m o   S T���� 0 theprotocol theProtocol n  o�� o o   T U���� 0 theapp theApp��  ��  ��   d Z   \ � p q�� r p =   \ a s t s l  \ _ u���� u c   \ _ v w v o   \ ]���� 0 theapp theApp w m   ] ^��
�� 
TEXT��  ��   t m   _ ` x x � y y 
 P a g e s q I   d k�� z���� 0 	linkpages 	linkPages z  { | { o   e f���� 0 theprotocol theProtocol |  }�� } o   f g���� 0 theapp theApp��  ��  ��   r Z   n � ~ �� � ~ =   n s � � � l  n q ����� � c   n q � � � o   n o���� 0 theapp theApp � m   o p��
�� 
TEXT��  ��   � m   q r � � � � �  N u m b e r s  I   v }�� ����� 0 linknumbers linkNumbers �  � � � o   w x���� 0 theprotocol theProtocol �  ��� � o   x y���� 0 theapp theApp��  ��  ��   � Z   � � � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  K e y n o t e � I   � ��� ����� 0 linkkeynote linkKeynote �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   � � � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  M a i l � I   � ��� ����� 0 linkmail linkMail �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   � � � ��� � � =   � � � � � l  � � ����� � c   � � � � � o   � ����� 0 theapp theApp � m   � ���
�� 
TEXT��  ��   � m   � � � � � � �  A d d r e s s   B o o k � I   � ��� ����� "0 linkaddressbook linkAddressBook �  � � � o   � ����� 0 theprotocol theProtocol �  ��� � o   � ����� 0 theapp theApp��  ��  ��   � Z   � � � �� � � =   � � � � � l  � � ��~�} � c   � � � � � o   � ��|�| 0 theapp theApp � m   � ��{
�{ 
TEXT�~  �}   � m   � � � � � � �  i T u n e s � I   � ��z ��y�z 0 
linkitunes 
linkITunes �  � � � o   � ��x�x 0 theprotocol theProtocol �  ��w � o   � ��v�v 0 theapp theApp�w  �y  �   � Z   � � � ��u � � =   � � � � � l  � � ��t�s � c   � � � � � o   � ��r�r 0 theapp theApp � m   � ��q
�q 
TEXT�t  �s   � m   � � � � � � �  T e r m i n a l � I   � ��p ��o�p 0 linkterminal linkTerminal �  � � � o   � ��n�n 0 theprotocol theProtocol �  ��m � o   � ��l�l 0 theapp theApp�m  �o  �u   � Z   � � � ��k � � =   � � � � � l  � � ��j�i � c   � � � � � o   � ��h�h 0 theapp theApp � m   � ��g
�g 
TEXT�j  �i   � m   � � � � � � �  F i n d e r � I   � ��f ��e�f 0 
linkfinder 
linkFinder �  � � � o   � ��d�d 0 theprotocol theProtocol �  ��c � o   � ��b�b 0 theapp theApp�c  �e  �k   � I   � ��a ��`�a "0 linkapplication linkApplication �  � � � o   � ��_�_ 0 theprotocol theProtocol �  ��^ � o   � ��]�] 0 theapp theApp�^  �`   7  � � � l  � ��\�[�Z�\  �[  �Z   �  � � � L   � � � o   ��Y�Y 0 thelink theLink �  ��X � l �W�V�U�W  �V  �U  �X     � � � l     �T�S�R�T  �S  �R   �  � � � i     � � � I      �Q ��P�Q (0 encodeuricomponent encodeURIComponent �  ��O � o      �N�N 0 theuri theURI�O  �P   � k      � �  � � � p       � � �M�L�M 0 	escapelib 	escapeLib�L   �  ��K � r      � � � I    �J ��I
�J .sysoexecTEXT���     TEXT � b      � � � b      � � � b      � � � m        � 
 r u b y   � l   �H�G n     1    �F
�F 
psxp o    �E�E 0 	escapelib 	escapeLib�H  �G   � m     �    � n    
 1    
�D
�D 
strq o    �C�C 0 theuri theURI�I   � o      �B�B 0 escuri escURI�K   � 	
	 l     �A�@�?�A  �@  �?  
  l     �>�=�<�>  �=  �<    l      �;�;  $Format of links:

org-protocol:/protocol:/key/URI/description/short description/content:application name

theProtocol - org-protocol:/protocol:/key/
theApp - application name

short description - for remember templates; removes theApp and other contextual information from description    �<  F o r m a t   o f   l i n k s : 
 
 o r g - p r o t o c o l : / p r o t o c o l : / k e y / U R I / d e s c r i p t i o n / s h o r t   d e s c r i p t i o n / c o n t e n t : a p p l i c a t i o n   n a m e 
 
 t h e P r o t o c o l   -   o r g - p r o t o c o l : / p r o t o c o l : / k e y / 
 t h e A p p   -   a p p l i c a t i o n   n a m e 
 
 s h o r t   d e s c r i p t i o n   -   f o r   r e m e m b e r   t e m p l a t e s ;   r e m o v e s   t h e A p p   a n d   o t h e r   c o n t e x t u a l   i n f o r m a t i o n   f r o m   d e s c r i p t i o n   l     �:�9�8�:  �9  �8    i     I      �7�6�7 0 	linkerror 	linkError  o      �5�5 0 theprotocol theProtocol �4 o      �3�3 0 theapp theApp�4  �6   k     -  r       n     
!"! 1    
�2
�2 
psxp" l    #�1�0# I    �/$�.
�/ .earsffdralis        afdr$ 4     �-%
�- 
capp% o    �,�, 0 theapp theApp�.  �1  �0    o      �+�+ 0 theerrorurl theErrorURL &'& r    ()( b    *+* o    �*�* 0 theapp theApp+ m    ,, �-- 0 :   n o   A p p l e S c r i p t   s u p p o r t) o      �)�) "0 theerrormessage theErrorMessage' ./. r    010 I    �(2�'�( (0 encodeuricomponent encodeURIComponent2 3�&3 o    �%�% 0 theerrorurl theErrorURL�&  �'  1 o      �$�$ 0 escerrorurl escErrorURL/ 454 r    $676 I    "�#8�"�# (0 encodeuricomponent encodeURIComponent8 9�!9 o    � �  "0 theerrormessage theErrorMessage�!  �"  7 o      �� "0 escerrormessage escErrorMessage5 :�: r   % -;<; I   % +�=�� (0 encodeuricomponent encodeURIComponent= >�> o   & '�� 0 theapp theApp�  �  < o      �� 0 escapp escApp�   ?@? l     ����  �  �  @ ABA i    CDC I      �E�� 0 
linksafari 
linkSafariE FGF o      �� 0 theprotocol theProtocolG H�H o      �� 0 theapp theApp�  �  D k     mII JKJ O     3LML k    2NN OPO r    QRQ I   �ST
� .sfridojs****       utxtS m    UU �VV  d o c u m e n t . U R LT �W�
� 
dcnmW 4    
�X
� 
docuX m    	�� �  R o      �� 0 theurl theURLP YZY r    [\[ l   ]�
�	] I   �^_
� .sfridojs****       utxt^ m    `` �aa  d o c u m e n t . t i t l e_ �b�
� 
dcnmb 4    �c
� 
docuc m    �� �  �
  �	  \ o      �� 0 theshorttitle theShortTitleZ ded r    %fgf b    #hih b    !jkj o    �� 0 theshorttitle theShortTitlek m     ll �mm  :i o   ! "�� 0 theapp theAppg o      � �  0 thetitle theTitlee n��n r   & 2opo I  & 0��qr
�� .sfridojs****       utxtq m   & 'ss �tt * w i n d o w . g e t S e l e c t i o n ( )r ��u��
�� 
dcnmu 4   ( ,��v
�� 
docuv m   * +���� ��  p o      ���� 0 
thecontent 
theContent��  M m     ww�                                                                                  sfri  alis    :  rushka                     �/�SH+   3��
Safari.app                                                      6��;�)        ����  	                Applications    �/�C      �;�     3��  rushka:Applications:Safari.app   
 S a f a r i . a p p    r u s h k a  Applications/Safari.app   / ��  K xyx l  4 4��������  ��  ��  y z{z r   4 <|}| I   4 :��~���� (0 encodeuricomponent encodeURIComponent~ �� o   5 6���� 0 theurl theURL��  ��  } o      ���� 0 escurl escURL{ ��� r   = E��� I   = C������� (0 encodeuricomponent encodeURIComponent� ���� o   > ?���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   F N��� I   F L������� (0 encodeuricomponent encodeURIComponent� ���� o   G H���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   O W��� I   O U������� (0 encodeuricomponent encodeURIComponent� ���� o   P Q���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  X X��������  ��  ��  � ���� r   X m��� b   X k��� b   X i��� b   X g��� b   X e��� b   X c��� b   X a��� b   X _��� b   X ]��� b   X [��� o   X Y���� 0 theprotocol theProtocol� o   Y Z���� 0 escurl escURL� m   [ \�� ���  /� o   ] ^���� 0 esctitle escTitle� m   _ `�� ���  /� o   a b���� 0 escshorttitle escShortTitle� m   c d�� ���  /� o   e f���� 0 
esccontent 
escContent� m   g h�� ���  :� o   i j���� 0 escapp escApp� o      ���� 0 thelink theLink��  B ��� l     ��������  ��  ��  � ��� i    ��� I      �������  0 linksafaritabs linkSafariTabs� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     d�� ��� O     ^��� k    ]�� ��� r    ��� n    
��� 2   
��
�� 
bTab� 4    ���
�� 
cwin� m    ���� � o      ���� 0 thetabs theTabs� ��� r    ��� J    ����  � o      ���� 0 thelinklist theLinkList� ���� X    ]����� k   " X�� ��� r   " +��� l  " )������ I  " )����
�� .sfridojs****       utxt� m   " #�� ���  d o c u m e n t . U R L� �����
�� 
dcnm� o   $ %���� 0 eachtab eachTab��  ��  ��  � o      ���� 0 theurl theURL� ��� r   , 5��� l  , 3������ I  , 3����
�� .sfridojs****       utxt� m   , -�� ���  d o c u m e n t . t i t l e� �����
�� 
dcnm� o   . /���� 0 eachtab eachTab��  ��  ��  � o      ���� 0 thetitle theTitle� ��� r   6 >��� n   6 <��� I   7 <������� (0 encodeuricomponent encodeURIComponent� ���� o   7 8���� 0 theurl theURL��  ��  �  f   6 7� o      ���� 0 escurl escURL� ��� r   ? G��� n   ? E��� I   @ E������� (0 encodeuricomponent encodeURIComponent� ���� o   @ A���� 0 thetitle theTitle��  ��  �  f   ? @� o      ���� 0 esctitle escTitle� ��� r   H S��� b   H Q��� b   H O��� b   H M��� b   H K��� o   H I���� 0 escurl escURL� m   I J   �  /� o   K L���� 0 esctitle escTitle� m   M N �  /� m   O P �  : :� o      ���� 0 eachlink eachLink� �� s   T X o   T U���� 0 eachlink eachLink n      	
	  ;   V W
 o   U V���� 0 thelinklist theLinkList��  �� 0 eachtab eachTab� o    ���� 0 thetabs theTabs��  � m     �                                                                                  sfri  alis    :  rushka                     �/�SH+   3��
Safari.app                                                      6��;�)        ����  	                Applications    �/�C      �;�     3��  rushka:Applications:Safari.app   
 S a f a r i . a p p    r u s h k a  Applications/Safari.app   / ��  �  l  _ _��������  ��  ��   �� r   _ d b   _ b o   _ `���� 0 theprotocol theProtocol o   ` a���� 0 thelinklist theLinkList o      ���� 0 thelink theLink��  �  l     ��������  ��  ��    i     I      ������ 0 linkskim linkSkim  o      ���� 0 theprotocol theProtocol �� o      ���� 0 theapp theApp��  ��   k     �  O     M !  k    L"" #$# r    %&% m    '' �(( 
 s k i m :& o      ���� 0 	thescheme 	theScheme$ )*) r    +,+ 4   ��-
�� 
docu- m   
 ���� , o      ���� 0 thedoc theDoc* ./. r    010 l   2����2 n    343 1    ��
�� 
pnam4 o    ���� 0 thedoc theDoc��  ��  1 o      ���� 0 theshorttitle theShortTitle/ 565 r    787 b    9:9 b    ;<; o    ���� 0 theshorttitle theShortTitle< m    == �>>  :: o    ���� 0 theapp theApp8 o      ���� 0 thetitle theTitle6 ?@? r    $ABA b    "CDC l    E����E n     FGF 1     ��
�� 
ppthG o    ���� 0 thedoc theDoc��  ��  D m     !HH �II  : :B o      ���� 0 thepath thePath@ JKJ r   % *LML n   % (NON 1   & (��
�� 
seleO o   % &���� 0 thedoc theDocM o      ���� 0 theselection theSelectionK PQP r   + 4RSR n   + 2TUT 1   0 2��
�� 
pcntU l  + 0V����V I  + 0��W��
�� .SKIMTextnull���     ****W o   + ,�� 0 theselection theSelection��  ��  ��  S o      �~�~ 0 
thecontent 
theContentQ XYX Z   5 BZ[�}�|Z =  5 8\]\ o   5 6�{�{ 0 
thecontent 
theContent] m   6 7�z
�z 
msng[ r   ; >^_^ m   ; <`` �aa  _ o      �y�y 0 
thecontent 
theContent�}  �|  Y b�xb r   C Lcdc l  C Je�w�ve I  C J�uf�t
�u .SKIMIndxnull���     ****f n   C Fghg 1   D F�s
�s 
CPagh o   C D�r�r 0 thedoc theDoc�t  �w  �v  d o      �q�q 0 thepage thePage�x  ! m     ii�                                                                                  SKim  alis    2  rushka                     �/�SH+   3��Skim.app                                                        |��ǡ|[        ����  	                Applications    �/�C      ǡ|[     3��  rushka:Applications:Skim.app    S k i m . a p p    r u s h k a  Applications/Skim.app   / ��   jkj l  N N�p�o�n�p  �o  �n  k lml r   N Vnon I   N T�mp�l�m (0 encodeuricomponent encodeURIComponentp q�kq o   O P�j�j 0 	thescheme 	theScheme�k  �l  o o      �i�i 0 	escscheme 	escSchemem rsr r   W _tut I   W ]�hv�g�h (0 encodeuricomponent encodeURIComponentv w�fw o   X Y�e�e 0 theshorttitle theShortTitle�f  �g  u o      �d�d 0 escshorttitle escShortTitles xyx r   ` hz{z I   ` f�c|�b�c (0 encodeuricomponent encodeURIComponent| }�a} o   a b�`�` 0 thetitle theTitle�a  �b  { o      �_�_ 0 esctitle escTitley ~~ r   i q��� I   i o�^��]�^ (0 encodeuricomponent encodeURIComponent� ��\� o   j k�[�[ 0 thepath thePath�\  �]  � o      �Z�Z 0 escpath escPath ��� r   r z��� I   r x�Y��X�Y (0 encodeuricomponent encodeURIComponent� ��W� o   s t�V�V 0 
thecontent 
theContent�W  �X  � o      �U�U 0 
esccontent 
escContent� ��� l  { {�T�S�R�T  �S  �R  � ��Q� r   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ���� b   { ~��� o   { |�P�P 0 theprotocol theProtocol� o   | }�O�O 0 	escscheme 	escScheme� o   ~ �N�N 0 escpath escPath� o   � ��M�M 0 thepage thePage� m   � ��� ���  /� o   � ��L�L 0 esctitle escTitle� m   � ��� ���  /� o   � ��K�K 0 escshorttitle escShortTitle� m   � ��� ���  /� o   � ��J�J 0 
esccontent 
escContent� m   � ��� ���  :� o   � ��I�I 0 escapp escApp� o      �H�H 0 thelink theLink�Q   ��� l     �G�F�E�G  �F  �E  � ��� i    ��� I      �D��C�D 0 linkbibdesk linkBibDesk� ��� o      �B�B 0 theprotocol theProtocol� ��A� o      �@�@ 0 theapp theApp�A  �C  � k     ��� ��� O     P��� k    O�� ��� r    ��� m    �� ��� < $ p u b l i c a t i o n s > 
 < $ p u b T y p e = a r t i c l e ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . J o u r n a l / > ,   < $ f i e l d s . V o l u m e / > ( < $ f i e l d s . N u m b e r / > ) ,   < $ f i e l d s . P a g e s / > . 
 < ? $ p u b T y p e = b o o k ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . A d d r e s s / > :   < $ f i e l d s . P u b l i s h e r / > . 
 < ? $ p u b T y p e = u n p u b l i s h e d ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . N o t e / > 
 < ? $ p u b T y p e ? > 
 < $ a u t h o r s . n a m e . @ c o m p o n e n t s J o i n e d B y C o m m a A n d A n d / >   < $ f i e l d s . Y e a r / > .   < $ f i e l d s . T i t l e / > .   < $ f i e l d s . J o u r n a l / > ,   < $ f i e l d s . V o l u m e / > ( < $ f i e l d s . N u m b e r / > ) ,   < $ f i e l d s . P a g e s / > 
 < / $ p u b T y p e ? > 
 < / $ p u b l i c a t i o n s > 
� o      �?�? 0 templatetext templateText� ��� r    ��� m    	�� ���  b i b d e s k :� o      �>�> 0 	thescheme 	theScheme� ��� r    ��� 4   �=�
�= 
docu� m    �<�< � o      �;�; 0 thedoc theDoc� ��� r    ��� b    ��� l   ��:�9� n    ��� 1    �8
�8 
pnam� o    �7�7 0 thedoc theDoc�:  �9  � m    �� ���  : :� o      �6�6 0 thetitle theTitle� ��� r    "��� b     ��� l   ��5�4� n    ��� 1    �3
�3 
ppth� o    �2�2 0 thedoc theDoc�5  �4  � m    �� ���  : :� o      �1�1 0 thepath thePath� ��� r   # (��� l  # &��0�/� n   # &��� 1   $ &�.
�. 
sele� o   # $�-�- 0 thedoc theDoc�0  �/  � o      �,�, 0 theselection theSelection� ��� r   ) /��� n   ) -��� 4   * -�+�
�+ 
cobj� m   + ,�*�* � o   ) *�)�) 0 theselection theSelection� o      �(�( 0 thepub thePub� ��� r   0 ;��� I  0 9�'��
�' .BDSKttxtnull���     docu� o   0 1�&�& 0 thedoc theDoc� �%��
�% 
usTx� o   2 3�$�$ 0 templatetext templateText� �#��"
�# 
for � o   4 5�!�! 0 thepub thePub�"  � o      � �  0 thereference theReference� ��� r   < A��� n   < ?� � 1   = ?�
� 
ckey  o   < =�� 0 thepub thePub� o      �� 0 thecite theCite�  r   B G b   B E m   B C �  : o   C D�� 0 theapp theApp o      �� 0 
theappname 
theAppName 	�	 r   H O

 n   H M 1   I M�
� 
keyw o   H I�� 0 thepub thePub o      �� 0 thekeywords theKeywords�  � m     �                                                                                  BDSK  alis    >  rushka                     �/�SH+   3��BibDesk.app                                                     }�ǧ��        ����  	                Applications    �/�C      ǧ��     3��  rushka:Applications:BibDesk.app     B i b D e s k . a p p    r u s h k a  Applications/BibDesk.app  / ��  �  l  Q Q����  �  �    r   Q Y I   Q W��� (0 encodeuricomponent encodeURIComponent � o   R S�� 0 	thescheme 	theScheme�  �   o      �� 0 	escscheme 	escScheme  r   Z b I   Z `��� (0 encodeuricomponent encodeURIComponent � o   [ \�� 0 thetitle theTitle�  �   o      �
�
 0 esctitle escTitle  r   c k  I   c i�	!��	 (0 encodeuricomponent encodeURIComponent! "�" o   d e�� 0 thecite theCite�  �    o      �� 0 esccite escCite #$# r   l v%&% I   l r�'�� (0 encodeuricomponent encodeURIComponent' (�( o   m n�� 0 thepath thePath�  �  & o      � �  0 escpath escPath$ )*) r   w �+,+ I   w }��-���� (0 encodeuricomponent encodeURIComponent- .��. o   x y���� 0 thereference theReference��  ��  , o      ���� 0 escreference escReference* /0/ r   � �121 I   � ���3���� (0 encodeuricomponent encodeURIComponent3 4��4 o   � ����� 0 
theappname 
theAppName��  ��  2 o      ���� 0 
escappname 
escAppName0 565 l  � ���������  ��  ��  6 787 r   � �9:9 l  � �;����; I  � ���<��
�� .sysoexecTEXT���     TEXT< b   � �=>= b   � �?@? m   � �AA �BB  e c h o   "@ o   � ����� 0 thekeywords theKeywords> m   � �CC �DD , "   |   s e d   - e   ' s / [ ; , ] / / g '��  ��  ��  : o      ����  0 thekeywordssed theKeywordsSed8 EFE l  � ���������  ��  ��  F GHG r   � �IJI b   � �KLK b   � �MNM m   � �OO �PP 4 : P R O P E R T I E S : 
     : B I B D E S K :    N o   � �����  0 thekeywordssed theKeywordsSedL m   � �QQ �RR  
     : E N D :J o      ���� 0 theproperty thePropertyH STS r   � �UVU b   � �WXW b   � �YZY o   � ����� 0 theproperty thePropertyZ m   � �[[ �\\  
 
    X o   � ����� 0 thereference theReferenceV o      ���� 0 
thecontent 
theContentT ]^] r   � �_`_ I   � ���a���� (0 encodeuricomponent encodeURIComponenta b��b o   � ����� 0 
thecontent 
theContent��  ��  ` o      ���� 0 
esccontent 
escContent^ cdc l  � ���������  ��  ��  d efe l  � ���������  ��  ��  f g��g r   � �hih b   � �jkj b   � �lml b   � �non b   � �pqp b   � �rsr b   � �tut b   � �vwv b   � �xyx b   � �z{z b   � �|}| b   � �~~ b   � ���� b   � ���� o   � ����� 0 theprotocol theProtocol� o   � ����� 0 	escscheme 	escScheme� o   � ����� 0 escpath escPath o   � ����� 0 esccite escCite} m   � ��� ���  /{ o   � ����� 0 esctitle escTitley o   � ����� 0 esccite escCitew o   � ����� 0 
escappname 
escAppNameu m   � ��� ���  /s o   � ����� 0 esccite escCiteq m   � ��� ���  /o o   � ����� 0 
esccontent 
escContentm m   � ��� ���  :k o   � ����� 0 escapp escAppi o      ���� 0 thelink theLink��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	linkpages 	linkPages� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     |�� ��� O     1��� k    0�� ��� r    ��� m    �� ���  p a g e s :� o      ���� 0 	thescheme 	theScheme� ��� r    ��� 4   ���
�� 
docu� m   
 ���� � o      ���� 0 thedoc theDoc� ��� r    ��� l   ������ n    ��� 1    ��
�� 
pnam� o    ���� 0 thedoc theDoc��  ��  � o      ���� 0 theshorttitle theShortTitle� ��� r    ��� b    ��� b    ��� o    ���� 0 theshorttitle theShortTitle� m    �� ���  :� o    ���� 0 theapp theApp� o      ���� 0 thetitle theTitle� ��� r    $��� b    "��� l    ������ n     ��� 1     ��
�� 
ppth� o    ���� 0 thedoc theDoc��  ��  � m     !�� ���  : :� o      ���� 0 thepath thePath� ��� r   % *��� l  % (������ n   % (��� 1   & (��
�� 
pSel� o   % &���� 0 thedoc theDoc��  ��  � o      ���� 0 
thecontent 
theContent� ���� r   + 0��� n   + .��� 1   , .��
�� 
ofse� o   + ,���� 0 
thecontent 
theContent� o      ���� 0 
thecharoff 
theCharOff��  � m     ���                                                                                  page  alis    L  rushka                     �/�SH+   bNl	Pages.app                                                       b�/���        ����  	                	iWork '09     �/�C      ��u�     bNl 3��  'rushka:Applications:iWork '09:Pages.app    	 P a g e s . a p p    r u s h k a   Applications/iWork '09/Pages.app  / ��  � ��� l  2 2��������  ��  ��  � ��� r   2 :��� I   2 8������� (0 encodeuricomponent encodeURIComponent� ���� o   3 4���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   ; C��� I   ; A������� (0 encodeuricomponent encodeURIComponent� ���� o   < =���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   D L��� I   D J������� (0 encodeuricomponent encodeURIComponent� ���� o   E F���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   M U��� I   M S������� (0 encodeuricomponent encodeURIComponent� ���� o   N O���� 0 thepath thePath��  ��  � o      ���� 0 escpath escPath� ��� r   V `��� I   V ^������� (0 encodeuricomponent encodeURIComponent� ���� c   W Z��� o   W X���� 0 
thecontent 
theContent� m   X Y��
�� 
ctxt��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  a a��������  ��  ��  � ���� r   a |��� b   a x��� b   a v��� b   a t��� b   a r��� b   a p� � b   a n b   a l b   a j b   a h b   a f	
	 b   a d o   a b���� 0 theprotocol theProtocol o   b c���� 0 	escscheme 	escScheme
 o   d e���� 0 escpath escPath o   f g���� 0 
thecharoff 
theCharOff m   h i �  / o   j k���� 0 esctitle escTitle m   l m �  /  o   n o���� 0 escshorttitle escShortTitle� m   p q �  /� o   r s���� 0 
esccontent 
escContent� m   t u �  :� o   v w���� 0 escapp escApp� o      ���� 0 thelink theLink��  �  l     �������  ��  �    i     # I      �~�}�~ 0 linknumbers linkNumbers  o      �|�| 0 theprotocol theProtocol �{ o      �z�z 0 theapp theApp�{  �}   k      !  O     �"#" k    �$$ %&% r    '(' m    )) �**  n u m b e r s :( o      �y�y 0 	thescheme 	theScheme& +,+ r    -.- 4   �x/
�x 
docu/ m   
 �w�w . o      �v�v 0 thedoc theDoc, 010 r    232 l   4�u�t4 n    565 1    �s
�s 
pnam6 o    �r�r 0 thedoc theDoc�u  �t  3 o      �q�q 0 theshorttitle theShortTitle1 787 r    9:9 b    ;<; b    =>= o    �p�p 0 theshorttitle theShortTitle> m    ?? �@@  :< o    �o�o 0 theapp theApp: o      �n�n 0 thetitle theTitle8 ABA r    $CDC b    "EFE l    G�m�lG n     HIH 1     �k
�k 
ppthI o    �j�j 0 thedoc theDoc�m  �l  F m     !JJ �KK  : :D o      �i�i 0 thepath thePathB L�hL O   % �MNM k   ) �OO PQP r   ) ,RSR m   ) *�g�g  S o      �f�f 0 thesheet theSheetQ TUT Y   - lV�eWX�dV k   = gYY Z[Z O   = W\]\ r   D V^_^ l  D T`�c�b` I  D T�aa�`
�a .corecnte****       ****a l  D Pb�_�^b 6  D Pcdc 2  D G�]
�] 
NmTbd >  H Oefe 1   I K�\
�\ 
NMTsf m   L N�[
�[ 
msng�_  �^  �`  �c  �b  _ o      �Z�Z 0 x  ] 4   = A�Yg
�Y 
NmShg o   ? @�X�X 0 i  [ h�Wh Z   X gij�V�Ui >  X [klk o   X Y�T�T 0 x  l m   Y Z�S�S  j k   ^ cmm non r   ^ apqp o   ^ _�R�R 0 i  q o      �Q�Q 0 thesheet theSheeto r�Pr  S   b c�P  �V  �U  �W  �e 0 i  W m   0 1�O�O X l  1 8s�N�Ms I  1 8�Lt�K
�L .corecnte****       ****t 2  1 4�J
�J 
NmSh�K  �N  �M  �d  U u�Iu Z   m �vw�Hxv =  m pyzy o   m n�G�G 0 thesheet theSheetz m   n o�F�F  w k   s �{{ |}| r   s x~~ b   s v��� m   s t�E�E � m   t u�� ���  : : o      �D�D 0 thesheet theSheet} ��� r   y ~��� b   y |��� m   y z�C�C � m   z {�� ���  : :� o      �B�B 0 thetable theTable� ��� r    ���� m    ��� ��� 
 A 1 : A 1� o      �A�A 0 therange theRange� ��@� r   � ���� m   � ��� ���  � o      �?�? 0 
thecontent 
theContent�@  �H  x O   � ���� k   � ��� ��� r   � ���� 6  � ���� 4  � ��>�
�> 
NmTb� m   � ��=�= � >  � ���� 1   � ��<
�< 
NMTs� m   � ��;
�; 
msng� o      �:�: 0 thetable theTable� ��9� O   � ���� k   � ��� ��� r   � ���� b   � ���� l  � ���8�7� c   � ���� o   � ��6�6 0 thesheet theSheet� m   � ��5
�5 
ctxt�8  �7  � m   � ��� ���  : :� o      �4�4 0 thesheet theSheet� ��� r   � ���� b   � ���� l  � ���3�2� n   � ���� 1   � ��1
�1 
pnam� o   � ��0�0 0 thetable theTable�3  �2  � m   � ��� ���  : :� o      �/�/ 0 thetable theTable� ��� r   � ���� l  � ���.�-� n   � ���� 1   � ��,
�, 
pnam� 1   � ��+
�+ 
NMTs�.  �-  � o      �*�* 0 therange theRange� ��� r   � ���� n   � ���� 1   � ��)
�) 
NMCv� n   � ���� 2   � ��(
�( 
NmCl� 1   � ��'
�' 
NMTs� o      �&�&  0 therangevalues theRangeValues� ��� r   � ���� m   � ��� ���   � n     ��� 1   � ��%
�% 
txdl� 1   � ��$
�$ 
ascr� ��� r   � ���� c   � ���� o   � ��#�#  0 therangevalues theRangeValues� m   � ��"
�" 
TEXT� o      �!�! 0 
thecontent 
theContent� �� � r   � ���� m   � ��� ���  � n     ��� 1   � ��
� 
txdl� 1   � ��
� 
ascr�   � o   � ��� 0 thetable theTable�9  � 4   � ���
� 
NmSh� o   � ��� 0 thesheet theSheet�I  N o   % &�� 0 thedoc theDoc�h  # m     ���                                                                                  NMBR  alis    T  rushka                     �/�SH+   bNlNumbers.app                                                     b�����        ����  	                	iWork '09     �/�C      ��u�     bNl 3��  )rushka:Applications:iWork '09:Numbers.app     N u m b e r s . a p p    r u s h k a  "Applications/iWork '09/Numbers.app  / ��  ! ��� l  � �����  �  �  � ��� r   � ���� I   � ����� (0 encodeuricomponent encodeURIComponent� ��� o   � ��� 0 	thescheme 	theScheme�  �  � o      �� 0 	escscheme 	escScheme� ��� r   ���� I   ����� (0 encodeuricomponent encodeURIComponent� ��� o   �� 0 theshorttitle theShortTitle�  �  � o      �� 0 escshorttitle escShortTitle� ��� r  ��� I  ���� (0 encodeuricomponent encodeURIComponent� ��
� o  	
�	�	 0 thetitle theTitle�
  �  � o      �� 0 esctitle escTitle� ��� r  ��� I  ���� (0 encodeuricomponent encodeURIComponent� ��� o  �� 0 thepath thePath�  �  � o      �� 0 escpath escPath� ��� r  (� � I  $��� (0 encodeuricomponent encodeURIComponent �  o   ���� 0 thesheet theSheet�   �    o      ���� 0 escsheet escSheet�  r  )3 I  )/������ (0 encodeuricomponent encodeURIComponent �� o  *+���� 0 thetable theTable��  ��   o      ���� 0 esctable escTable 	
	 r  4> I  4:������ (0 encodeuricomponent encodeURIComponent �� o  56���� 0 therange theRange��  ��   o      ���� 0 escrange escRange
  r  ?I I  ?E������ (0 encodeuricomponent encodeURIComponent �� o  @A���� 0 
thecontent 
theContent��  ��   o      ���� 0 
esccontent 
escContent  l JJ��������  ��  ��   �� r  J b  J{ b  Jw b  Js b  Jo !  b  Jk"#" b  Ji$%$ b  Je&'& b  Ja()( b  J]*+* b  JY,-, b  JU./. b  JQ010 b  JM232 o  JK���� 0 theprotocol theProtocol3 o  KL���� 0 	escscheme 	escScheme1 o  MP���� 0 escpath escPath/ o  QT���� 0 escsheet escSheet- o  UX���� 0 esctable escTable+ o  Y\���� 0 escrange escRange) m  ]`44 �55  /' o  ad���� 0 esctitle escTitle% m  eh66 �77  /# o  ij���� 0 escshorttitle escShortTitle! m  kn88 �99  / o  or���� 0 
esccontent 
escContent m  sv:: �;;  : o  wz���� 0 escapp escApp o      ���� 0 thelink theLink��   <=< l     ��������  ��  ��  = >?> i   $ '@A@ I      ��B���� 0 linkkeynote linkKeynoteB CDC o      ���� 0 theprotocol theProtocolD E��E o      ���� 0 theapp theApp��  ��  A k     �FF GHG O     >IJI k    =KK LML r    NON m    PP �QQ  k e y n o t e :O o      ���� 0 	thescheme 	theSchemeM RSR r    TUT 4   ��V
�� 
docuV m   
 ���� U o      ���� 0 thedoc theDocS WXW r    YZY l   [����[ n    \]\ 1    ��
�� 
pnam] o    ���� 0 thedoc theDoc��  ��  Z o      ���� 0 theshorttitle theShortTitleX ^_^ r    `a` b    bcb o    ���� 0 theshorttitle theShortTitlec m    dd �ee  : K e y n o t ea o      ���� 0 thetitle theTitle_ fgf r    "hih b     jkj l   l����l n    mnm 1    ��
�� 
ppthn o    ���� 0 thedoc theDoc��  ��  k m    oo �pp  : :i o      ���� 0 thepath thePathg qrq r   # +sts l  # )u����u n   # )vwv 1   ' )��
�� 
KnCSw 4  # '��x
�� 
docux m   % &���� ��  ��  t o      ���� 0 theslide theSlider yzy r   , 1{|{ l  , /}����} n   , /~~ 1   - /��
�� 
KSdN o   , -���� 0 theslide theSlide��  ��  | o      ���� 0 theslideindex theSlideIndexz ���� r   2 =��� b   2 ;��� b   2 7��� l  2 5������ n   2 5��� 1   3 5��
�� 
titl� o   2 3���� 0 theslide theSlide��  ��  � m   5 6�� ���  
 	 
 	� l  7 :������ n   7 :��� 1   8 :��
�� 
btxt� o   7 8���� 0 theslide theSlide��  ��  � o      ���� 0 
thecontent 
theContent��  J m     ���                                                                                  keyn  alis    T  rushka                     �/�SH+   bNlKeynote.app                                                     bNm���        ����  	                	iWork '09     �/�C      ��u�     bNl 3��  )rushka:Applications:iWork '09:Keynote.app     K e y n o t e . a p p    r u s h k a  "Applications/iWork '09/Keynote.app  / ��  H ��� l  ? ?��������  ��  ��  � ��� r   ? G��� I   ? E������� (0 encodeuricomponent encodeURIComponent� ���� o   @ A���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ��� r   H P��� I   H N������� (0 encodeuricomponent encodeURIComponent� ���� o   I J���� 0 thepath thePath��  ��  � o      ���� 0 escpath escPath� ��� r   Q Y��� I   Q W������� (0 encodeuricomponent encodeURIComponent� ���� o   R S���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ��� r   Z b��� I   Z `������� (0 encodeuricomponent encodeURIComponent� ���� o   [ \���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   c k��� I   c i������� (0 encodeuricomponent encodeURIComponent� ���� o   d e���� 0 
thecontent 
theContent��  ��  � o      ���� 0 
esccontent 
escContent� ��� l  l l��������  ��  ��  � ��� r   l ���� b   l ���� b   l ���� b   l ��� b   l }��� b   l {��� b   l y��� b   l w��� b   l u��� b   l s��� b   l q��� b   l o��� o   l m���� 0 theprotocol theProtocol� o   m n���� 0 	escscheme 	escScheme� o   o p���� 0 escpath escPath� o   q r���� 0 theslideindex theSlideIndex� m   s t�� ���  /� o   u v���� 0 esctitle escTitle� m   w x�� ���  /� o   y z���� 0 escshorttitle escShortTitle� m   { |�� ���  /� o   } ~���� 0 
esccontent 
escContent� m    ��� ���  :� o   � ����� 0 escapp escApp� o      ���� 0 thelink theLink� ���� l  � ���������  ��  ��  ��  ? ��� l     ��������  ��  ��  � ��� i   ( +��� I      ������� 0 linkmail linkMail� ��� o      ���� 0 theprotocol theProtocol� ���� o      �� 0 theapp theApp��  ��  � k     ��� ��� O     =��� k    <�� ��� r    	��� 1    �~
�~ 
slct� o      �}�} 0 theselection theSelection� ��� X   
 8��|�� k    3�� ��� r    ��� n    ��� 1    �{
�{ 
meid� o    �z�z 0 
themessage 
theMessage� o      �y�y 0 theid theID� ��� r     %��� l    #��x�w� n     #��� 1   ! #�v
�v 
subj� o     !�u�u 0 
themessage 
theMessage�x  �w  � o      �t�t "0 theshortsubject theShortSubject� ��� r   & -��� b   & +� � b   & ) o   & '�s�s "0 theshortsubject theShortSubject m   ' ( �  :  o   ) *�r�r 0 theapp theApp� o      �q�q 0 
thesubject 
theSubject� �p r   . 3 n   . 1	 1   / 1�o
�o 
ctnt	 o   . /�n�n 0 
themessage 
theMessage o      �m�m 0 
thecontent 
theContent�p  �| 0 
themessage 
theMessage� o    �l�l 0 theselection theSelection� 
�k
 r   9 < m   9 : �  m e s s a g e : / / o      �j�j 0 	thescheme 	theScheme�k  � m     �                                                                                  emal  alis    2  rushka                     �/�SH+   3��Mail.app                                                        6(Ə/        ����  	                Applications    �/�C      Ǝ�     3��  rushka:Applications:Mail.app    M a i l . a p p    r u s h k a  Applications/Mail.app   / ��  �  l  > >�i�h�g�i  �h  �g    r   > F I   > D�f�e�f (0 encodeuricomponent encodeURIComponent �d o   ? @�c�c 0 theid theID�d  �e   o      �b�b 0 escid escID  r   G O I   G M�a�`�a (0 encodeuricomponent encodeURIComponent �_ o   H I�^�^ "0 theshortsubject theShortSubject�_  �`   o      �]�] "0 escshortsubject escShortSubject  r   P X !  I   P V�\"�[�\ (0 encodeuricomponent encodeURIComponent" #�Z# o   Q R�Y�Y 0 
thesubject 
theSubject�Z  �[  ! o      �X�X 0 
escsubject 
escSubject $%$ r   Y a&'& I   Y _�W(�V�W (0 encodeuricomponent encodeURIComponent( )�U) o   Z [�T�T 0 	thescheme 	theScheme�U  �V  ' o      �S�S 0 	escscheme 	escScheme% *+* r   b j,-, I   b h�R.�Q�R (0 encodeuricomponent encodeURIComponent. /�P/ o   c d�O�O 0 
thecontent 
theContent�P  �Q  - o      �N�N 0 
esccontent 
escContent+ 010 l  k k�M�L�K�M  �L  �K  1 2�J2 r   k �343 b   k �565 b   k ~787 b   k |9:9 b   k z;<; b   k x=>= b   k v?@? b   k tABA b   k rCDC b   k pEFE b   k nGHG o   k l�I�I 0 theprotocol theProtocolH o   l m�H�H 0 	escscheme 	escSchemeF o   n o�G�G 0 escid escIDD m   p qII �JJ  /B o   r s�F�F 0 
escsubject 
escSubject@ m   t uKK �LL  /> o   v w�E�E "0 escshortsubject escShortSubject< m   x yMM �NN  /: o   z {�D�D 0 
esccontent 
escContent8 m   | }OO �PP  :6 o   ~ �C�C 0 escapp escApp4 o      �B�B 0 thelink theLink�J  � QRQ l     �A�@�?�A  �@  �?  R STS i   , /UVU I      �>W�=�> "0 linkaddressbook linkAddressBookW XYX o      �<�< 0 theprotocol theProtocolY Z�;Z o      �:�: 0 theapp theApp�;  �=  V k     i[[ \]\ l      �9^_�9  ^  By Alexander Poslavsky   _ �`` 0  B y   A l e x a n d e r   P o s l a v s k y ] aba O     >cdc k    =ee fgf r    hih m    jj �kk  a d d r e s s :i o      �8�8 0 	thescheme 	theSchemeg lml r    non 1    �7
�7 
az48o o      �6�6 0 allcontacts AllContactsm p�5p Z    =qr�4sq =    tut n    vwv m    �3
�3 
nmbrw n   xyx 2   �2
�2 
cobjy o    �1�1 0 allcontacts AllContactsu m    �0�0 r k    *zz {|{ r    }~} n    � 4    �/�
�/ 
cobj� m    �.�. � o    �-�- 0 allcontacts AllContacts~ o      �,�, 0 one_contact  | ��� r    $��� n    "��� 1     "�+
�+ 
ID  � o     �*�* 0 one_contact  � o      �)�) 0 theid theID� ��(� r   % *��� n   % (��� 1   & (�'
�' 
pnam� o   % &�&�& 0 one_contact  � o      �%�% 0 thename theName�(  �4  s O   - =��� k   1 <�� ��� I  1 6�$�#�"
�$ .miscactvnull��� ��� null�#  �"  � ��!� I  7 <� ��
�  .sysodlogaskr        TEXT� m   7 8�� ��� 2 E r r o r :   C h o o s e   o n e   c o n t a c t�  �!  � m   - .���                                                                                  sevs  alis    |  rushka                     �/�SH+   3��System Events.app                                               4�+�85G        ����  	                CoreServices    �/�C      �8'7     3�� 3І 3Ѕ  4rushka:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    r u s h k a  -System/Library/CoreServices/System Events.app   / ��  �5  d m     ���                                                                                  adrb  alis    R  rushka                     �/�SH+   3��Address Book.app                                                6F�ƐX�        ����  	                Applications    �/�C      ƐJu     3��  $rushka:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    r u s h k a  Applications/Address Book.app   / ��  b ��� l  ? ?����  �  �  � ��� r   ? G��� I   ? E���� (0 encodeuricomponent encodeURIComponent� ��� o   @ A�� 0 theid theID�  �  � o      �� 0 escid escID� ��� r   H P��� I   H N���� (0 encodeuricomponent encodeURIComponent� ��� o   I J�� 0 thename theName�  �  � o      �� 0 escname escName� ��� r   Q Y��� I   Q W���� (0 encodeuricomponent encodeURIComponent� ��� o   R S�� 0 	thescheme 	theScheme�  �  � o      �� 0 	escscheme 	escScheme� ��� r   Z i��� b   Z g��� b   Z e��� b   Z c��� b   Z a��� b   Z _��� b   Z ]��� o   Z [�� 0 theprotocol theProtocol� o   [ \�
�
 0 	escscheme 	escScheme� o   ] ^�	�	 0 escid escID� m   _ `�� ���  /� o   a b�� 0 escname escName� m   c d�� ���  :� o   e f�� 0 escapp escApp� o      �� 0 thelink theLink�  T ��� l     ����  �  �  � ��� l     ��� �  �  �   � ��� i   0 3��� I      ������� 0 
linkitunes 
linkITunes� ��� o      ���� 0 theprotocol theProtocol� ���� o      ���� 0 theapp theApp��  ��  � k     ��� ��� O     d��� k    c�� ��� r    ��� m    �� ���  i T u n e s :� o      ���� 0 	thescheme 	theScheme� ��� r    ��� l   ������ n    ��� 1    ��
�� 
pPIS� l   ������ n    ��� 4    ���
�� 
cobj� m    ���� � 1    ��
�� 
sele��  ��  ��  ��  � o      ���� 0 theid theID� ��� r    ��� l   ������ n    ��� 1    ��
�� 
pnam� l   ������ n    ��� 4    ���
�� 
cobj� m    ���� � 1    ��
�� 
sele��  ��  ��  ��  � o      ���� 0 theshortname theShortName� ��� r    %��� b    #��� b    !��� o    ���� 0 theshortname theShortName� m     �� ���  :� o   ! "���� 0 theapp theApp� o      ���� 0 thename theName� ��� r   & 0��� l  & .������ n   & .��� 1   , .��
�� 
pnam� l  & ,������ n   & ,� � 4   ) ,��
�� 
cobj m   * +����   1   & )��
�� 
sele��  ��  ��  ��  � o      ���� 0 thetitle theTitle�  r   1 ; l  1 9���� n   1 9 1   7 9��
�� 
pCmp l  1 7	����	 n   1 7

 4   4 7��
�� 
cobj m   5 6����  1   1 4��
�� 
sele��  ��  ��  ��   o      ���� 0 thecomposer theComposer  r   < F l  < D���� n   < D 1   B D��
�� 
pAlb l  < B���� n   < B 4   ? B��
�� 
cobj m   @ A����  1   < ?��
�� 
sele��  ��  ��  ��   o      ���� 0 thealbum theAlbum  r   G Q l  G O���� n   G O 1   M O��
�� 
pArt l  G M���� n   G M !  4   J M��"
�� 
cobj" m   K L���� ! 1   G J��
�� 
sele��  ��  ��  ��   o      ���� 0 	theartist 	theArtist #��# r   R c$%$ b   R a&'& b   R _()( b   R ]*+* b   R [,-, b   R Y./. b   R W010 b   R U232 m   R S44 �55  
3 o   S T���� 0 thetitle theTitle1 m   U V66 �77  
/ o   W X���� 0 thealbum theAlbum- m   Y Z88 �99  
+ o   [ \���� 0 thecomposer theComposer) m   ] ^:: �;;  
' o   _ `���� 0 	theartist 	theArtist% o      ���� 0 
thecontent 
theContent��  � m     <<�                                                                                  hook  alis    :  rushka                     �/�SH+   3��
iTunes.app                                                      6~�Ɓ[�        ����  	                Applications    �/�C      ƁM�     3��  rushka:Applications:iTunes.app   
 i T u n e s . a p p    r u s h k a  Applications/iTunes.app   / ��  � =>= l  e e��������  ��  ��  > ?@? r   e mABA I   e k��C���� (0 encodeuricomponent encodeURIComponentC D��D o   f g���� 0 	thescheme 	theScheme��  ��  B o      ���� 0 	escscheme 	escScheme@ EFE r   n vGHG I   n t��I���� (0 encodeuricomponent encodeURIComponentI J��J o   o p���� 0 theshortname theShortName��  ��  H o      ���� 0 escshortname escShortNameF KLK r   w MNM I   w }��O���� (0 encodeuricomponent encodeURIComponentO P��P o   x y���� 0 thename theName��  ��  N o      ���� 0 escname escNameL QRQ r   � �STS I   � ���U���� (0 encodeuricomponent encodeURIComponentU V��V o   � ����� 0 thetitle theTitle��  ��  T o      ���� 0 esctitle escTitleR WXW r   � �YZY I   � ���[���� (0 encodeuricomponent encodeURIComponent[ \��\ o   � ����� 0 thecomposer theComposer��  ��  Z o      ���� 0 esccomposer escComposerX ]^] r   � �_`_ I   � ���a���� (0 encodeuricomponent encodeURIComponenta b��b o   � ����� 0 thealbum theAlbum��  ��  ` o      ���� 0 escalbum escAlbum^ cdc r   � �efe I   � ���g���� (0 encodeuricomponent encodeURIComponentg h��h o   � ����� 0 	theartist 	theArtist��  ��  f o      ���� 0 	escartist 	escArtistd iji r   � �klk I   � ���m���� (0 encodeuricomponent encodeURIComponentm n��n o   � ����� 0 
thecontent 
theContent��  ��  l o      ���� 0 
esccontent 
escContentj o��o r   � �pqp b   � �rsr b   � �tut b   � �vwv b   � �xyx b   � �z{z b   � �|}| b   � �~~ b   � ���� b   � ���� b   � ���� o   � ����� 0 theprotocol theProtocol� o   � ����� 0 	escscheme 	escScheme� o   � ����� 0 theid theID� m   � ��� ���  / o   � ����� 0 escname escName} m   � ��� ���  /{ o   � ����� 0 escshortname escShortNamey m   � ��� ���  /w o   � ����� 0 
esccontent 
escContentu m   � ��� ���  :s o   � ����� 0 escapp escAppq o      ���� 0 thelink theLink��  � ��� l     ��������  ��  ��  � ��� i   4 7��� I      ������� 0 linkterminal linkTerminal� ��� o      ���� 0 theprotocol theProtocol� ���� o      �� 0 theapp theApp��  ��  � k     e�� ��� O     )��� k    (�� ��� O    ��� r    ��� n    ��� 1    �~
�~ 
pcnt� 1    �}
�} 
tcnt� o      �|�| 0 
thecontent 
theContent� 4   �{�
�{ 
cwin� m    �z�z � ��� r    ��� m    �� ���  f i l e : /� o      �y�y 0 	thescheme 	theScheme� ��� r     ��� l   ��x�w� n    ��� 1    �v
�v 
pnam� 4   �u�
�u 
cwin� m    �t�t �x  �w  � o      �s�s 0 theshortname theShortName� ��r� r   ! (��� b   ! &��� b   ! $��� o   ! "�q�q 0 theshortname theShortName� m   " #�� ���  :� o   $ %�p�p 0 theapp theApp� o      �o�o 0 thename theName�r  � m     ���                                                                                      @ alis    X  rushka                     �/�SH+   3��Terminal.app                                                    4(��wU�        ����  	                	Utilities     �/�C      �wG�     3�� 3��  *rushka:Applications:Utilities:Terminal.app    T e r m i n a l . a p p    r u s h k a  #Applications/Utilities/Terminal.app   / ��  � ��� l  * *�n�m�l�n  �m  �l  � ��� r   * 2��� I   * 0�k��j�k (0 encodeuricomponent encodeURIComponent� ��i� o   + ,�h�h 0 	thescheme 	theScheme�i  �j  � o      �g�g 0 	escscheme 	escScheme� ��� r   3 ;��� I   3 9�f��e�f (0 encodeuricomponent encodeURIComponent� ��d� o   4 5�c�c 0 theshortname theShortName�d  �e  � o      �b�b 0 escshortname escShortName� ��� r   < D��� I   < B�a��`�a (0 encodeuricomponent encodeURIComponent� ��_� o   = >�^�^ 0 thename theName�_  �`  � o      �]�] 0 escname escName� ��� r   E M��� I   E K�\��[�\ (0 encodeuricomponent encodeURIComponent� ��Z� o   F G�Y�Y 0 
thecontent 
theContent�Z  �[  � o      �X�X 0 
esccontent 
escContent� ��� l  N N�W�V�U�W  �V  �U  � ��T� r   N e��� b   N c��� b   N a��� b   N _��� b   N ]��� b   N [��� b   N Y��� b   N W��� b   N U��� b   N S��� b   N Q��� o   N O�S�S 0 theprotocol theProtocol� o   O P�R�R 0 	escscheme 	escScheme� o   Q R�Q�Q 0 escerrorurl escErrorURL� m   S T�� ���  /� o   U V�P�P 0 escname escName� m   W X�� ���  /� o   Y Z�O�O 0 escshortname escShortName� m   [ \�� ���  /� o   ] ^�N�N 0 
esccontent 
escContent� m   _ `�� ���  :� o   a b�M�M 0 escapp escApp� o      �L�L 0 thelink theLink�T  � ��� l     �K�J�I�K  �J  �I  � ��� i   8 ;��� I      �H �G�H 0 
linkfinder 
linkFinder   o      �F�F 0 theprotocol theProtocol �E o      �D�D 0 theapp theApp�E  �G  � k     `  O     ( k    '		 

 r     m     �  f i l e : / o      �C�C 0 	thescheme 	theScheme  r     c     1    �B
�B 
sele m    �A
�A 
alis o      �@�@ 0 theitem theItem  r     n     1    �?
�? 
psxp o    �>�> 0 theitem theItem o      �=�= 0 thepath thePath  r     l    �<�;  n    !"! 1    �:
�: 
pnam" l   #�9�8# e    $$ I   �7%�6
�7 .sysonfo4asfe        file% o    �5�5 0 theitem theItem�6  �9  �8  �<  �;   o      �4�4 0 theshorttitle theShortTitle &�3& r     ''(' b     %)*) b     #+,+ o     !�2�2 0 theshorttitle theShortTitle, m   ! "-- �..  :* o   # $�1�1 0 theapp theApp( o      �0�0 0 thetitle theTitle�3   m     //�                                                                                  MACS  alis    `  rushka                     �/�SH+   3��
Finder.app                                                      4\/ƘY�        ����  	                CoreServices    �/�C      ƘK�     3�� 3І 3Ѕ  -rushka:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    r u s h k a  &System/Library/CoreServices/Finder.app  / ��   010 l  ) )�/�.�-�/  �.  �-  1 232 r   ) 1454 I   ) /�,6�+�, (0 encodeuricomponent encodeURIComponent6 7�*7 o   * +�)�) 0 	thescheme 	theScheme�*  �+  5 o      �(�( 0 	escscheme 	escScheme3 898 r   2 ::;: I   2 8�'<�&�' (0 encodeuricomponent encodeURIComponent< =�%= o   3 4�$�$ 0 thepath thePath�%  �&  ; o      �#�# 0 escpath escPath9 >?> r   ; C@A@ I   ; A�"B�!�" (0 encodeuricomponent encodeURIComponentB C� C o   < =�� 0 theshorttitle theShortTitle�   �!  A o      �� 0 escshorttitle escShortTitle? DED r   D LFGF I   D J�H�� (0 encodeuricomponent encodeURIComponentH I�I o   E F�� 0 thetitle theTitle�  �  G o      �� 0 esctitle escTitleE JKJ l  M M����  �  �  K L�L r   M `MNM b   M ^OPO b   M \QRQ b   M ZSTS b   M XUVU b   M VWXW b   M TYZY b   M R[\[ b   M P]^] o   M N�� 0 theprotocol theProtocol^ o   N O�� 0 	escscheme 	escScheme\ o   P Q�� 0 escpath escPathZ m   R S__ �``  /X o   T U�� 0 esctitle escTitleV m   V Waa �bb  /T o   X Y�� 0 escshorttitle escShortTitleR m   Z [cc �dd  :P o   \ ]�� 0 escapp escAppN o      �� 0 thelink theLink�  � efe l     ����  �  �  f g�
g i   < ?hih I      �	j��	 "0 linkapplication linkApplicationj klk o      �� 0 theprotocol theProtocoll m�m o      �� 0 theapp theApp�  �  i k     �nn opo O     Fqrq k   	 Ess tut r   	 vwv m   	 
xx �yy  f i l e : /w o      �� 0 	thescheme 	theSchemeu z{z r    |}| m    �
� boovfals} o      ��  0 appunsupported appUnsupported{ ~~ Q    %���� r    ��� 4   ��
� 
docu� m    � �  � o      ���� 0 thedoc theDoc� R      ������
�� .ascrerr ****      � ****��  ��  � r   " %��� m   " #��
�� boovtrue� o      ����  0 appunsupported appUnsupported ���� Z   & E������� =  & )��� o   & '����  0 appunsupported appUnsupported� m   ' (��
�� boovfals� k   , A�� ��� r   , 1��� l  , /������ n   , /��� 1   - /��
�� 
pnam� o   , -���� 0 thedoc theDoc��  ��  � o      ���� 0 theshorttitle theShortTitle� ��� r   2 9��� b   2 7��� b   2 5��� o   2 3���� 0 theshorttitle theShortTitle� m   3 4�� ���  :� o   5 6���� 0 theapp theApp� o      ���� 0 thetitle theTitle� ��� r   : ?��� n   : =��� 1   ; =��
�� 
ppth� o   : ;���� 0 thedoc theDoc� o      ���� 0 thepath thePath� ���� l  @ @��������  ��  ��  ��  ��  ��  ��  r 4     ���
�� 
capp� l   ������ c    ��� o    ���� 0 theapp theApp� m    ��
�� 
TEXT��  ��  p ��� l  G G��������  ��  ��  � ��� r   G O��� I   G M������� (0 encodeuricomponent encodeURIComponent� ���� o   H I���� 0 	thescheme 	theScheme��  ��  � o      ���� 0 	escscheme 	escScheme� ���� Z   P ������� =  P S��� o   P Q����  0 appunsupported appUnsupported� m   Q R��
�� boovtrue� r   V e��� b   V c��� b   V a��� b   V _��� b   V ]��� b   V [��� b   V Y��� o   V W���� 0 theprotocol theProtocol� o   W X���� 0 	escscheme 	escScheme� o   Y Z���� 0 escerrorurl escErrorURL� m   [ \�� ���  /� o   ] ^���� "0 escerrormessage escErrorMessage� m   _ `�� ���  :� o   a b���� 0 escapp escApp� o      ���� 0 thelink theLink��  � k   h ��� ��� r   h p��� I   h n������� (0 encodeuricomponent encodeURIComponent� ���� o   i j���� 0 thepath thePath��  ��  � o      ���� 0 escpath escPath� ��� r   q y��� I   q w������� (0 encodeuricomponent encodeURIComponent� ���� o   r s���� 0 theshorttitle theShortTitle��  ��  � o      ���� 0 escshorttitle escShortTitle� ��� r   z ���� I   z �������� (0 encodeuricomponent encodeURIComponent� ���� o   { |���� 0 thetitle theTitle��  ��  � o      ���� 0 esctitle escTitle� ���� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 theprotocol theProtocol� o   � ����� 0 	escscheme 	escScheme� o   � ����� 0 escpath escPath� m   � ��� ���  /� o   � ����� 0 esctitle escTitle� m   � ��� ���  /� o   � ����� 0 escshorttitle escShortTitle� o      ���� 0 thelink theLink��  ��  �
       ������������������	 ��  � ���������������������������������� "0 getitemmetadata getItemMetadata�� (0 encodeuricomponent encodeURIComponent�� 0 	linkerror 	linkError�� 0 
linksafari 
linkSafari��  0 linksafaritabs linkSafariTabs�� 0 linkskim linkSkim�� 0 linkbibdesk linkBibDesk�� 0 	linkpages 	linkPages�� 0 linknumbers linkNumbers�� 0 linkkeynote linkKeynote�� 0 linkmail linkMail�� "0 linkaddressbook linkAddressBook�� 0 
linkitunes 
linkITunes�� 0 linkterminal linkTerminal�� 0 
linkfinder 
linkFinder�� "0 linkapplication linkApplication� �� ����		���� "0 getitemmetadata getItemMetadata�� ��	�� 	  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  	 ������ 0 theprotocol theProtocol�� 0 theapp theApp	 �� .�� @�� N�� \�� j�� x�� ��� ��� ��� ��� ��� ��� �������
�� 
TEXT�� 0 	linkerror 	linkError�� 0 
linksafari 
linkSafari��  0 linksafaritabs linkSafariTabs�� 0 linkskim linkSkim�� 0 linkbibdesk linkBibDesk�� 0 	linkpages 	linkPages�� 0 linknumbers linkNumbers�� 0 linkkeynote linkKeynote�� 0 linkmail linkMail�� "0 linkaddressbook linkAddressBook�� 0 
linkitunes 
linkITunes�� 0 linkterminal linkTerminal�� 0 
linkfinder 
linkFinder�� "0 linkapplication linkApplication�� 0 thelink theLink����&� *��l+ Y hO��&�  *��l+ Y ١�&�  *��l+ Y ǡ�&�  *��l+ Y ���&�  *��l+ 
Y ���&�  *��l+ Y ���&�  *��l+ Y ��&�  *��l+ Y m��&a   *��l+ Y Y��&a   *��l+ Y E��&a   *��l+ Y 1��&a   *��l+ Y ��&a   *��l+ Y 	*��l+ O_ OP� �� �����		���� (0 encodeuricomponent encodeURIComponent�� ��	�� 	  ���� 0 theuri theURI��  	 ������ 0 theuri theURI�� 0 escuri escURI	  ���������� 0 	escapelib 	escapeLib
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� ���,%�%��,%j E�� ������		��� 0 	linkerror 	linkError�� �~		�~ 		  �}�|�} 0 theprotocol theProtocol�| 0 theapp theApp��  	 �{�z�y�x�{ 0 theprotocol theProtocol�z 0 theapp theApp�y 0 theerrorurl theErrorURL�x "0 theerrormessage theErrorMessage	 �w�v�u,�t�s�r�q
�w 
capp
�v .earsffdralis        afdr
�u 
psxp�t (0 encodeuricomponent encodeURIComponent�s 0 escerrorurl escErrorURL�r "0 escerrormessage escErrorMessage�q 0 escapp escApp� .*�/j �,E�O��%E�O*�k+ E�O*�k+ E�O*�k+ E�� �pD�o�n	
	�m�p 0 
linksafari 
linkSafari�o �l	�l 	  �k�j�k 0 theprotocol theProtocol�j 0 theapp theApp�n  	
 
�i�h�g�f�e�d�c�b�a�`�i 0 theprotocol theProtocol�h 0 theapp theApp�g 0 theurl theURL�f 0 theshorttitle theShortTitle�e 0 thetitle theTitle�d 0 
thecontent 
theContent�c 0 escurl escURL�b 0 escshorttitle escShortTitle�a 0 esctitle escTitle�` 0 
esccontent 
escContent	 wU�_�^�]`ls�\�����[�Z
�_ 
dcnm
�^ 
docu
�] .sfridojs****       utxt�\ (0 encodeuricomponent encodeURIComponent�[ 0 escapp escApp�Z 0 thelink theLink�m n� 0��*�k/l E�O��*�k/l E�O��%�%E�O��*�k/l E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%E�� �Y��X�W		�V�Y  0 linksafaritabs linkSafariTabs�X �U	�U 	  �T�S�T 0 theprotocol theProtocol�S 0 theapp theApp�W  	 
�R�Q�P�O�N�M�L�K�J�I�R 0 theprotocol theProtocol�Q 0 theapp theApp�P 0 thetabs theTabs�O 0 thelinklist theLinkList�N 0 eachtab eachTab�M 0 theurl theURL�L 0 thetitle theTitle�K 0 escurl escURL�J 0 esctitle escTitle�I 0 eachlink eachLink	 �H�G�F�E�D��C�B��A �@
�H 
cwin
�G 
bTab
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
dcnm
�B .sfridojs****       utxt�A (0 encodeuricomponent encodeURIComponent�@ 0 thelink theLink�V e� [*�k/�-E�OjvE�O J�[��l kh ��l E�O��l E�O)�k+ 
E�O)�k+ 
E�O��%�%�%�%E�O��6G[OY��UO��%E�� �?�>�=		�<�? 0 linkskim linkSkim�> �;	�; 	  �:�9�: 0 theprotocol theProtocol�9 0 theapp theApp�=  	 �8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�8 0 theprotocol theProtocol�7 0 theapp theApp�6 0 	thescheme 	theScheme�5 0 thedoc theDoc�4 0 theshorttitle theShortTitle�3 0 thetitle theTitle�2 0 thepath thePath�1 0 theselection theSelection�0 0 
thecontent 
theContent�/ 0 thepage thePage�. 0 	escscheme 	escScheme�- 0 escshorttitle escShortTitle�, 0 esctitle escTitle�+ 0 escpath escPath�* 0 
esccontent 
escContent	 i'�)�(=�'H�&�%�$�#`�"�!� ������
�) 
docu
�( 
pnam
�' 
ppth
�& 
sele
�% .SKIMTextnull���     ****
�$ 
pcnt
�# 
msng
�" 
CPag
�! .SKIMIndxnull���     ****�  (0 encodeuricomponent encodeURIComponent� 0 escapp escApp� 0 thelink theLink�< �� J�E�O*�k/E�O��,E�O��%�%E�O��,�%E�O��,E�O�j �,E�O��  �E�Y hO��,j E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%a %�%a %�%a %_ %E` � ����		�� 0 linkbibdesk linkBibDesk� �	� 	  ��� 0 theprotocol theProtocol� 0 theapp theApp�  	 �������������
�	��������� � 0 theprotocol theProtocol� 0 theapp theApp� 0 templatetext templateText� 0 	thescheme 	theScheme� 0 thedoc theDoc� 0 thetitle theTitle� 0 thepath thePath� 0 theselection theSelection� 0 thepub thePub� 0 thereference theReference� 0 thecite theCite� 0 
theappname 
theAppName�
 0 thekeywords theKeywords�	 0 	escscheme 	escScheme� 0 esctitle escTitle� 0 esccite escCite� 0 escpath escPath� 0 escreference escReference� 0 
escappname 
escAppName�  0 thekeywordssed theKeywordsSed� 0 theproperty theProperty� 0 
thecontent 
theContent�  0 
esccontent 
escContent	 ����������������������������AC��OQ[��������
�� 
docu
�� 
pnam
�� 
ppth
�� 
sele
�� 
cobj
�� 
usTx
�� 
for �� 
�� .BDSKttxtnull���     docu
�� 
ckey
�� 
keyw�� (0 encodeuricomponent encodeURIComponent
�� .sysoexecTEXT���     TEXT�� 0 escapp escApp�� 0 thelink theLink� �� M�E�O�E�O*�k/E�O��,�%E�O��,�%E�O��,E�O��k/E�O���� E�O��,E�O�%E�O�a ,E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ Oa �%a %j E^ Oa ] %a %E^ O] a %�%E^ O*] k+ E^ O��%] %�%a %�%�%] %a %�%a %] %a %_ %E` � �������		���� 0 	linkpages 	linkPages�� ��	�� 	  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  	 ������������������������������ 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 
thecontent 
theContent�� 0 
thecharoff 
theCharOff�� 0 	escscheme 	escScheme�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle�� 0 escpath escPath�� 0 
esccontent 
escContent	 ����������������������
�� 
docu
�� 
pnam
�� 
ppth
�� 
pSel
�� 
ofse�� (0 encodeuricomponent encodeURIComponent
�� 
ctxt�� 0 escapp escApp�� 0 thelink theLink�� }� .�E�O*�k/E�O��,E�O��%�%E�O��,�%E�O��,E�O��,E�UO*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O*��&k+ 	E�O��%�%�%�%�%�%�%�%�%�%�%E` � ������		���� 0 linknumbers linkNumbers�� ��	�� 	  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  	 ���������������������������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 thesheet theSheet�� 0 i  �� 0 x  �� 0 thetable theTable�� 0 therange theRange�� 0 
thecontent 
theContent��  0 therangevalues theRangeValues�� 0 	escscheme 	escScheme�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle�� 0 escpath escPath�� 0 escsheet escSheet�� 0 esctable escTable�� 0 escrange escRange�� 0 
esccontent 
escContent	 "�)����?��J������	��������������������������468:����
�� 
docu
�� 
pnam
�� 
ppth
�� 
NmSh
�� .corecnte****       ****
�� 
NmTb	  
�� 
NMTs
�� 
msng
�� 
ctxt
�� 
NmCl
�� 
NMCv
�� 
ascr
�� 
txdl
�� 
TEXT�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink���� ��E�O*�k/E�O��,E�O��%�%E�O��,�%E�O� �jE�O >k*�-j kh *�/ *�-�[�,\Z�91j E�UO�j 
�E�OY h[OY��O�j  k�%E�Ok�%E�O�E�Oa E�Y j*�/ b*�k/�[�,\Z�91E�O� M�a &a %E�O��,a %E�O*�,�,E�O*�,a -a ,E�Oa _ a ,FO�a &E�Oa _ a ,FUUUUO*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O*�k+ E^ O��%] %] %] %] %a %] %a %�%a %] %a %_  %E` !� ��A����		���� 0 linkkeynote linkKeynote�� ��	�� 	  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  	 �������������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 theslide theSlide�� 0 theslideindex theSlideIndex�� 0 
thecontent 
theContent�� 0 	escscheme 	escScheme�� 0 escpath escPath�� 0 esctitle escTitle�� 0 escshorttitle escShortTitle�� 0 
esccontent 
escContent	 �P����d��o�������������������
�� 
docu
�� 
pnam
�� 
ppth
�� 
KnCS
�� 
KSdN
�� 
titl
�� 
btxt�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink�� �� ;�E�O*�k/E�O��,E�O��%E�O��,�%E�O*�k/�,E�O��,E�O��,�%��,%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%a %_ %E` OP� �������	 	!���� 0 linkmail linkMail�� ��	"�� 	"  ��~� 0 theprotocol theProtocol�~ 0 theapp theApp��  	  �}�|�{�z�y�x�w�v�u�t�s�r�q�p�} 0 theprotocol theProtocol�| 0 theapp theApp�{ 0 theselection theSelection�z 0 
themessage 
theMessage�y 0 theid theID�x "0 theshortsubject theShortSubject�w 0 
thesubject 
theSubject�v 0 
thecontent 
theContent�u 0 	thescheme 	theScheme�t 0 escid escID�s "0 escshortsubject escShortSubject�r 0 
escsubject 
escSubject�q 0 	escscheme 	escScheme�p 0 
esccontent 
escContent	! �o�n�m�l�k�j�i�hIKMO�g�f
�o 
slct
�n 
kocl
�m 
cobj
�l .corecnte****       ****
�k 
meid
�j 
subj
�i 
ctnt�h (0 encodeuricomponent encodeURIComponent�g 0 escapp escApp�f 0 thelink theLink�� �� :*�,E�O -�[��l kh ��,E�O��,E�O��%�%E�O��,E�[OY��O�E�UO*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O*�k+ 
E�O��%�%�%�%�%�%�%�%�%�%E` � �eV�d�c	#	$�b�e "0 linkaddressbook linkAddressBook�d �a	%�a 	%  �`�_�` 0 theprotocol theProtocol�_ 0 theapp theApp�c  	# 
�^�]�\�[�Z�Y�X�W�V�U�^ 0 theprotocol theProtocol�] 0 theapp theApp�\ 0 	thescheme 	theScheme�[ 0 allcontacts AllContacts�Z 0 one_contact  �Y 0 theid theID�X 0 thename theName�W 0 escid escID�V 0 escname escName�U 0 	escscheme 	escScheme	$ �j�T�S�R�Q�P��O��N�M���L�K
�T 
az48
�S 
cobj
�R 
nmbr
�Q 
ID  
�P 
pnam
�O .miscactvnull��� ��� null
�N .sysodlogaskr        TEXT�M (0 encodeuricomponent encodeURIComponent�L 0 escapp escApp�K 0 thelink theLink�b j� ;�E�O*�,E�O��-�,k  ��k/E�O��,E�O��,E�Y � *j O�j 
UUO*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%E�� �J��I�H	&	'�G�J 0 
linkitunes 
linkITunes�I �F	(�F 	(  �E�D�E 0 theprotocol theProtocol�D 0 theapp theApp�H  	& �C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�C 0 theprotocol theProtocol�B 0 theapp theApp�A 0 	thescheme 	theScheme�@ 0 theid theID�? 0 theshortname theShortName�> 0 thename theName�= 0 thetitle theTitle�< 0 thecomposer theComposer�; 0 thealbum theAlbum�: 0 	theartist 	theArtist�9 0 
thecontent 
theContent�8 0 	escscheme 	escScheme�7 0 escshortname escShortName�6 0 escname escName�5 0 esctitle escTitle�4 0 esccomposer escComposer�3 0 escalbum escAlbum�2 0 	escartist 	escArtist�1 0 
esccontent 
escContent	' <��0�/�.�-��,�+�*468:�)�����(�'
�0 
sele
�/ 
cobj
�. 
pPIS
�- 
pnam
�, 
pCmp
�+ 
pAlb
�* 
pArt�) (0 encodeuricomponent encodeURIComponent�( 0 escapp escApp�' 0 thelink theLink�G �� a�E�O*�,�k/�,E�O*�,�k/�,E�O��%�%E�O*�,�k/�,E�O*�,�k/�,E�O*�,�k/�,E�O*�,�k/�,E�O�%�%�%�%�%�%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E^ O*�k+ E^ O*�k+ E^ O��%�%�%�%a %�%a %] %a %_ %E` � �&��%�$	)	*�#�& 0 linkterminal linkTerminal�% �"	+�" 	+  �!� �! 0 theprotocol theProtocol�  0 theapp theApp�$  	) 
����������� 0 theprotocol theProtocol� 0 theapp theApp� 0 
thecontent 
theContent� 0 	thescheme 	theScheme� 0 theshortname theShortName� 0 thename theName� 0 	escscheme 	escScheme� 0 escshortname escShortName� 0 escname escName� 0 
esccontent 
escContent	* ���������������
� 
cwin
� 
tcnt
� 
pcnt
� 
pnam� (0 encodeuricomponent encodeURIComponent� 0 escerrorurl escErrorURL� 0 escapp escApp� 0 thelink theLink�# f� &*�k/ 	*�,�,E�UO�E�O*�k/�,E�O��%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%�%�%E�� ����	,	-�
� 0 
linkfinder 
linkFinder� �		.�	 	.  ��� 0 theprotocol theProtocol� 0 theapp theApp�  	, ������� ��������� 0 theprotocol theProtocol� 0 theapp theApp� 0 	thescheme 	theScheme� 0 theitem theItem� 0 thepath thePath� 0 theshorttitle theShortTitle�  0 thetitle theTitle�� 0 	escscheme 	escScheme�� 0 escpath escPath�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle	- /����������-��_ac����
�� 
sele
�� 
alis
�� 
psxp
�� .sysonfo4asfe        file
�� 
pnam�� (0 encodeuricomponent encodeURIComponent�� 0 escapp escApp�� 0 thelink theLink�
 a� %�E�O*�,�&E�O��,E�O�j �,E�O��%�%E�UO*�k+ E�O*�k+ E�O*�k+ E�O*�k+ E�O��%�%�%�%�%�%�%�%E�	  ��i����	/	0���� "0 linkapplication linkApplication�� ��	1�� 	1  ������ 0 theprotocol theProtocol�� 0 theapp theApp��  	/ �������������������������� 0 theprotocol theProtocol�� 0 theapp theApp�� 0 	thescheme 	theScheme��  0 appunsupported appUnsupported�� 0 thedoc theDoc�� 0 theshorttitle theShortTitle�� 0 thetitle theTitle�� 0 thepath thePath�� 0 	escscheme 	escScheme�� 0 escpath escPath�� 0 escshorttitle escShortTitle�� 0 esctitle escTitle	0 ����x�������������������������
�� 
capp
�� 
TEXT
�� 
docu��  ��  
�� 
pnam
�� 
ppth�� (0 encodeuricomponent encodeURIComponent�� 0 escerrorurl escErrorURL�� "0 escerrormessage escErrorMessage�� 0 escapp escApp�� 0 thelink theLink�� �*��&/ >�E�OfE�O *�k/E�W 
X  eE�O�f  ��,E�O��%�%E�O��,E�OPY hUO*�k+ 	E�O�e  ��%�%�%�%�%�%E�Y 0*�k+ 	E�O*�k+ 	E�O*�k+ 	E�O��%�%a %�%a %�%E� ascr  ��ޭ