package ${ativityPackageName}

import android.os.Bundle
import ${packageName}.R
import com.xdja.easymvp.base.BaseActivity
import org.koin.android.ext.android.get
import org.koin.androidx.scope.lifecycleScope
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

<#import "root://activities/EasyMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
class ${pageName}Activity : BaseActivity<${pageName}Presenter>() , ${pageName}Contract.View {
    override var mPresenter: ${pageName}Presenter? = lifecycleScope.get()
   
    override fun initView(savedInstanceState:Bundle?):Int=R.layout.${activityLayoutName}



    override fun initData(savedInstanceState:Bundle?) {

    }
}
