<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

<h5>Admin mode :</h5>
    <form class="form-inline ml-2">

 <button class="btn btn-outline-dark form-inline" type="submit"><a href="/clientlist">Client List</a></button>
        <@l.logout/>
    </form>
<div>
    <form action="/newbook" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Id : </label>
            <div class="col-sm-5"><input type="text" name="id" class="form-control" placeholder="book id"/>
            </div></div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Name : </label>
            <div class="col-sm-5"><input type="text" name="name" class="form-control" placeholder="book name"/>
            </div></div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Description :</label>
            <div class="col-sm-5"><input type="text" name="description" class="form-control" placeholder="book description"/>
            </div></div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Author : </label>
            <div class="col-sm-5"><input type="text" name="author" class="form-control" placeholder="book author"/>
            </div></div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Genge :</label>
            <div class="col-sm-5"><input type="text" name="genre" class="form-control" placeholder="book genre"/>
            </div></div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Price :</label>
            <div class="col-sm-5"><input type="number" name="price" class="form-control" placeholder="book price"/>
            </div></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-outline-dark" type="submit">Input new book</button>
    </form>

</div>


<form>
<table class="table table-hover mb 3">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">Name</th>
        <th scope="col">Description</th>
        <th scope="col">Author</th>
        <th scope="col">Genre</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
<tbody>
<tr>
 <#list books as book>
     <th scope="row"><b>${book.id}</b></th>
     <td><span>${book.name}</span></th>
     <td><span>${book.description}</span></td>
     <td><span>${book.author}</span></td>
     <td><span>${book.genre}</span></td>
     <td><b>${book.price}</b></td>
 </tr></tbody>
 <#else>
No Books
 </#list>
</table>
</form>

</@c.page>