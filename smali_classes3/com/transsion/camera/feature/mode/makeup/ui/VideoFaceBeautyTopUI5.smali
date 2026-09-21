.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# instance fields
.field private mVideoFaceBeautyScrollerContainer:Landroid/widget/FrameLayout;

.field private mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;


# direct methods
.method public static synthetic $r8$lambda$RKdcqRrOuncu9jKgxOEUlmdcKos(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->lambda$onFinishInflate$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pYZphp77dAnpR5OT7_9fzI8E39c(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->lambda$notifyProgress$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$notifyProgress$1(I)V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;->scrollToPosition(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->removeScrollerPointsCallback()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/String;)V
    .registers 3

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_c

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 15

    .line 96
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p4, :cond_3e

    .line 98
    const-string p4, "muscle_care"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 99
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/16 v5, 0x32

    const/16 v6, 0x32

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    goto :goto_28

    :cond_1a
    move-object v1, p6

    .line 102
    new-instance p1, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v2, v1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    move-object v0, v1

    .line 105
    :goto_28
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p5}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    :cond_3e
    return-void
.end method

.method public notifyState(IZ)V
    .registers 4

    .line 80
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    return-void

    .line 87
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;->hideSettingTitle()V

    return-void

    .line 84
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;->needShowSettingTitle(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 31
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->onFinishInflate()V

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_top_scroller_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mFaceBeautyTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    .line 35
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_scroller_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerContainer:Landroid/widget/FrameLayout;

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mFaceBeautyTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_scroller_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    .line 37
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setEdgeFadeEnable(Z)V

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    return-void
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbc

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 4

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_8

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_a

    :cond_8
    add-int/lit16 p2, p2, -0xb4

    .line 52
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerContainer:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->video_face_beauty_scroller_container_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 p2, 0x51

    .line 60
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p0, :cond_7

    .line 67
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method protected updateSeekBarVisibility(Z)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI5;->mVideoFaceBeautyScrollerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    .line 74
    :goto_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
