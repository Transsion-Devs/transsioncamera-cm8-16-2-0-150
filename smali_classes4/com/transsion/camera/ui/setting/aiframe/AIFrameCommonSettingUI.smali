.class public Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private hideHint()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 46
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private showHint()V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_23

    .line 33
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->ai_frame_on_hint:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 39
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2c

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public updateHint(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->showHint()V

    return-void

    .line 27
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->hideHint()V

    return-void
.end method
