<#include "views/doc/macros.ftl"/>
<@extends src="baseapi.ftl">
<@block name="apis">
 {
  "path": "/directory/{directoryName}",
  "description": "Get directory entries",
  "operations" : [
    {
      "method":"GET",
      "nickname":"getDirectoryEntries",
      "responseClass":"DirectoryEntryList",
      <@params names = ["directoryname","paging"]/>,
      "summary":"Get directory entries",
      "notes": "",
      <#include "views/doc/errorresponses.ftl"/>
    },
    {
      "method":"POST",
      "nickname":"createDirectoryEntry",
      "responseClass":"DirectoryEntry",
      <@params names = ["directoryname","directorybody"]/>,
      "summary":"Creates a directory entry",
      "notes": "",
      <#include "views/doc/errorresponses.ftl"/>
    }
  ]
},

{
  "path": "/directory/{directoryName}/{entryId}",
  "description": "Operation on directory entry",
  "operations" : [
    {
      "method":"GET",
      "nickname":"getDirectoryEntry",
      "responseClass":"DirectoryEntry",
      "type":"Document",
      <@params names = ["directoryname","entryid"]/>,
      "summary":"Get a directory entry",
      "notes": "",
      <#include "views/doc/errorresponses.ftl"/>
    },
    {
      "method":"PUT",
      "nickname":"updateDirectoryEntry",
      "responseClass":"DirectoryEntry",
      "type":"Document",
      <@params names = ["directoryname","entryid","directorybody"]/>,
      "summary":"Update a directory entry",
      "notes": "",
      <#include "views/doc/errorresponses.ftl"/>
    },
    {
      "method":"DELETE",
      "nickname":"getDirectoryEntry",
      "type":"Document",
      <@params names = ["directoryname","entryid"]/>,
      "summary":"Delete a directory entry",
      "notes": "",
      <#include "views/doc/errorresponses.ftl"/>
    }


  ]

}

</@block>

<@block name="models">
  <#include "views/doc/datatypes/directory.ftl"/>
</@block>
</@extends>