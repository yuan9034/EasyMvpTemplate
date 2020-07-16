package ${presenterPackageName}

import com.xdja.easymvp.mvp.BasePresenter
import ${contractPackageName}.${pageName}Contract

<#import "root://activities/EasyMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
class ${pageName}Presenter(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
    BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model, rootView) {

}
