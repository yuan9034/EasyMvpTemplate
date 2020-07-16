package ${koinPackageName}

import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter
import ${modelPackageName}.${pageName}Model
import ${ativityPackageName}.${pageName}Activity

import org.koin.dsl.module

val ${pageName}Module = module {
    scope<${pageName}Activity> {
        scoped<${pageName}Contract.Model> { ${pageName}Model(get()) }
        scoped {
            ${pageName}Presenter(get(), this.getSource())
        }
    }
}
