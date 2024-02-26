<template>
<div :style='{"width":"1200px","padding":"120px 7% 100px","margin":"0px auto","position":"relative","background":"url(http://codegen.caihongy.cn/20230109/138a4d606eae4a168810cef229969885.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/b95aeae1c1294f398aefb7c6cd5b16de.png) no-repeat center top,url(http://codegen.caihongy.cn/20230109/5ffc803e6682418eb7f0b09a98e35527.png) no-repeat center bottom,#faf0e6"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="110px"
    >
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="预订单号" prop="yudingdanhao">
              <el-input v-model="ruleForm.yudingdanhao" placeholder="预订单号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="房间名称" prop="fangjianmingcheng">
            <el-input v-model="ruleForm.fangjianmingcheng" 
                placeholder="房间名称" clearable readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="房间类型" prop="fangjianleixing">
            <el-input v-model="ruleForm.fangjianleixing" 
                placeholder="房间类型" clearable readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="房间图片" v-if="type!='cross' || (type=='cross' && !ro.fangjiantupian)" prop="fangjiantupian">
            <file-upload
            tip="点击上传房间图片"
            action="file/upload"
            :limit="3"
            :multiple="true"
            :fileUrls="ruleForm.fangjiantupian?ruleForm.fangjiantupian:''"
            @change="fangjiantupianUploadChange"
            ></file-upload>
          </el-form-item>
            <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' class="upload" v-else label="房间图片" prop="fangjiantupian">
                <img v-if="ruleForm.fangjiantupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.fangjiantupian.split(',')[0]" width="100" height="100">
                <img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.fangjiantupian.split(',')" :src="baseUrl+item" width="100" height="100">
            </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="预定日期" prop="yudingriqi" >
              <el-date-picker
                  format="yyyy 年 MM 月 dd 日"
                  value-format="yyyy-MM-dd"
                  v-model="ruleForm.yudingriqi" 
                  type="date"
                  placeholder="预定日期">
              </el-date-picker> 
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="入住时间" prop="ruzhushijian" >
              <el-date-picker
                  value-format="yyyy-MM-dd HH:mm:ss"
                  v-model="ruleForm.ruzhushijian" 
                  type="datetime"
                  placeholder="入住时间">
              </el-date-picker>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="入住人数" prop="ruzhurenshu">
            <el-input v-model="ruleForm.ruzhurenshu" 
                placeholder="入住人数" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="房间价格" prop="fangjianjiage">
            <el-input v-model="ruleForm.fangjianjiage" 
                placeholder="房间价格" clearable readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="入住天数" prop="ruzhutianshu">
            <el-input v-model="ruleForm.ruzhutianshu" 
                placeholder="入住天数" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="会员折扣" prop="huiyuanzhekou">
            <el-input v-model="ruleForm.huiyuanzhekou" 
                placeholder="会员折扣" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="订单金额" prop="dingdanjine">
              <el-input v-model="dingdanjine" placeholder="订单金额" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="用户名" prop="yonghuming">
            <el-input v-model="ruleForm.yonghuming" 
                placeholder="用户名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="姓名" prop="xingming">
            <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="手机" prop="shouji">
            <el-input v-model="ruleForm.shouji" 
                placeholder="手机" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="身份证" prop="shenfenzheng">
            <el-input v-model="ruleForm.shenfenzheng" 
                placeholder="身份证" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","boxShadow":"0 2px 0 #efe4d4","margin":"0 0 10px"}' label="会员类型" prop="huiyuanleixing">
            <el-input v-model="ruleForm.huiyuanleixing" 
                placeholder="会员类型" clearable ></el-input>
          </el-form-item>

      <el-form-item :style='{"padding":"0","textAlign":"center","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","background":"#cca162","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"0px solid rgba(64, 158, 255, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"4px","background":"#009688","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        baseUrl: '',
        ro:{
            yudingdanhao : false,
            fangjianmingcheng : false,
            fangjianleixing : false,
            fangjiantupian : false,
            yudingriqi : false,
            ruzhushijian : false,
            ruzhurenshu : false,
            fangjianjiage : false,
            ruzhutianshu : false,
            huiyuanzhekou : false,
            dingdanjine : false,
            yonghuming : false,
            xingming : false,
            shouji : false,
            shenfenzheng : false,
            huiyuanleixing : false,
            shhf : false,
            ispay : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          yudingdanhao: this.getUUID(),
          fangjianmingcheng: '',
          fangjianleixing: '',
          fangjiantupian: '',
          yudingriqi: '',
          ruzhushijian: '',
          ruzhurenshu: '',
          fangjianjiage: '',
          ruzhutianshu: '',
          huiyuanzhekou: '',
          dingdanjine: '',
          yonghuming: '',
          xingming: '',
          shouji: '',
          shenfenzheng: '',
          huiyuanleixing: '',
          ispay: '',
        },
        rules: {
          yudingdanhao: [
          ],
          fangjianmingcheng: [
          ],
          fangjianleixing: [
          ],
          fangjiantupian: [
          ],
          yudingriqi: [
          ],
          ruzhushijian: [
          ],
          ruzhurenshu: [
            { required: true, message: '入住人数不能为空', trigger: 'blur' },
          ],
          fangjianjiage: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          ruzhutianshu: [
            { required: true, message: '入住天数不能为空', trigger: 'blur' },
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          huiyuanzhekou: [
            { validator: this.$validate.isNumber, trigger: 'blur' },
          ],
          dingdanjine: [
            { validator: this.$validate.isNumber, trigger: 'blur' },
          ],
          yonghuming: [
          ],
          xingming: [
          ],
          shouji: [
            { validator: this.$validate.isMobile, trigger: 'blur' },
          ],
          shenfenzheng: [
            { validator: this.$validate.isIdCard, trigger: 'blur' },
          ],
          huiyuanleixing: [
          ],
          shhf: [
          ],
          ispay: [
          ],
        },
      };
    },
    computed: {


        dingdanjine:{
            get: function () {
                return 1*this.ruleForm.fangjianjiage*this.ruleForm.ruzhutianshu*this.ruleForm.huiyuanzhekou
            }
        },

    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
      this.ruleForm.yudingriqi = this.getCurDate()
      this.ruleForm.ruzhushijian = this.getCurDateTime()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='yudingdanhao'){
              this.ruleForm.yudingdanhao = obj[o];
              this.ro.yudingdanhao = true;
              continue;
            }
            if(o=='fangjianmingcheng'){
              this.ruleForm.fangjianmingcheng = obj[o];
              this.ro.fangjianmingcheng = true;
              continue;
            }
            if(o=='fangjianleixing'){
              this.ruleForm.fangjianleixing = obj[o];
              this.ro.fangjianleixing = true;
              continue;
            }
            if(o=='fangjiantupian'){
              this.ruleForm.fangjiantupian = obj[o].split(",")[0];
              this.ro.fangjiantupian = true;
              continue;
            }
            if(o=='yudingriqi'){
              this.ruleForm.yudingriqi = obj[o];
              this.ro.yudingriqi = true;
              continue;
            }
            if(o=='ruzhushijian'){
              this.ruleForm.ruzhushijian = obj[o];
              this.ro.ruzhushijian = true;
              continue;
            }
            if(o=='ruzhurenshu'){
              this.ruleForm.ruzhurenshu = obj[o];
              this.ro.ruzhurenshu = true;
              continue;
            }
            if(o=='fangjianjiage'){
              this.ruleForm.fangjianjiage = obj[o];
              this.ro.fangjianjiage = true;
              continue;
            }
            if(o=='ruzhutianshu'){
              this.ruleForm.ruzhutianshu = obj[o];
              this.ro.ruzhutianshu = true;
              continue;
            }
            if(o=='huiyuanzhekou'){
              this.ruleForm.huiyuanzhekou = obj[o];
              this.ro.huiyuanzhekou = true;
              continue;
            }
            if(o=='dingdanjine'){
              this.ruleForm.dingdanjine = obj[o];
              this.ro.dingdanjine = true;
              continue;
            }
            if(o=='yonghuming'){
              this.ruleForm.yonghuming = obj[o];
              this.ro.yonghuming = true;
              continue;
            }
            if(o=='xingming'){
              this.ruleForm.xingming = obj[o];
              this.ro.xingming = true;
              continue;
            }
            if(o=='shouji'){
              this.ruleForm.shouji = obj[o];
              this.ro.shouji = true;
              continue;
            }
            if(o=='shenfenzheng'){
              this.ruleForm.shenfenzheng = obj[o];
              this.ro.shenfenzheng = true;
              continue;
            }
            if(o=='huiyuanleixing'){
              this.ruleForm.huiyuanleixing = obj[o];
              this.ro.huiyuanleixing = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
            if((json.huiyuanzhekou!=''&&json.huiyuanzhekou) || json.huiyuanzhekou==0){
                this.ruleForm.huiyuanzhekou = json.huiyuanzhekou
            }
            if((json.yonghuming!=''&&json.yonghuming) || json.yonghuming==0){
                this.ruleForm.yonghuming = json.yonghuming
            }
            if((json.xingming!=''&&json.xingming) || json.xingming==0){
                this.ruleForm.xingming = json.xingming
            }
            if((json.shouji!=''&&json.shouji) || json.shouji==0){
                this.ruleForm.shouji = json.shouji
            }
            if((json.shenfenzheng!=''&&json.shenfenzheng) || json.shenfenzheng==0){
                this.ruleForm.shenfenzheng = json.shenfenzheng
            }
            if((json.huiyuanleixing!=''&&json.huiyuanleixing) || json.huiyuanleixing==0){
                this.ruleForm.huiyuanleixing = json.huiyuanleixing
            }
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('yudingjilu/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

          this.ruleForm.dingdanjine = this.dingdanjine
        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('yudingjilu/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('yudingjilu/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('yudingjilu/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
      fangjiantupianUploadChange(fileUrls) {
          this.ruleForm.fangjiantupian = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");;
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 110px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 110px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #e5d9c6;
	  border-radius: 4px;
	  padding: 0 12px;
	  outline: none;
	  color: #333;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #e5d9c6;
	  border-radius: 4px;
	  padding: 0 10px;
	  outline: none;
	  color: #333;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #e5d9c6;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  outline: none;
	  color: #333;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px solid #e5d9c6;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #333;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px solid #e5d9c6;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #333;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px solid #e5d9c6;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #333;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #e5d9c6;
	  border-radius: 4px;
	  padding: 12px;
	  outline: none;
	  color: #333;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
