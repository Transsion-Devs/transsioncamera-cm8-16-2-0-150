.class public Lcom/transsion/camera/ui/setting/remotecapture/RemoteCaptureSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 27
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/remotecapture/RemoteCaptureSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/remotecapture/RemoteCaptureSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public isSupported()Z
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->fingerprint_capture_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->smile_detection_support:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->voice_detection_support:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->voice_capture_support:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->gesture_detection_support:I

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method
