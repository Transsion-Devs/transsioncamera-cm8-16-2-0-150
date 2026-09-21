.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

.field private mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$jDmHEFBR3kVGhsSJkAQqgUV3nMY(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
    .registers 17

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 19

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.feature.mode.professional.ui.ProfessionalModeUI5"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    .line 37
    iput-object v7, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_17

    .line 232
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 235
    :cond_17
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_1e

    .line 236
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 239
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_4

    .line 240
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 242
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_4

    :cond_30
    return-void
.end method

.method private unInitSettingUIs()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 223
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->unInit()V

    goto :goto_10

    .line 225
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_9

    .line 208
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->dismissPopup()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hide(Z)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 75
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->hide(Z)V

    :cond_7
    return-void
.end method

.method public hideSeekBarIfNeed(Z)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 69
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->hideSeekBarIfNeed(Z)V

    :cond_7
    return-void
.end method

.method public inflateViewIfNeed(I)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 63
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->inflateViewIfNeed(I)V

    :cond_7
    return-void
.end method

.method public init()V
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 42
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->init()V

    :cond_7
    return-void
.end method

.method public isCaptureButtonEnable()Z
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_9

    .line 201
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->isCaptureButtonEnable()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSeekBarShowing()Z
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_9

    .line 215
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->isSeekBarShowing()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureChange(Ljava/lang/String;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 254
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->notifyPictureChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 105
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public onPictureSizeChanged(Ljava/lang/String;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 111
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->onPictureSizeChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onScaleBegin()V
    .registers 3

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->updateZoomState(ZZ)V

    :cond_9
    return-void
.end method

.method public onScaleEnd(Z)V
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 87
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->updateZoomState(ZZ)V

    :cond_8
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 117
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->onScreenFormChanged(IZ)V

    :cond_7
    return-void
.end method

.method public resetCapturingUI()V
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 165
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->resetCapturingUI()V

    :cond_7
    return-void
.end method

.method public seCaptureStopListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 159
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->seCaptureStopListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public setCaptureButtonEnable(Z)V
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 195
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setCaptureButtonEnable(Z)V

    :cond_7
    return-void
.end method

.method public setCaptureState(Z)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 93
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setCaptureState(Z)V

    :cond_7
    return-void
.end method

.method public setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 153
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 56
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->setEnable(Z)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public setGraduationViewEnable(Z)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 99
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setGraduationViewEnable(Z)V

    :cond_7
    return-void
.end method

.method public setPopSettingShow(Z)V
    .registers 2

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 260
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setPopSettingShow(Z)V

    :cond_7
    return-void
.end method

.method public setSettingBarVisible(I)V
    .registers 2

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setSettingBarVisible(I)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_9

    .line 128
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_9
    return-void
.end method

.method public setSettingProvider(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingProvider:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public startCapturingBeginAnim(J)V
    .registers 3

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 171
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->startCapturingBeginAnim(J)V

    :cond_7
    return-void
.end method

.method public startCapturingEndAnim()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 183
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->startCapturingEndAnim()V

    :cond_7
    return-void
.end method

.method public stopCapturingBeginAnim()V
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 177
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->stopCapturingBeginAnim()V

    :cond_7
    return-void
.end method

.method public stopCapturingEndAnim()V
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 189
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->stopCapturingEndAnim()V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz v0, :cond_7

    .line 48
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->unInit()V

    .line 50
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->unInitSettingUIs()V

    return-void
.end method

.method public updateSettingItemList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;

    .line 141
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;->unInit()V

    goto :goto_10

    .line 144
    :cond_20
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->initSettingUIList(Ljava/util/List;)V

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mSettingUIList:Ljava/util/List;

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_2c

    .line 147
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->setSettingUIList(Ljava/util/List;)V

    :cond_2c
    return-void
.end method

.method public updateUIState(IZ)V
    .registers 3

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalUIManager;->mModeUI:Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;

    if-eqz p0, :cond_7

    .line 134
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;->updateUIState(IZ)V

    :cond_7
    return-void
.end method
