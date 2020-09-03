importScripts('../comment.js')
const haipiTop = {
    template:
        "<div>\n" +
        "<shortcut/>\n" +
        "<div class=\"header-container\">\n" +
        "    <!--        header start-->\n" +
        "        <div class=\"header centre\">\n" +
        "            <!--        logo-->\n" +
        "            <div class=\"logo\">\n" +
        "                <h1><a href=\"/index.html\" title=\"嗨皮\">嗨皮</a></h1>\n" +
        "            </div>\n" +
        "            <!--        搜索-->\n" +
        "            <div class=\"search\">\n" +
        "                <input type=\"text\" class=\"search-text fl\" placeholder=\"搜索 嗨皮/商品\">\n" +
        "                <button class=\"search-btn fl\">搜索</button>\n" +
        "            </div>\n" +
        "            <!--        热词-->\n" +
        "            <div class=\"keywords\">\n" +
        "                <a href=\"#\" class=\"style-color-red\">购机赠优惠</a>\n" +
        "                <a href=\"#\" class=\"style-color-red\">0元设计</a>\n" +
        "                <a href=\"#\">猪肉</a>\n" +
        "                <a href=\"#\">手机</a>\n" +
        "                <a href=\"#\">补水面膜</a>\n" +
        "                <a href=\"#\">品质家纺</a>\n" +
        "                <a href=\"#\">直降3000</a>\n" +
        "                <a href=\"#\">iPhone</a>\n" +
        "                <a href=\"#\">每100-50</a>\n" +
        "            </div>\n" +
        "            <!--        购物车-->\n" +
        "            <div class=\"shopcar\">\n" +
        "                <i class=\"shopcar-icon\"></i>\n" +
        "                <i class=\"count\" >{{cartsize}}</i>\n" +
"                        <a href='http://www.haipi.com/mycart.html' class=\"style-color-red\">我的购物车</a>\n" +
        "            </div>\n" +
        "        </div>\n" +
        "    <!--        header end-->\n" +
        "\n" +
        "    <!--        nav start-->\n" +
        "        <div class=\"nav\">\n" +
        "            <div class=\"centre\">\n" +
        "    <!--            dropdown category-->\n" +
        "                <div class=\"dropdown fl\">\n" +
        "                    <div class=\"dt\">全部商品分类</div>\n" +
        "                    <div class=\"dd\"  style=\"display: none\">\n" +
        "                        <ul>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">美妆</a>\n" +
        "                                /<a href=\"#\">个人护理</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">女鞋</a>\n" +
        "                                /<a href=\"#\">男鞋</a>\n" +
        "                                /<a href=\"#\">箱包</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">女装</a>\n" +
        "                                /<a href=\"#\">内衣</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">男装</a>\n" +
        "                                /<a href=\"#\">运动户外</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">腕表</a>\n" +
        "                                /<a href=\"#\">眼镜</a>\n" +
        "                                /<a href=\"#\">珠宝饰品</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">手机</a>\n" +
        "                                /<a href=\"#\">数码</a>\n" +
        "                                /<a href=\"#\">电脑办公</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">零食</a>\n" +
        "                                /<a href=\"#\">茶酒</a>\n" +
        "                                /<a href=\"#\">进口食品</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">大家电</a>\n" +
        "                                /<a href=\"#\">生活电器</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">汽车</a>\n" +
        "                                /<a href=\"#\">配件</a>\n" +
        "                                /<a href=\"#\">用品</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">家纺</a>\n" +
        "                                /<a href=\"#\">家饰</a>\n" +
        "                                /<a href=\"#\">鲜花</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">医药保健</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">厨具</a>\n" +
        "                                /<a href=\"#\">收纳</a>\n" +
        "                                /<a href=\"#\">宠物</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">图书音像</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">家用电器</a>\n" +
        "                            </li>\n" +
        "                            <li class=\"category-item\">\n" +
        "                                <a href=\"#\">手机</a>\n" +
        "                                /<a href=\"#\">运营商</a>\n" +
        "                                /<a href=\"#\">数码</a>\n" +
        "                            </li>\n" +
        "                        </ul>\n" +
        "                    </div>\n" +
        "                </div>\n" +
        "    <!--            nav-->\n" +
        "                <div class=\"nav-items fl\">\n" +
        "                    <ul>\n" +
        "                        <li><a href=\"#\" class=\"style-color-red style-font-b\">秒杀</a></li>\n" +
        "                        <li><a href=\"#\" class=\"style-color-red style-font-b\">嗨皮会员</a></li>\n" +
        "                        <li><a href=\"#\">优惠卷</a></li>\n" +
        "                        <li><a href=\"#\">嗨皮超市</a></li>\n" +
        "                        <li><a href=\"#\">品牌闪购</a></li>\n" +
        "                        <li><a href=\"#\">拍卖</a></li>\n" +
        "                        <li><a href=\"#\">嗨皮生鲜</a></li>\n" +
        "                        <li><a href=\"#\">嗨皮金融</a></li>\n" +
        "                    </ul>\n" +
        "                </div>\n" +
        "            </div>\n" +
        "        </div>\n" +
        "    <!--        nav end-->\n" +
        "    </div>\n" +
        "    </div>",
    name:'haipi-top',
    data() {
        return {
            cartsize: 0,
        }
    },

    methods: {
    },
    created() {
        Hp.http.get("/cart/size/").then(res => {
            this.cartsize = res.data;
        })
    },
    components:{
        shortcut: () => import("./shortcut.js")
    }
}
export default haipiTop;
