package ${contractPackageName}

import com.xdja.easymvp.mvp.IModel
import com.xdja.easymvp.mvp.IView

<#import "root://activities/EasyMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
interface ${pageName}Contract {
    //View层定义接口
    interface View : IView{
	
	}

    //Model层定义接口
    interface Model : IModel{
	
	}

}
