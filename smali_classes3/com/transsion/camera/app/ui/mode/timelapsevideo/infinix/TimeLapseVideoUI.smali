.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;
.super Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;
.source "SourceFile"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDownAnimator:Landroid/animation/AnimatorSet;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

.field private final mShutterPanel:Landroid/view/View;

.field private final mSingleRateMode:Z

.field private mTotalDuration:J

.field private final mUpAnimator:Landroid/animation/AnimatorSet;

.field private final mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;


# direct methods
.method public static synthetic $r8$lambda$C31ivLCwqMg98IQDM6ECB6UVOwE(Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->lambda$updateLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgqdoKfeDxZnO-6HEV6JBSgoWSk(Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->lambda$new$0(Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseVideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;)V
    .registers 7

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 38
    new-instance p3, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-wide/16 p3, 0x0

    .line 40
    iput-wide p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mTotalDuration:J

    .line 45
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    .line 46
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    .line 59
    sget p3, Lcom/transsion/camera/R$layout;->round_progress_shutter_bg:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    .line 62
    new-instance p2, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    .line 63
    sget p3, Lcom/transsion/camera/R$id;->shutter_progress:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/R$dimen;->video_recording_circle_progress_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 66
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p4, p3, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget p3, Lcom/transsion/camera/R$id;->shutter_panel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->need_scale_shutter_when_pressed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->initAnimator()V

    .line 73
    :cond_7e
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;

    .line 74
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .registers 9

    long-to-int v0, p1

    .line 306
    div-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x3e8

    .line 307
    rem-long/2addr p1, v1

    long-to-int p1, p1

    .line 308
    rem-int/lit8 p2, v0, 0x3c

    .line 309
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 310
    div-int/lit16 v0, v0, 0xe10

    .line 312
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    div-int/lit8 p1, p1, 0x64

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v4, v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 312
    const-string v3, "%02d:%02d:%02d.%1d"

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_48

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    return-object p1
.end method

.method private getRecordResultDuring(J)Ljava/lang/String;
    .registers 7

    .line 268
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    int-to-long v2, v0

    .line 269
    div-long v2, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz v2, :cond_19

    .line 271
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    invoke-static {p1, p2, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v0

    :cond_1a
    const-wide/32 v2, 0x927c0

    cmp-long v0, p1, v2

    if-gez v0, :cond_24

    const/16 v0, 0xf

    goto :goto_44

    :cond_24
    const-wide/32 v2, 0x124f80

    cmp-long v0, p1, v2

    if-gez v0, :cond_2e

    const/16 v0, 0x1e

    goto :goto_44

    :cond_2e
    const-wide/32 v2, 0x249f00

    cmp-long v0, p1, v2

    if-gez v0, :cond_38

    const/16 v0, 0x3c

    goto :goto_44

    :cond_38
    const-wide/32 v2, 0x493e00

    cmp-long v0, p1, v2

    if-gez v0, :cond_42

    const/16 v0, 0x78

    goto :goto_44

    :cond_42
    const/16 v0, 0x12c

    :goto_44
    int-to-long v2, v0

    .line 286
    div-long/2addr p1, v2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_53

    .line 288
    invoke-static {p1, p2, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    return-object v0
.end method

.method private initAnimator()V
    .registers 11

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_74

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 80
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    new-array v1, v1, [F

    fill-array-data v1, :array_84

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_74
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_7c
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_84
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$0(Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->createView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$updateLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 131
    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_24

    .line 134
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    :goto_24
    const-string p1, "height"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 137
    const-string p1, "bottomMargin"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected createVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;
    .registers 2

    .line 345
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    .line 348
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.app.ui.mode.timelapsevideo.TimeLapseVideoUI5Ext"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-object p0
.end method

.method public hideInfo()V
    .registers 2

    .line 301
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onHideRecordingUI()V
    .registers 1

    .line 199
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->stopProgressView()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 164
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->updateLayout(Z)V

    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 5

    .line 185
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onShowRecordingUI()V

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz v0, :cond_27

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 187
    :cond_27
    const-string v0, "00:00:00.0/00:00:00.0"

    .line 190
    :goto_29
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    if-eqz v0, :cond_3e

    .line 192
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.start()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->start()V

    :cond_3e
    return-void
.end method

.method public onShutterDown()V
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onShutterUp()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onTimeLapseWheelHide()V
    .registers 1

    return-void
.end method

.method public onTimeLapseWheelShow()V
    .registers 1

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 2

    .line 253
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    if-eqz p0, :cond_a

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->pause(Z)V

    :cond_a
    return-void
.end method

.method public resume()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    if-eqz v0, :cond_23

    .line 234
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.reset()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->reset()V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_23
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 2

    .line 216
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->ringScreenLightUpdateUI()V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    if-eqz v0, :cond_c

    .line 218
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->updateLowLight(Z)V

    :cond_c
    return-void
.end method

.method public setTimeLapseDuration(J)V
    .registers 3

    .line 248
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mTotalDuration:J

    return-void
.end method

.method public showFileTooShortInfo()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->message_video_file_too_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .registers 8

    .line 170
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long p3, p1, v0

    if-lez p3, :cond_f

    sub-long/2addr p1, v0

    .line 173
    :cond_f
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mTotalDuration:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_22

    cmp-long p3, p1, v0

    if-ltz p3, :cond_22

    iget p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI;->mTimeLapseRate:I

    if-eqz p3, :cond_22

    .line 174
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mVideoProgressListener:Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/ProductTimeLapseVideoUI$VideoProgressListener;->onProgressEnd()V

    .line 176
    :cond_22
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->formatTime(J)Ljava/lang/String;

    move-result-object p3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->getRecordResultDuring(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_45

    .line 179
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_45
    return-void
.end method

.method public stopProgressView()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    if-eqz v0, :cond_10

    .line 242
    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mProgressView.stop()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mProgressView:Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/RecordingProgressView;->stop()V

    :cond_10
    return-void
.end method

.method public unInitVideoUI()V
    .registers 3

    .line 224
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->unInitVideoUI()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public updateLayout(Z)V
    .registers 11

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 97
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 100
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x51

    .line 101
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v2, :cond_2c

    .line 105
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 109
    :cond_2c
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v4, 0x0

    if-nez v0, :cond_45

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 114
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v5

    goto :goto_52

    :cond_45
    const/4 v5, 0x3

    if-ne v0, v5, :cond_50

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    move v5, v4

    goto :goto_52

    :cond_50
    move v5, v3

    move v0, v4

    .line 120
    :goto_52
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v6

    if-ltz v6, :cond_5c

    const/4 v7, 0x1

    goto :goto_5d

    :cond_5c
    move v7, v4

    .line 122
    :goto_5d
    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c2

    if-eqz p1, :cond_c2

    if-eqz v7, :cond_74

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    goto :goto_7a

    .line 124
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    :goto_7a
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    filled-new-array {p1, v4}, [I

    move-result-object p1

    .line 123
    const-string v4, "padding"

    invoke-static {v4, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 125
    const-string v4, "height"

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 126
    const-string v2, "bottomMargin"

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 127
    filled-new-array {v0, v2, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 128
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v7, v1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 142
    :cond_c2
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_cd

    const/16 v0, 0x94

    const/16 v5, 0x22

    move v6, v4

    :cond_cd
    if-eqz v7, :cond_eb

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    instance-of v2, p1, Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_e0

    .line 150
    check-cast p1, Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result p1

    goto :goto_e1

    :cond_e0
    move p1, v4

    .line 152
    :goto_e1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v4, p1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_f4

    .line 154
    :cond_eb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    :goto_f4
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 157
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mShutterPanel:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateTimeInterval()J
    .registers 3

    .line 205
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 206
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateTimeInterval()J

    move-result-wide v0

    return-wide v0

    .line 208
    :cond_d
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/infinix/TimeLapseVideoUI;->mSingleRateMode:Z

    if-eqz p0, :cond_14

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x64

    return-wide v0
.end method
