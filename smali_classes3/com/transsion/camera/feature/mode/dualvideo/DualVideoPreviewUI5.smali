.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI5;
.super Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected getItemBottomMarginDst(Landroid/content/Context;I)I
    .registers 5

    if-nez p2, :cond_30

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 16
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPreviewMoveDistance(D)I

    move-result p2

    .line 17
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 18
    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomHeight()I

    move-result p0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0

    .line 20
    :cond_30
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getItemBottomMarginDst(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method
