<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="display: inline-flex">
    <h1 style="text-align: left">Profile</h1>
    <#if user.isAdmin()>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 100%;margin-left: 800px;margin-top: 10px;border-radius: 15px"
           href="/admin">
            Admin panel
        </a><br>
    </#if>
    </div>
    <hr>
    <br>
    <div style="text-align: left">
        <img src="/static/images/avatar.png"
                height="120" style = "float: left; border-radius: 70px;border: 2px solid;">
        <div style = "margin-left: 170px">
        <h2>${user.name}</h2>
        <br>
        Emails: <b>${user.email}</b>
        <br>
        Phone number: <b>${user.phoneNumber}</b>
        <br>
        </div>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit" style="text-align: center; width: 10%; margin-top: 60px; margin-left: -120px; border-radius: 17px" class="btn btn-danger mb-2">
                Exit
            </button>
        </form>
        <br>
        <br>
        <a class="btn btn-dark mb-3" style="text-align: center; width: 30%; padding: 5px; margin-left: 400px; background-color: #016a01; border-color: white;border-radius: 20px"
           href="/my/products">
            Services offered
        </a>
    </div>
</@t.template>