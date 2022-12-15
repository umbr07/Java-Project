<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Search for quorks</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-10">
                <label for="searchWord">Search by ads</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 15%;background-color: #295e29;height: 38px;margin-top: 31px;" type="submit" class="btn btn-dark">Search</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img style = "height: 250px" src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body" style="background: #295e29">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} BYN</p>
                    </div>
                    <div class="card-footer" style="background: #295e29">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Not found</h1>
        </#list>
    </div>
</@t.template>