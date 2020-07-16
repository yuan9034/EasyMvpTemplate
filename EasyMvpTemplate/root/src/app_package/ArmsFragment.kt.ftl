package ${fragmentPackageName}

import android.content.Intent
import android.os.Bundle
import android.os.Message
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

import com.jess.arms.base.BaseFragment
import com.jess.arms.di.component.AppComponent
import com.jess.arms.utils.ArmsUtils

import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R

<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
class ${pageName}Fragment : BaseFragment<${pageName}Presenter>() , ${pageName}Contract.View{
    companion object {
    fun newInstance():${pageName}Fragment {
        val fragment = ${pageName}Fragment()
        return fragment
    }
    }


    override fun setupFragmentComponent(appComponent:AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }

    override fun initView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?):View{
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
    }

    override fun initData(savedInstanceState:Bundle?) {

    }

    override fun setData(data:Any?) {

    }

    override fun showLoading() {

    }

    override fun hideLoading() {

    }

    override fun showMessage(message:String) {
        ArmsUtils.snackbarText(message)
    }

    override fun launchActivity(intent:Intent) {
        ArmsUtils.startActivity(intent)
    }

    override fun killMyself() {

    }
}
