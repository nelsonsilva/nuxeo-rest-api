<#include "views/doc/macros.ftl"/>
<@extends src="baseapi.ftl">
<@block name="apis">
     {
      "path": "/path/{docPath}",
      "description": "Browse documents by their path",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getDocumentByPath",
          "responseClass":"Document",
          "type":"Document",
          <@params names = ["docpath","propheader"]/>,
          "summary":"Find a document by its path",
          "notes": "Only documents which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"PUT",
          "nickname":"updateDocumentByPath",
          "responseClass":"Document",
          <@params names = ["docpath","docbody","propheader"]/>,
          "summary":"Updates a document by its path",
          "notes": "Only documents which you have permission can be updated. Only the properties part of the document object is taken into account for update",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"DELETE",
          "nickname":"deleteDocumentByPath",
          "responseClass":"Document",
          <@params names = ["docpath"]/>,
          "summary":"Deletes a document by its path",
          "notes": "Only documents which you have permission can be deleted",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"POST",
          "nickname":"createDocumentByPath",
          "responseClass":"Document",
          <@params names = ["docpath","docbody","propheader"]/>,
          "summary":"Creates a document by its parent path",
          "notes": "",
          <#include "views/doc/errorresponses.ftl"/>
        }

      ]

    },
    {
      "path": "/repo/{repoId}/path/{docPath}",
      "description": "Browse documents by their path",
      "operations" : [
        {
          "method":"GET",
          "nickname":"getDocumentByPath",
          "responseClass":"Document",
          <@params names = ["repoid","docpath","propheader"]/>,
          "summary":"Find a document by its path",
          "notes": "Only documents which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"PUT",
          "nickname":"updateDocumentByPath",
          "responseClass":"Document",
          <@params names = ["repoid","docpath","docbody","propheader"]/>,
          "summary":"Updates a document by its path",
          "notes": "Only documents which you have permission can be updated. Only the properties part of the document object is taken into account for update",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"DELETE",
          "nickname":"deleteDocumentByPath",
          "responseClass":"Document",
          <@params names = ["repoid","docpath"]/>,
          "summary":"Deletes a document by its path",
          "notes": "Only documents which you have permission to see will be returned",
          <#include "views/doc/errorresponses.ftl"/>
        },
        {
          "method":"POST",
          "nickname":"createDocumentByPath",
          "responseClass":"Document",
          <@params names = ["repoid","docpath","docbody","propheader"]/>,
          "summary":"Creates a document by its parent path",
          "notes": "",
          <#include "views/doc/errorresponses.ftl"/>
        }
      ]
    }
</@block>

<@block name="models">
  <#include "views/doc/datatypes/document.ftl"/>
</@block>
</@extends>