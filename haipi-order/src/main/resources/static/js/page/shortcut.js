const shortcut = {
    template: "<div class=\"shortcut\">\n" +
        "        <div class=\"centre\">\n" +
        "            <div class=\"fl\">\n" +
        "                <ul>\n" +
        "                    <li><i class=\"localtion\"></i><a href=\"#\">四川</a></li>\n" +
        "                    <li>&nbsp;&nbsp; 嗨，欢迎来嗨皮</li>\n" +
        "                </ul>\n" +
        "            </div>\n" +
        "            <div class=\"fr\">\n" +
        "                <ul>\n" +
        "                    <li v-if='user && user.username'>\n" +
        "                        欢迎您，<span class='style-color-red'>{{user.username}}</span> &nbsp;&nbsp;\n" +
        "                    </li>\n" +
        "                    <li v-else>\n" +
        "                        你好，<a href=\"http://www.haipi.com/login.html\">请登录</a> &nbsp;&nbsp;\n" +
        "                        <a href=\"http://www.haipi.com/register.html\" class=\"style-color-red\">免费注册</a>\n" +
        "                    </li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li>\n" +
        "                        <a href=\"#\">我的嗨皮</a>\n" +
        "                        <i class=\"triangle\"></i></li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li><a href=\"/order-pay.html\">我的订单</a></li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li>\n" +
        "                        <a href=\"#\">收藏夹</a>\n" +
        "                        <i class=\"triangle\"></i>\n" +
        "                    </li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li><a href=\"#\"><i class=\"icommon\"></i>手机版</a></li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li><a href=\"#\">嗨皮网</a></li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li>\n" +
        "                        <a href=\"#\">商家支持</a>\n" +
        "                        <i class=\"triangle\"></i>\n" +
        "                    </li>\n" +
        "                    <li class=\"spacer\"></li>\n" +
        "                    <li>\n" +
        "                        <i class=\"icommon\"></i>\n" +
        "                        <a href=\"#\">网站导航</a>\n" +
        "                        <i class=\"triangle\"></i>\n" +
        "                    </li>\n" +
        "                </ul>\n" +
        "            </div>\n" +
        "        </div>\n" +
        "    </div>",
    name: "shortcut",
    data() {
        return {
            user: null,
        }
    },
    created() {
        Hp.http.get("/auth/verify").then(resp => {
                this.user = resp.data;
            })

    }
}
export default shortcut;
