axios.defaults.baseURL = "http://api.haipi.com/api";
axios.defaults.timeout = 5000;
axios.defaults.withCredentials = true
baseUrl = "http://api.haipi.com/api";
window.QS
const Hp = {
    http: axios,

    /**
     * 对encodeURI()编码过的 URI 进行解码。并且获取其中的指定参数
     * @param name
     * @returns {*}
     */
    getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) {
            return decodeURI(r[2]);
        }
        return "";
    },
}
