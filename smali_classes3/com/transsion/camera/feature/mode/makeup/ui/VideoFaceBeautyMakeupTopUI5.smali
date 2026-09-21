.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;
.super Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;


# direct methods
.method public static synthetic $r8$lambda$0wDqJqWPRJCT79KQb9IAWjFafm4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->lambda$notifyProgress$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qmhD8MVBJ0y7kLC2H029zi_fvgc(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->lambda$onFinishInflate$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyMakeupTopUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$notifyProgress$1(I)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->removeScrollerPointsCallback()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Ljava/lang/String;)V
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_c

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 15

    .line 82
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p4, :cond_3e

    .line 84
    const-string p4, "muscle_care"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 85
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

    .line 87
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

    .line 89
    :goto_28
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p5}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    :cond_3e
    return-void
.end method

.method public notifyState(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->notifyState(IZZZ)V

    return-void
.end method

.method public notifyState(IZZZ)V
    .registers 6

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_13

    if-eqz p3, :cond_13

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    return-void

    :cond_13
    if-eqz p1, :cond_21

    if-nez p3, :cond_21

    if-eqz p4, :cond_21

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    return-void

    :cond_21
    if-nez p1, :cond_2a

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    :cond_2a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 45
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->onFinishInflate()V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_top_scroller_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    .line 48
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_top_scroller_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_scroller_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 50
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setFadingLength(F)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mOnFinishInflateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_56

    .line 59
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mOnFinishInflateCallback:Ljava/lang/Runnable;

    :cond_56
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 112
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setEnabled(Z)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setScrollerOrientation(I)V
    .registers 3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_8

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_a

    :cond_8
    add-int/lit16 p1, p1, -0xb4

    .line 132
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method public setTabMenuState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->videoFaceBeautyMakeUpMenuState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    return-void
.end method

.method public updateLayout(II)V
    .registers 5

    .line 66
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScreenFormType:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x51

    .line 70
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    sget v1, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_top_ui_margin_bottom_ui4_menu:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p0, :cond_7

    .line 138
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    :cond_7
    return-void
.end method

.method protected updateSeekBarVisibility(ZZ)V
    .registers 3

    .line 117
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez p2, :cond_c

    .line 118
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "seekBarView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_c
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 124
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    goto :goto_23

    :cond_21
    const/16 p1, 0x8

    :goto_23
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
