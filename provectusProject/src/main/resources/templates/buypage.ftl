<#import "parts/common.ftl" as c>

<@c.page>
<div>
    Fill in all the fields and select choose books:
</div>
<form action="/buypage" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Name : </label>
        <div class="col-sm-5"><input type="text" name="name" class="form-control" placeholder="First name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> SurName : </label>
        <div class="col-sm-5"><input type="text" name="surname" class="form-control" placeholder="Last name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Address : </label>
        <div class="col-sm-5"><input type="text" name="address" class="form-control" placeholder="Address"/>
        </div>
    </div>
<div class="form-group row">
    <label class="col-sm-2 col-form-label"> Book : </label>
    <div class="col-sm-5"><input type="text" name="book" class="form-control" placeholder="Book"/>
    </div>
</div>
<div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div><input class="btn btn-outline-dark mb-3" type="submit" value="Buy"/></div>
    <div>
        <button class="btn btn-outline-dark " type="submit"><a href="/main">Back</a></button>
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


</form>



</@c.page>