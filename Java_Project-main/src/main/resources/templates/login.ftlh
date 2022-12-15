<#import "blocks/template.ftlh" as t>
<@t.template user>
    <div style="background: #295e29;border-radius: 50px;height: 450px;">
    <img src="/static/images/Logo.png"
         height="60" style = "float: left; margin-left: 375px">
    <h1 style="margin-left: 450px; color: white">Authorization</h1>
    <hr style="margin-top: 10px">
    <form action="/login " method="post">
        <div class="form-group">
            <label for="email" style = "margin-left: 360px; color: white">Email</label>
            <input type="email" class="form-control  <#if RequestParameters.error??>is-invalid</#if>" style = "margin-left: 360px; width: 35%; border-radius: 15px" id="email" name="username">
            <div id="email" class="invalid-feedback">
                Неверныя электронная почта
            </div>
        </div>
        <div class="form-group">
            <label for="password" style = "margin-left: 360px; color: white">Password</label>
            <input type="password" class="form-control <#if RequestParameters.error??>is-invalid</#if>" style = "margin-left: 360px; width: 35%; border-radius: 15px" id="password" name="password">
            <div id="password" class="invalid-feedback">
                Неверный пароль
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 35%;margin-left: 360px;margin-top: 30px; border-radius: 15px;border-color: white;background: #295e29" class="btn btn-dark">Sign In</button>
    </form>
    <hr>
    <h2 style="margin-left: 350px;font-family: ui-serif; color: white">Don't have an account yet?  <a href="/registration" style="  color: #d7c123;">SignUp</a></h2>
    </div>
</@t.template>