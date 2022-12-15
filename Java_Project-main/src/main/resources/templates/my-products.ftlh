<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">My quorks</h1>
    <hr>
    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%; background-color: #295e29;"
       data-toggle="collapse" href="#collapseExample" role="button"
       aria-expanded="true" aria-controls="collapseExample">
        Add new quorks
    </a>
    <div class="collapse mb-3" id="collapseExample" style="">
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Name of the quorks</label>
                <input type="text" required class="form-control"
                       id="productName" name="title">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <div class="input-group mb-3">
                    <input type="number" required class="form-control" id="price" name="price">
                    <div class="input-group-append">
                        <span class="input-group-text">BYN</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="searchCity">Category</label>
                <select id="searchCity" required name="city" class="form-control">
                    <option value="">Сategory not selected</option>

                    <option value="Software">Software</option>
                    <option value="CEO">CEO</option>
                    <option value="Data">Data</option>
                    <option value="Web-development">Web-development</option>
                    <option value="HardWare">HardWare</option>
                    <option value="Design">Design</option>

                </select>
            </div>
            <div class="form-group">
                <label for="description">Product Description</label>
                <textarea required class="form-control" id="description" name="description"></textarea>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input required type="file" name="file1" id="file1">
                    <label class="custom-file-label" for="file1">The first photo of the quorks</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file2" id="file2">
                    <label class="custom-file-label" for="file2">The second photo for the quorks</label>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file3" id="file3">
                    <label class="custom-file-label" for="file3">The third photo for the quorks</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit" style="width: 100%; background-color: #295e29;" class="btn btn-dark">Add</button>
        </form>
    </div>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">
                    <div class="card-top">
                        <form action="/product/delete/${product.id}" method="post" style="background: #295e29">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-danger m-3">
                                delete
                            </button>
                        </form>
                    </div>
                    <img src="/images/${product.previewImageId}"
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