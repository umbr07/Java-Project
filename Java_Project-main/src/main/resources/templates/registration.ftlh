<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="background: #295e29;border-radius: 50px;height: 550px;">
    <h1 style="text-align: center; color: white">Registration</h1>
    <hr>
    <form action="/registration" method="post">
        <div class="form-group" style = "margin-left: 380px">
            <label for="name" style="color: white">User name <span style = "color: red">*</span></label>
            <input type="text" class="form-control" required id="name" name="name" style = "width: 50%; border-radius: 15px">
        </div>
        <div class="form-group"  style = "margin-left: 380px">
            <label for="email" style="color: white">Email <span style = "color: red">*</span></label>
            <input type="email" class="form-control" id="email" required name="email" style = "width: 50%;border-radius: 15px">
        </div>
        <div class="form-group" style = "margin-left: 380px">
            <label for="phoneNumber" style="color: white">Phone number <span style = "color: red">*</span></label>
            <input type="text" class="form-control" id="phoneNumber" required name="phoneNumber" style = "width: 50%;border-radius: 15px">
        </div>
        <div class="form-group" style = "margin-left: 380px">
            <label for="password" style="color: white">Password <span style = "color: red">*</span></label>
            <input type="password" class="form-control" id="password" required name="password" style = "width: 50%;border-radius: 15px">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 33%; margin-left: 380px; margin-top: 60px; border-radius: 15px; border-color: white; background: #295e29; border-width: 2px" class="btn btn-dark">Sign Up</button>
    </form>
    </div>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</@t.template>