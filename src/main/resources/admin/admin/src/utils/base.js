const base = {
    get() {
        return {
            url : "http://localhost:8080/B_BMS/",
            name: "B_BMS",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/B_BMS/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "民宿管理系统"
        } 
    }
}
export default base
