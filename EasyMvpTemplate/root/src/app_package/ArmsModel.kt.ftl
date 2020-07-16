package ${modelPackageName}

import com.xdja.easymvp.integration.IRepositoryManager
import com.xdja.easymvp.mvp.BaseModel

import ${contractPackageName}.${pageName}Contract

<#import "root://activities/EasyMvpTemplate/globals.xml.ftl" as gb>
<@gb.fileHeader />
class ${pageName}Model(repositoryManager: IRepositoryManager) : BaseModel(repositoryManager),
    ${pageName}Contract.Model {
   
}
