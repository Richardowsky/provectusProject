<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

<div>Books we have :</div>

<div class="mb-2">
    <button class="btn btn-outline-dark" type="submit"><a href="/buypage">Buy Books</a></button>
</div>
<div class="form-inline mb-3">
    <div class="form-group col-sm-6 ">
        <form method="get" action="main" class="form-inline ">
            <input type="text" name="filterAuthor" class="form-control " placeholder="author">
            <button class="btn btn-outline-dark ml-1 " type="submit">Find books by author</button>
        </form>
    </div>
</div>
<div class="form-inline mb-3 ">
    <div class="form-group col-sm-6 ">
        <form method="get" action="main" class="form-inline">
            <input type="text" name="filterGenre" class="form-control " placeholder="genre">
            <button class="btn btn-outline-dark ml-1" type="submit">Find books by genre</button>
        </form>
    </div>
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