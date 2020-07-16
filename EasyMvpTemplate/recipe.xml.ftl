<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<@kt.addAllKotlinDependencies />
<#if needActivity>
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</#if>

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>


<#if needActivity>
    <instantiate from="root/src/app_package/ArmsActivity.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.kt" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.kt" />
</#if>

<#if needFragment>
    <instantiate from="root/src/app_package/ArmsFragment.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.kt" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.kt" />
</#if>

<#if needContract>
    <instantiate from="root/src/app_package/ArmsContract.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.kt" />
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/ArmsPresenter.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.kt" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.kt" />
</#if>

<#if needModel>
    <instantiate from="root/src/app_package/ArmsModel.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Model.kt" />
</#if>

<#if needKoin>
    <instantiate from="root/src/app_package/KoinModule.kt.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(koinPackageName)}/${pageName}Module.kt" />
</#if>

</recipe>
