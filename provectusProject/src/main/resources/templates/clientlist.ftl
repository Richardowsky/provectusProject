<#import "parts/common.ftl" as c>

<@c.page>

<button class="btn btn-outline-dark form-inline" type="submit"><a href="/newbook">Back</a></button>

<table class="table table-hover mb 3">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">First Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Address</th>
        <th scope="col">Books</th>
    </tr>
    </thead>
<tbody>
<tr>
<#list clients as client>
    <th scope="row"> <b>${client.id}</b></th>
    <td><span>${client.name}</span></td>
    <td><span>${client.surname}</span></td>
    <td> <span>${client.address}</span></td>
    <td> <span>${client.book}</span></td>
</tr></tbody>
<#else>
No Clients
</#list>
</table>


</@c.page>