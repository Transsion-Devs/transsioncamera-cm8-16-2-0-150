.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Qjto6VheZn8iNBeRitYt_xP9hj8(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->lambda$recoverSeekBarValue$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    return-void
.end method

.method private synthetic lambda$recoverSeekBarValue$0(I)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->removeScrollerPointsCallback()V

    return-void
.end method

.method private recoverScrollerView()V
    .registers 4

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 127
    iget-object v1, v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 128
    iget-object v0, v0, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mIndex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->recoverSeekBarValue(I)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public hideFilterSeekBar()V
    .registers 1

    return-void
.end method

.method public initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 8

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->video_filter_panel_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->video_filter_top_ui_layout:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopViewContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterTopUI:Landroid/view/View;

    .line 36
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mTopViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mFilterTopUI:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->video_filter_root:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 39
    sget v2, Lcom/transsion/camera/R$id;->filter_panel_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    .line 40
    sget v2, Lcom/transsion/camera/R$id;->filter_recyclerview_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerViewContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 41
    sget v2, Lcom/transsion/camera/R$id;->filter_recyclerview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    new-instance v4, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;Lcom/transsion/camera/app/common/IAppUI;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->video_filter_top_scroller_layout:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    sget p1, Lcom/transsion/camera/R$id;->video_filter_top_scroller_container:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    .line 56
    sget p1, Lcom/transsion/camera/R$id;->video_filter_scroller_view:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 57
    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->video_filter_scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$2;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;)V

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->initCameraInfoTracker(Landroid/content/Context;)V

    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .registers 3

    .line 111
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mCurrentItem:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->recoverSeekBarValue(I)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    return-void
.end method

.method protected recoverSeekBarValue(I)V
    .registers 9

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const-string v1, "100"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSeekBarValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->notifySettingChange(Ljava/lang/String;)V

    return-void
.end method

.method public showFilterSeekBar()V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->recoverScrollerView()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    return-void
.end method

.method public updateScrollerViewLayout(II)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateSeekBarLayout(ZIIII)V
    .registers 6

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setRotationY(F)V

    .line 79
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x5a

    if-eq p5, p1, :cond_28

    const/16 p1, 0x10e

    if-ne p5, p1, :cond_2a

    :cond_28
    add-int/lit16 p5, p5, -0xb4

    .line 86
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method
