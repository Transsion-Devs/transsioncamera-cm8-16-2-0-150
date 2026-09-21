.class public Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitFlarePopSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 25
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 22
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private showAntiHint()V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_23

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->portrait_flare_setting_on_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public onEntryViewClick(Landroid/view/View;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_31

    .line 32
    const-string v0, "on"

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_portrait_flare_switch"

    if-eqz v0, :cond_1c

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_portrait_flare_interaction_off"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_31

    .line 34
    :cond_1c
    const-string v0, "off"

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_portrait_flare_interaction_on"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_31
    :goto_31
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->onEntryViewClick(Landroid/view/View;)V

    return-void
.end method

.method protected setToNextIndex()V
    .registers 4

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_12

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->showAntiHint()V

    goto :goto_1b

    .line 47
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1b

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 51
    :cond_1b
    :goto_1b
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setToNextIndex()V

    .line 52
    sget-object p0, Lcom/transsion/camera/ui/setting/portraitflare/PortraitFlarePopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToNextIndex: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
