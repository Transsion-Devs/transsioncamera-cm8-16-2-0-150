.class public Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;
.super Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;
.source "SourceFile"


# instance fields
.field private final mIsSupportFillView:Z

.field private mPaddingView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$zRcIPMQgxktpdli0ppJ6nGSCdP0(Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->lambda$startProcessStepAnim$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/supernight/R$bool;->super_night_mode_is_support_fill_view:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mIsSupportFillView:Z

    return-void
.end method

.method private isAspectRatio(DD)Z
    .registers 5

    sub-double/2addr p1, p3

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startProcessStepAnim$0()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->updatePaddingViewSize()V

    return-void
.end method

.method private updatePaddingViewSize()V
    .registers 9

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    if-eqz v0, :cond_54

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSize:Landroid/util/Size;

    if-eqz v0, :cond_13

    .line 64
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_23

    .line 67
    :cond_13
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCurrentW()I

    move-result v0

    .line 68
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getCurrentH()I

    move-result v1

    :goto_23
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v0, v1

    div-double/2addr v2, v0

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    .line 73
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->isAspectRatio(DD)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->isAspectRatio(DD)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_47

    :cond_43
    const/4 v1, 0x0

    .line 76
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_4f

    .line 74
    :cond_47
    :goto_47
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    :goto_4f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_54
    return-void
.end method


# virtual methods
.method protected doStartEndingAnim()V
    .registers 1

    return-void
.end method

.method protected doStartProcessingAnim(Z)V
    .registers 2

    return-void
.end method

.method protected doStopProcessingAnim()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .registers 3

    .line 24
    sget v0, Lcom/transsion/camera/feature/supernight/R$id;->super_night_fill_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    .line 25
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mIsSupportFillView:Z

    if-eqz v0, :cond_20

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_20
    const/16 p0, 0x8

    .line 30
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected ringScreenLightUpdateUI(Z)V
    .registers 2

    return-void
.end method

.method public startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V
    .registers 4

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/supernight/ui/AbstractModeUI;->startProcessStepAnim(Landroid/util/Size;ILjava/lang/String;)V

    .line 49
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mIsSupportFillView:Z

    if-eqz p1, :cond_11

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;->mPaddingView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/ui/ModeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method
