<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

<@l.login "/newbook" />
<div class="mb-2">
<div><button class="btn btn-outline-dark" type="submit"><a href="/main">Back</a></button></div></div>
</@c.page>