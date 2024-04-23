<template>
	<div>

	<div class="container" :style='{"minHeight":"100vh","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230109/cc084b475fe046298dc937f1cc43f1a3.jpg) no-repeat center top / 100% 100%","display":"flex","width":"100%","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","justifyContent":"center"}'>
		<el-form class='rgs-form' v-if="pageFlag=='register'" :style='{"border":"1px solid #ccc","padding":"20px 2%","margin":"0","borderRadius":"10px","flexWrap":"wrap","background":"rgba(255,255,255,.9)","display":"flex","width":"750px","justifyContent":"center","height":"auto"}' ref="registerForm" :model="registerForm" :rules="rules">
			<div v-if="false" :style='{"margin":"0 0 10px 0","color":"rgba(64, 158, 255, 1)","textAlign":"center","width":"100%","lineHeight":"44px","fontSize":"20px","textShadow":"4px 4px 2px rgba(64, 158, 255, .5)"}'>USER / REGISTER</div>
			<div v-if="true" :style='{"width":"100%","margin":"0 auto 20px","lineHeight":"44px","fontSize":"20px","color":"#aa844c","textAlign":"center"}'>民宿管理系统注册</p></div>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="yonghuming">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>用户名：</div>
				<el-input v-model="registerForm.yonghuming"  placeholder="请输入用户名" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="mima">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>密码：</div>
				<el-input v-model="registerForm.mima" type="password" placeholder="请输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="mima">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>确认密码：</div>
				<el-input v-model="registerForm.mima2" type="password" placeholder="请再次输入密码" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="xingming">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>姓名：</div>
				<el-input v-model="registerForm.xingming"  placeholder="请输入姓名" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="xingbie">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>性别：</div>
                <el-select v-model="registerForm.xingbie" placeholder="请选择性别" >
                  <el-option
                      v-for="(item,index) in huiyuanxingbieOptions"
                      :key="index"
                      :label="item"
                      :value="item">
                  </el-option>
                </el-select>
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="touxiang">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>头像：</div>
                <file-upload
					tip="点击上传头像"
					action="file/upload"
					:limit="1"
					:multiple="true"
					:fileUrls="registerForm.touxiang?registerForm.touxiang:''"
					@change="huiyuantouxiangUploadChange"
				></file-upload>
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="shouji">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>手机：</div>
				<el-input v-model="registerForm.shouji"  placeholder="请输入手机" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="shenfenzheng">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>身份证：</div>
				<el-input v-model="registerForm.shenfenzheng"  placeholder="请输入身份证" />
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="huiyuanleixing">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>会员类型：</div>
                <el-select @change="huiyuanhuiyuanleixingChange" v-model="registerForm.huiyuanleixing" placeholder="请选择会员类型" :disabled="true">
                  <el-option
                      v-for="(item,index) in huiyuanhuiyuanleixingOptions"
                      :key="index"
                      :label="item"
                      :value="item">
                  </el-option>
                </el-select>
			</el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0 8%","margin":"0 auto 30px","height":"auto"}' v-if="tableName=='huiyuan'" prop="huiyuanzhekou">
				<div v-if="false" :style='{"width":"64px","lineHeight":"44px","fontSize":"14px","color":"rgba(64, 158, 255, 1)"}'>会员折扣：</div>
				<el-input v-model="registerForm.huiyuanzhekou" readonly placeholder="请输入会员折扣" />
			</el-form-item>
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"20px ","outline":"none","color":"#fff","borderRadius":"8px","background":"#cca162","display":"inline-block","width":"20%","fontSize":"16px","height":"44px"}' type="primary" @click="submitForm('registerForm')">注册</el-button>
			<el-button :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"20px ","outline":"none","color":"#fff","borderRadius":"8px","background":"#999999","display":"inline-block","width":"20%","fontSize":"16px","height":"44px"}' @click="resetForm('registerForm')">重置</el-button>
			<router-link :style='{"cursor":"pointer","padding":"0 10%","color":"rgba(159, 159, 159, 1)","textAlign":"right","display":"inline-block","width":"100%","lineHeight":"2","fontSize":"12px","textDecoration":"none"}' to="/login">已有账户登录</router-link>
		</el-form>
    </div>
  </div>
</div>
</template>

<script>

export default {
    //数据集合
    data() {
		return {
            pageFlag : '',
			tableName: '',
			registerForm: {
                xingbie: '',
                huiyuanleixing: '无会员',
                huiyuanzhekou: '1',
            },
			rules: {},
            huiyuanxingbieOptions: [],
            huiyuanhuiyuanleixingOptions: [],
		}
    },
	mounted() {
	},
    created() {
      this.pageFlag = this.$route.query.pageFlag;
      this.tableName = this.$route.query.role;
      if ('huiyuan' == this.tableName) {
        this.rules.yonghuming = [{ required: true, message: '请输入用户名', trigger: 'blur' }];
      }
      if ('huiyuan' == this.tableName) {
        this.rules.mima = [{ required: true, message: '请输入密码', trigger: 'blur' }];
      }
      if ('huiyuan' == this.tableName) {
        this.rules.xingming = [{ required: true, message: '请输入姓名', trigger: 'blur' }];
      }
        this.huiyuanxingbieOptions = "男,女".split(',');
      if ('huiyuan' == this.tableName) {
        this.rules.shouji = [{ required: true, validator: this.$validate.isMobileNotNull, trigger: 'blur' }];
      }
      if ('huiyuan' == this.tableName) {
        this.rules.shenfenzheng = [{ required: true, validator: this.$validate.isIdCardNotNull, trigger: 'blur' }];
      }
        this.$http({
          url: `option/huiyuanleixing/huiyuanleixing`,
          method: "get",
          params: {}
        }).then(({ data }) => {
          if (data && data.code === 0) {
              this.huiyuanhuiyuanleixingOptions = data.data;
          }
        });
      if ('huiyuan' == this.tableName) {
        this.rules.huiyuanzhekou = [{ required: true, validator: this.$validate.isNumber, trigger: 'blur' }];
      }
    },
    //方法集合
    methods: {
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
        // 下二随
      huiyuantouxiangUploadChange(fileUrls) {
          this.registerForm.touxiang = fileUrls.replace(new RegExp(this.$config.baseUrl,"g"),"");
      },
        huiyuanhuiyuanleixingChange () {
          this.$http({
            url: `follow/huiyuanleixing/huiyuanleixing?columnValue=`+ this.registerForm.huiyuanleixing,
            method: "get",
            params: {}
          }).then(({ data }) => {
            if (data && data.code === 0) {
            if(data.data.huiyuanzhekou){
              this.registerForm.huiyuanzhekou = data.data.huiyuanzhekou
            }
            }
          });
        },

        // 多级联动参数


      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            var url=this.tableName+"/register";
               if(`huiyuan` == this.tableName && this.registerForm.mima!=this.registerForm.mima2) {
                this.$message.error(`两次密码输入不一致`);
                return
               }
            this.$http.post(url, this.registerForm).then(res => {
              if (res.data.code === 0) {
                this.$message({
                  message: '注册成功',
                  type: 'success',
                  duration: 1500,
                  onClose: () => {
                    this.$router.push('/login');
                  }
                });
              } else {
                this.$message.error(res.data.msg);
              }
            });
          } else {
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.container {
		position: relative;
		background: url(http://codegen.caihongy.cn/20230109/cc084b475fe046298dc937f1cc43f1a3.jpg) no-repeat center top / 100% 100%;

		.el-date-editor.el-input {
			width: 100%;
		}
		
		.rgs-form .el-input /deep/ .el-input__inner {
						border: 2px solid #eee;
						border-radius: 8px;
						padding: 0 10px;
						outline: none;
						color: #333;
						width: 100%;
						font-size: 14px;
						height: 44px;
					}
		
		.rgs-form .el-select /deep/ .el-input__inner {
						border: 2px solid #eee;
						border-radius: 8px;
						padding: 0 10px;
						outline: none;
						color: #333;
						width: 288px;
						font-size: 14px;
						height: 44px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border: 2px solid #eee;
						border-radius: 8px;
						padding: 0 10px 0 30px;
						outline: none;
						color: #333;
						width: 288px;
						font-size: 14px;
						height: 44px;
					}
		
		.rgs-form .el-date-editor /deep/ .el-input__inner {
						border: 2px solid #eee;
						border-radius: 8px;
						padding: 0 10px 0 30px;
						outline: none;
						color: #333;
						width: 288px;
						font-size: 14px;
						height: 44px;
					}
		
		.rgs-form /deep/ .el-upload--picture-card {
			background: transparent;
			border: 0;
			border-radius: 0;
			width: auto;
			height: auto;
			line-height: initial;
			vertical-align: middle;
		}
		
		.rgs-form /deep/ .upload .upload-img {
		  		  border: 2px solid #eee;
		  		  cursor: pointer;
		  		  border-radius: 8px;
		  		  color: #333;
		  		  width: 80px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
		
		.rgs-form /deep/ .el-upload-list .el-upload-list__item {
		  		  border: 2px solid #eee;
		  		  cursor: pointer;
		  		  border-radius: 8px;
		  		  color: #333;
		  		  width: 80px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
		
		.rgs-form /deep/ .el-upload .el-icon-plus {
		  		  border: 2px solid #eee;
		  		  cursor: pointer;
		  		  border-radius: 8px;
		  		  color: #333;
		  		  width: 80px;
		  		  font-size: 32px;
		  		  line-height: 80px;
		  		  text-align: center;
		  		  height: 80px;
		  		}
	}
</style>
