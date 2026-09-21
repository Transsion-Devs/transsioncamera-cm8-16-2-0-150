.class public Lcom/transsion/camera/feature/setting/superdefinition/SimpleSuperDefinition;
.super Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;-><init>()V

    return-void
.end method


# virtual methods
.method protected configBackRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 6

    .line 17
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 18
    const-string v0, "off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_filter"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 19
    invoke-virtual {p1, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 21
    :cond_19
    const-string v0, "0"

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->configBackRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method protected configFrontRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 6

    .line 29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 30
    const-string v0, "on"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_filter"

    if-eqz v0, :cond_1c

    .line 31
    const-string v0, "0"

    const-string v2, "off,on"

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_1c
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v1, v0, v0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->configFrontRelation(Lcom/transsion/camera/app/common/relation/Relation;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public bridge synthetic setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRealZoomValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic updateEntryValueList(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    return-void
.end method
