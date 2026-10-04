.class Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 31
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 27
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private showVideoEnhanceHint()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_33

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$string;->flip_pop_setting_feature_on_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->video_enhance_setting_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_33
    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 80
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->showVideoEnhanceHint()V

    return-void

    .line 85
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_28

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_28
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 3

    .line 57
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnValueChanged()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_8

    return-void

    .line 61
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->showVideoEnhanceHint()V

    return-void

    .line 64
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 37
    new-instance p1, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;)V

    .line 43
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoenhanceyuv/VideoEnhanceYUVTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 51
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setVideoEnhanceYUVEnable(Z)V

    .line 52
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method
