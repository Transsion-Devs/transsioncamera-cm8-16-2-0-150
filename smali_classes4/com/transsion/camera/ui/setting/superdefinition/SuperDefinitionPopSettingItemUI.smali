.class public Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFullSizeSupport:Z

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperDefinitionTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 28
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 24
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    .line 30
    sget p2, Lcom/transsion/camera/R$bool;->is_support_full_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mFullSizeSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;)V
    .registers 1

    .line 22
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setToNextIndex()V

    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 124
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private showSuperDefinitionHint(Ljava/lang/String;)V
    .registers 8

    .line 79
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    if-nez v1, :cond_43

    .line 84
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_camera_zoom"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v2

    .line 86
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    move-object v0, v2

    .line 91
    :cond_43
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v2

    .line 92
    sget-object v3, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSuperDefinitionHint cameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isFacingFront = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mFullSizeSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mFullSizeSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_77

    .line 94
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mFullSizeSupport:Z

    if-eqz v2, :cond_77

    goto :goto_85

    .line 97
    :cond_77
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v2

    .line 98
    instance-of v4, v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    if-eqz v4, :cond_85

    .line 99
    check-cast v2, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    invoke-virtual {v2, v0, v1, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;->getMPValue(Ljava/lang/String;[ILjava/lang/String;)I

    move-result v3

    :cond_85
    :goto_85
    if-nez v3, :cond_8f

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 107
    :cond_8f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "my_MM"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 108
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->super_definition_on_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c6

    .line 110
    :cond_b6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->super_definition_on_tips:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :goto_c6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 117
    :cond_de
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnStatusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_1e

    return-void

    .line 65
    :cond_1e
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->showSuperDefinitionHint(Ljava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->notifyCameraOperateAction(I)V

    if-nez p1, :cond_e

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_e

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_e
    return-void
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 41
    new-instance p1, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI$1;-><init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;)V

    .line 47
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 53
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 55
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->unInit()V

    return-void
.end method
