.class public Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# instance fields
.field private final mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    return-void
.end method


# virtual methods
.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 19
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method protected setToNextIndex()V
    .registers 3

    .line 31
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setToNextIndex()V

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    const-string v1, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->updateHint(Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 37
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->unInit()V

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFramePopSettingItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->updateHint(Z)V

    return-void
.end method
