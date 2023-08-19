<%@taglib prefix="layout" uri="http://callidora.lk/jsp/template-inheritance" %>
<layout:extends name="base">
    <layout:put block="contents">
<div class="modal-content">
    <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-medium text-left">Sign in</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body mx-3">
        <div class="md-form mb-4">
            <input type="text" id="LoginForm-name" class="form-control validate" placeholder="Your name">
        </div>
        <div class="md-form mb-4">
            <input type="password" id="LoginForm-pass" class="form-control validate" placeholder="Your password">
        </div>
        <div class="checkbox-link d-flex justify-content-between">
            <div class="left-col">
                <input type="checkbox" id="remember_me"><label for="remember_me">Remember Me</label>
            </div>
            <div class="right-col"><a href="#">Forget Password?</a></div>
        </div>
    </div>

    <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-primary">Sign in</button>
    </div>
</div>
    </layout:put>
</layout:extends>
