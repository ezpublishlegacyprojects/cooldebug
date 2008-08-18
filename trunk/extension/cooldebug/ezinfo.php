<?php
// SOFTWARE NAME: eZ publish
// SOFTWARE RELEASE: 3.9.x
// COPYRIGHT NOTICE: Copyright (C) 2007 coolscreen.de - Ekkehard Dörre
// SOFTWARE LICENSE: GNU General Public License v2.0
// NOTICE: >
//   This program is free software; you can redistribute it and/or
//   modify it under the terms of version 2.0  of the GNU General
//   Public License as published by the Free Software Foundation.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
//
//   You should have received a copy of version 2.0 of the GNU General
//   Public License along with this program; if not, write to the Free
//   Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//   MA 02110-1301, USA.
//
//
// ## END COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
//


class cooldebugInfo
{
    function info()
    {
               return array( 'Name' => "http://www.coolscreen.de cooldebug ajax node tree browser  extension",
                      'Version' => "1.0.0",
                      'Copyright' => "2005-2007 Ekkehard Dörre - <a href='http://www.coolscreen.de/'>coolscreen.de</a>",
                      'License' => "GNU General Public License v2.0",
                      '1. Includes the following third-party software' => array( 'Name' => 'Dynamic Debug',
                                                                              'Version' => '0.9',
                                                                              'License' => 'GNU/LGPL - Sebastiaan van der Vliet - May 2005',
                                                                              'For more information' => 'http://ez.no/community/contribs/hacks/dynamic_debug',
                                                                              ),
                
                   '2. Includes the following third-party software' => array(   'Name' => 'Yui - Yahoo! UI Library (YUI)',
                                                                              'Version' => '2.2.0a',
                                                                              'License' => 'BSD License - Copyright (c) 2007, Yahoo! Inc.',
                                                                              'For more information' => 'http://developer.yahoo.com/yui/' )

                      );
}
}
?>
