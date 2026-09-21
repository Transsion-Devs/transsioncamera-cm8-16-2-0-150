.class public Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# instance fields
.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 18
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 14
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_18

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPreEntryValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_11

    .line 35
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 38
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x7

    .line 40
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenFormType:I

    if-ne v0, v1, :cond_3c

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$string;->flip_pop_setting_feature_on_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 43
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->hdr_on_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_44
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 50
    :cond_5c
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 25
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/hdr/HDRPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 27
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->unInit()V

    return-void
.end method
