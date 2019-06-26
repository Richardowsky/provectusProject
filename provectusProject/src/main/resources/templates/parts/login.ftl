<#macro login path>
<form action="${path}" method="post">
    <h5> Admin roots</h5>

    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Admin :</label>
        <div class="col-sm-5">
            <input type="text" name="username" class="form-control" placeholder="login"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password:</label>
        <div class="col-sm-5">
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div class="mb-2">
        <button class="btn btn-outline-dark"  type="submit"><a href="/newbook">Sign In</a></button>
    </div>

</form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" class="btn btn-outline-dark" value="Sign Out"/>
    </form>
</#macro>