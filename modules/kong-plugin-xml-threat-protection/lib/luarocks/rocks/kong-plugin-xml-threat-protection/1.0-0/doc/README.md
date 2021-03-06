# XML Threat Protection plugin for Kong
[![][t1t-logo]][Trust1Team-url]

Kong is a scalable, open source API Layer *(also known as an API Gateway, or
API Middleware)*. Kong was originally built at [Mashape][mashape-url] to
secure, manage and extend over [15,000 APIs &
Microservices](http://stackshare.io/mashape/how-mashape-manages-over-15000-apis-and-microservices)
for its API Marketplace, which generates billions of requests per month.

Backed by the battle-tested **NGINX** with a focus on high performance, Kong
was made available as an open-source platform in 2015. Under active
development, Kong is now used in production at hundreds of organizations from
startups, to large enterprises and government departments.

[Website Trust1Team][Trust1Team-url]

[Website Kong][kong-url]

## Summary

Address XML vulnerabilities and minimize attacks on your API. Optionally, detect XML payload attacks based on configured limits. Screen against XML threats using the following approaches:

* Validate messages against an XML schema (.xsd)
* Evaluate message content for specific blacklisted keywords or patterns
* Detect corrupt or malformed messages before those messages are parsed

Only works from Kong 0.8.0

## Roadmap

TBD

## Development

## Configuration Parameters

| key                                          | default value | required | description                                                                                                                       |
|----------------------------------------------|---------------|----------|-----------------------------------------------------------------------------------------------------------------------------------|
| name_limits_element                          | 0             | FALSE    | Specifies a limit on the maximum number of characters permitted in any element name in the XML document.                          |
| name_limits_attribute                        | 0             | FALSE    | Specifies a limit on the maximum number of characters permitted in any attribute name in the XML document.                        |
| name_limits_namespace_prefix                 | 0             | FALSE    | Specifies a limit on the maximum number of characters permitted in the namespace prefix in the XML document.                      |
| name_limits_processing_instruction_target    | 0             | FALSE    | Specifies a limit on the maximum number of characters permitted in the target of any processing instructions in the XML document. |
| structure_limits_node_depth                  | 0             | FALSE    | Specifies the maximum node depth allowed in the XML.                                                                              |
| structure_limits_attribute_count_per_element | 0             | FALSE    | Specifies a limit on the maximum number of characters permitted in any element name in the XML document.                          |
| structure_limits_namespace_count_per_element | 0             | FALSE    | Specifies the maximum number of namespace definitions allowed for any element.                                                    |
| structure_limits_child_count                 | 0             | FALSE    | Specifies the maximum number of child elements allowed for any element.                                                           |
| value_limits_text                            | 0             | FALSE    | Specifies a character limit for any text nodes present in the XML document.                                                       |
| value_limits_attribute                       | 0             | FALSE    | Specifies a character limit for any attribute values present in the XML document.                                                 |
| value_limits_namespace_uri                   | 0             | FALSE    | Specifies a character limit for any namespace URIs present in the XML document.                                                   |
| value_limits_comment                         | 0             | FALSE    | Specifies a character limit for any comments present in the XML document.                                                         |
| value_limits_processing_instruction_data     | 0             | FALSE    | Specifies a character limit for any processing instruction text present in the XML document.                                      |

## Errors

The XMLThreatProtection Policy types defines the following error messages:

| Message                                                                                |
|----------------------------------------------------------------------------------------|
| XMLThreatProtection[NodeDepthExceeded]: Node depth exceeded.                           |
| XMLThreatProtection[AttrCountExceeded]: Attribute count exceed.                        |
| XMLThreatProtection[ChildCountExceeded]: Children count exceeded.                      |
| XMLThreatProtection[NSCountExceeded]: Namespace count exceeded.                        |
| XMLThreatProtection[ElemNameExceeded]: Element name length exceeded.                   |
| XMLThreatProtection[AttrNameExceeded]: Attribute name length exceeded.                 |
| XMLThreatProtection[AttrValueExceeded]: Attribute value length exceeded.               |
| XMLThreatProtection[NSPrefixExceeded]: Namespace prefix length exceeded.               |
| XMLThreatProtection[NSURIExceeded]: Namespace uri length exceeded.                     |
| XMLThreatProtection[PITargetExceeded]: Processing Instruction target length exceeded.  |
| XMLThreatProtection[PIDataExceeded]: Processing Instruction data length exceeded.      |
| XMLThreatProtection[CommentExceeded]: Comment length exceeded.                         |
| XMLThreatProtection[TextExceeded]: Text length exceeded.                               |
| XMLThreatProtection[SourceUnavailable]: Source is not available.                       |
| XMLThreatProtection[NonMessageVariable]: Variable does not resolve to a Message.       |
| XMLThreatProtection[ExecutionFailed]: Execution failed.                                |


## License

```
This file is part of the Trust1Team(R) sarl project.
 Copyright (c) 2014 Trust1Team sarl
 Authors: Trust1Team development

 
This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License version 3
 as published by the Free Software Foundation with the addition of the
 following permission added to Section 15 as permitted in Section 7(a):
 FOR ANY PART OF THE COVERED WORK IN WHICH THE COPYRIGHT IS OWNED BY Trust1T,
 Trust1T DISCLAIMS THE WARRANTY OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.

 This program is distributed in the hope that it will be useful, but
 WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU Affero General Public License for more details.
 You should have received a copy of the GNU Affero General Public License
 along with this program; if not, see http://www.gnu.org/licenses or write to
 the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 Boston, MA, 02110-1301 USA.

 The interactive user interfaces in modified source and object code versions
 of this program must display Appropriate Legal Notices, as required under
 Section 5 of the GNU Affero General Public License.

 
You can be released from the requirements of the Affero General Public License
 by purchasing
 a commercial license. Buying such a license is mandatory if you wish to develop commercial activities involving the Trust1T software without
 disclosing the source code of your own applications.
 Examples of such activities include: offering paid services to customers as an ASP,
 Signing PDFs on the fly in a web application, shipping OCS with a closed
 source product...
Irrespective of your choice of license, the T1T logo as depicted below may not be removed from this file, or from any software or other product or service to which it is applied, without the express prior written permission of Trust1Team sarl. The T1T logo is an EU Registered Trademark (n° 12943131).
```

[kong-url]: https://getkong.org/
[Trust1Team-url]: http://trust1team.com
[t1t-logo]: http://imgur.com/lukAaxx.png
[jwt-up-doc]: https://trust1t.atlassian.net/wiki/pages/viewpage.action?pageId=74547210