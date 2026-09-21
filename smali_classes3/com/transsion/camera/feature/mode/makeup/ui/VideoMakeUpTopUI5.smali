.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mVideoMakeUpScrollerContainer:Landroid/widget/FrameLayout;

.field private mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;


# direct methods
.method public static synthetic $r8$lambda$TVa-THSGcyAAdPK8mgwtN6nEnD8(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->lambda$onFinishInflate$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kAEtQ5JCzUoD9ulTy7hm5lPELAY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->lambda$notifyProgress$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmVideoMakeUpScrollerRulerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMakeUpTopUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$notifyProgress$1(I)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;->scrollToPosition(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->removeScrollerPointsCallback()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/String;)V
    .registers 3

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_c

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 14

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p1, :cond_25

    .line 118
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object v1, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    .line 120
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p5}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    :cond_25
    return-void
.end method

.method public notifyState(IZ)V
    .registers 4

    .line 131
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->notifyState(IZ)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    return-void

    .line 138
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;->hideSettingTitle()V

    return-void

    .line 135
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mITopUICallBack:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;

    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI$ITopUICallBack;->needShowSettingTitle(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->onFinishInflate()V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_makeup_top_sroller_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    .line 33
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_makeup_scroller_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    .line 34
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setEdgeFadeEnable(Z)V

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mMakUpTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_makeup_top_scroller_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerContainer:Landroid/widget/FrameLayout;

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

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerContainer:Landroid/widget/FrameLayout;

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->video_makeup_scroller_container_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 56
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x51

    .line 58
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p0, :cond_7

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method public updateSeekBarVisibility(ZZ)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-nez v0, :cond_c

    .line 65
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateSeekBarVisibility] mVideoMakeUpScrollerRulerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1b
    if-eqz p2, :cond_2e

    .line 72
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;Z)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    .line 101
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 103
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->mVideoMakeUpScrollerRulerView:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupScrollerView;

    if-eqz p1, :cond_34

    const/4 p2, 0x0

    goto :goto_36

    :cond_34
    const/16 p2, 0x8

    :goto_36
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateSeekBarVisibility] visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
