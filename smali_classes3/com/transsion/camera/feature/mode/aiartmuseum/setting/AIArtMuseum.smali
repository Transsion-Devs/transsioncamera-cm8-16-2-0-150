.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/AIArtMuseum;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseum"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public bridge synthetic configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public bridge synthetic configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 35
    const-string p0, "key_ai_art_museum"

    return-object p0
.end method

.method public bridge synthetic getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSupport()Ljava/util/List;
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->getSupport()Ljava/util/List;

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

.method public bridge synthetic onValueChanged(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onZoomUIStateChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    return-void
.end method

.method public bridge synthetic sendSettingChangeRequest()V
    .registers 1

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->sendSettingChangeRequest()V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 6

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    .line 42
    const-string v1, "key_ai_art_museum"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key_ai_art_museum_style"

    if-eqz v1, :cond_32

    .line 43
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1c
    const-string v1, "key_ai_art_museum_travel"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_27
    const-string v1, "key_ai_art_museum_partial"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setCameraCapabilities supportList is empty"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_47
    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/BaseAIArtMuseum;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

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
