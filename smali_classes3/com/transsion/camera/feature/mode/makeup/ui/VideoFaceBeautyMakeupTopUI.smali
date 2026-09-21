.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarStatusListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final NONE_SUPPORT:[I

.field private static final SUPPORT_PROGRESS_LIST:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mContext:Landroid/content/Context;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mOnFinishInflateCallback:Ljava/lang/Runnable;

.field protected mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mScreenFormType:I

.field protected mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field protected mScrollerViewContainer:Landroid/widget/RelativeLayout;

.field protected mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field protected mSeekBarAnimator:Landroid/animation/Animator;

.field protected mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;

.field private mState:I

.field protected mTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;


# direct methods
.method public static synthetic $r8$lambda$9gnHnlXhlPJyPcmupF-KiSu1KPY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyMakeupTopUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 47
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->SUPPORT_PROGRESS_LIST:[I

    .line 48
    new-array v0, v2, [I

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->NONE_SUPPORT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScreenFormType:I

    .line 70
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 71
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p2, v0, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_7

    .line 109
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7

    .line 278
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p6, :cond_20

    .line 279
    const-string p6, "muscle_care"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->SUPPORT_PROGRESS_LIST:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    goto :goto_1b

    .line 282
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->NONE_SUPPORT:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    .line 284
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_20
    return-void
.end method

.method public notifySelect(IZ)V
    .registers 3

    return-void
.end method

.method public notifyState(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyState(IZ)V
    .registers 6

    .line 293
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyState mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_38

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    const/4 v0, 0x3

    if-eq p1, v0, :cond_38

    return-void

    .line 301
    :cond_34
    invoke-virtual {p0, p2, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateSeekBarVisibility(ZZ)V

    return-void

    :cond_38
    const/4 p1, 0x0

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateSeekBarVisibility(ZZ)V

    return-void
.end method

.method public notifyState(IZZZ)V
    .registers 5

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->notifyState(IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 100
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v1, :cond_33

    .line 103
    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_top_seekbar_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    .line 104
    sget v1, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 106
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 113
    :cond_33
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->rotate_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-void
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbc

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbd

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_20

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_20
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;

    return-void
.end method

.method public setOnFinishInflateCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mOnFinishInflateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setScrollerOrientation(I)V
    .registers 2

    return-void
.end method

.method public setTabMenuState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V
    .registers 2

    return-void
.end method

.method public updateLayout(II)V
    .registers 16

    .line 129
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScreenFormType:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    .line 135
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationY(F)V

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x33

    const/16 v8, 0x55

    const/16 v9, 0x35

    const/16 v10, 0xb4

    const/16 v11, 0x5a

    const/16 v12, 0x10e

    if-ne p1, v5, :cond_a4

    .line 139
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_layout_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 140
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_parent_layout_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq p2, v11, :cond_87

    if-eq p2, v10, :cond_74

    if-eq p2, v12, :cond_61

    const/16 v5, 0x53

    .line 160
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 162
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_99

    .line 153
    :cond_61
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 154
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 155
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_99

    .line 148
    :cond_74
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 150
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_0_expand_seekbar_left_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_99

    .line 143
    :cond_87
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_right_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 145
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_90_expand_seekbar_90_bottom_margin:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 165
    :goto_99
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v7, p2, 0x10e

    rem-int/lit16 v7, v7, 0x168

    invoke-virtual {v5, v7, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1bb

    :cond_a4
    if-ne p1, v6, :cond_106

    .line 167
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 168
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 169
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 170
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_seekbar_right_margin:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p2, :cond_f5

    if-eq p2, v11, :cond_e4

    if-eq p2, v10, :cond_d3

    if-eq p2, v12, :cond_e4

    goto/16 :goto_1bb

    .line 180
    :cond_d3
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_180_seekbar_top_margin:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 182
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v10, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1bb

    .line 175
    :cond_e4
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_90_seekbar_top_margin:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 177
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v10, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1bb

    .line 185
    :cond_f5
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_flip_0_seekbar_bottom_margin:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 187
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1bb

    :cond_106
    const/16 v5, 0x51

    if-nez p1, :cond_136

    .line 192
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 193
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 194
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_12f

    if-ne p2, v11, :cond_126

    move v11, v12

    goto :goto_12a

    :cond_126
    if-ne p2, v12, :cond_129

    goto :goto_12a

    :cond_129
    move v11, p2

    .line 202
    :goto_12a
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v5, v11}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 204
    :cond_12f
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_1bb

    :cond_136
    const/4 v9, 0x2

    if-ne p1, v9, :cond_151

    .line 206
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_layout_width:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 207
    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_column_seekbar_parent_layout_width:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 208
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1bb

    .line 210
    :cond_151
    iget v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mScreenFormType:I

    const/4 v9, 0x4

    const/high16 v10, 0x43340000    # 180.0f

    if-ne v5, v9, :cond_18c

    .line 211
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 212
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 213
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 214
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v5, v10}, Landroid/view/View;->setRotationY(F)V

    .line 215
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 216
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_top:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_height:I

    .line 217
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v5, v7

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 218
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, p2, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1bb

    :cond_18c
    const/4 v8, 0x5

    if-ne v5, v8, :cond_1bb

    .line 220
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 221
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_seekbar_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 222
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v5, v10}, Landroid/view/View;->setRotationY(F)V

    .line 224
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_top:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 225
    sget v5, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->make_up_top_ui_hover_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 226
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, p2, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1bb
    :goto_1bb
    if-ne v6, p1, :cond_1e5

    .line 229
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 230
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v6, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 231
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 233
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/makeup/R$dimen;->flip_makeup_top_seekbar_layout_padding:I

    .line 234
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 230
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    sget v4, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->flip_video_makeup_top_ui_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_21b

    .line 237
    :cond_1e5
    sget v5, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 238
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v6, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 239
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 241
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/transsion/camera/feature/makeup/R$dimen;->makeup_top_seekbar_layout_padding:I

    .line 242
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 238
    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_213

    .line 244
    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_top_ui_margin_bottom_ui4_menu:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_21b

    .line 246
    :cond_213
    sget v4, Lcom/transsion/camera/feature/makeup/R$dimen;->video_face_beauty_makeup_top_ui_margin_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 249
    :goto_21b
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    return-void
.end method

.method public updateProgressText(II)V
    .registers 3

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_7

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    :cond_7
    return-void
.end method

.method protected updateSeekBarVisibility(ZZ)V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-nez v0, :cond_c

    .line 319
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "seekBarView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1b
    if-eqz p2, :cond_2e

    .line 326
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;Z)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBarAnimator:Landroid/animation/Animator;

    .line 355
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 357
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_34

    const/4 p2, 0x0

    goto :goto_36

    :cond_34
    const/16 p2, 0x8

    :goto_36
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSeekBarVisibility visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected visibilityAnimator(Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    if-eqz p2, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/4 v1, 0x2

    .line 365
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 366
    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_20

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_22

    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    :goto_22
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 368
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 369
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
