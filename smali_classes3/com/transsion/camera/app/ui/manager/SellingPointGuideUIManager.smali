.class public Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mIsCelebritySceneShow:Z

.field private mIsContinuousShotBegin:Z

.field private mIsFilterUIShow:Z

.field private mIsFromIntent:Z

.field private mIsPopSettingViewShow:Z

.field private mIsQuickVideoBegin:Z

.field private mIsSelfTimerBegin:Z

.field private mIsShutterGuideLayoutShow:Z

.field private mIsSuperNightLiteAnimBegin:Z

.field private mIsZoomBegin:Z

.field private mIsZoomWheelUIShow:Z

.field private mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

.field private mSellingPointVideoContainer:Landroid/widget/FrameLayout;

.field private mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;


# direct methods
.method public static synthetic $r8$lambda$2cHojF0SSGeDF-hUl1zplyIHeZ8(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->lambda$initSellingPointVideo$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSellingPointVideoContainer(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSellingPointVideoView(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SellingPointGuideUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;Z)V
    .registers 18

    move-object/from16 v0, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v8, p6

    .line 78
    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mContext:Landroid/content/Context;

    .line 81
    new-instance p5, Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-direct {p5, p2, p3, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    .line 82
    invoke-virtual {p5, p4}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    move/from16 p2, p8

    .line 83
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFromIntent:Z

    .line 84
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    if-eqz p2, :cond_2a

    .line 87
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->initSellingPointVideoLayout(Landroid/view/View;)V

    :cond_2a
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private initSellingPointVideo()V
    .registers 7

    .line 228
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[initSellingPointVideo]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    const-string v0, "playSellingPointVideo"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    :try_start_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "selling_point_guide_video.mp4"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_27

    goto :goto_43

    :catch_27
    move-exception v0

    .line 237
    sget-object v1, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open video resource error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_43
    if-eqz v0, :cond_75

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_selling_point_guide_show"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->setVideoSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_selling_point_video_played"

    .line 243
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x173

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->setMediaPlayerListener(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;)V

    :cond_75
    return-void
.end method

.method private initSellingPointVideoLayout(Landroid/view/View;)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1b

    .line 93
    sget v0, Lcom/transsion/camera/R$id;->video_container_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_11

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 97
    :cond_11
    sget v0, Lcom/transsion/camera/R$id;->selling_point_guide_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    .line 100
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4e

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3f28f5c3    # 0.66f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isFloatingWindowShow()Z
    .registers 2

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string/jumbo v0, "value_none_guide"

    .line 434
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 433
    const-string/jumbo v0, "value_floating_window"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isOverlayGuideShow()Z
    .registers 2

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string/jumbo v0, "value_none_guide"

    .line 439
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 438
    const-string/jumbo v0, "value_overlay_guide"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initSellingPointVideo$0()V
    .registers 3

    .line 246
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onPlayerCompleted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->stopSellingPointVideo()V

    .line 248
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private stopSellingPointVideo()V
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseMediaPlayerLocked()V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 259
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public hideCurrentGuide()V
    .registers 2

    .line 455
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void

    .line 459
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideOverlayGuide()V

    return-void
.end method

.method public hideOverlayGuide()V
    .registers 3

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isOverlayGuideShow()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string/jumbo v1, "value_none_guide"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 7

    .line 264
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 265
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFromIntent:Z

    if-eqz v0, :cond_f

    .line 266
    sget-object p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[notifyCameraOperateActionToUI] return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->notifyCameraOperateActionToUI(I)V

    .line 270
    const-string/jumbo v0, "value_none_guide"

    const-string v1, "0"

    if-eqz p1, :cond_220

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1f3

    const/16 v2, 0x18

    const/4 v4, 0x0

    if-eq p1, v2, :cond_1db

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1c8

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_1a4

    const/16 v2, 0x159

    if-eq p1, v2, :cond_1a0

    const/16 v2, 0x190

    if-eq p1, v2, :cond_1a0

    const/16 v2, 0x13

    if-eq p1, v2, :cond_17e

    const/16 v2, 0x14

    if-eq p1, v2, :cond_14c

    const/16 v2, 0x24

    if-eq p1, v2, :cond_146

    const/16 v2, 0x25

    if-eq p1, v2, :cond_12e

    const/16 v2, 0x30

    if-eq p1, v2, :cond_128

    const/16 v2, 0x31

    if-eq p1, v2, :cond_110

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_10a

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_e6

    const/16 v2, 0xd2

    if-eq p1, v2, :cond_d9

    const/16 v2, 0xd3

    if-eq p1, v2, :cond_cd

    const/16 v2, 0xe9

    if-eq p1, v2, :cond_c7

    const/16 v2, 0xea

    if-eq p1, v2, :cond_af

    const/16 v2, 0xed

    if-eq p1, v2, :cond_a9

    const/16 v2, 0xee

    if-eq p1, v2, :cond_9d

    const/16 v2, 0x183

    if-eq p1, v2, :cond_97

    const/16 v2, 0x184

    if-eq p1, v2, :cond_94

    packed-switch p1, :pswitch_data_236

    goto/16 :goto_235

    .line 399
    :pswitch_7a
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSelfTimerBegin:Z

    .line 400
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_235

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 401
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 395
    :pswitch_8e
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSelfTimerBegin:Z

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 301
    :cond_94
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    return-void

    .line 297
    :cond_97
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 389
    :cond_9d
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    .line 390
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 385
    :cond_a9
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 379
    :cond_af
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsQuickVideoBegin:Z

    .line 380
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_235

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 381
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 375
    :cond_c7
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsQuickVideoBegin:Z

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 359
    :cond_cd
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsShutterGuideLayoutShow:Z

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 351
    :cond_d9
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsShutterGuideLayoutShow:Z

    .line 352
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSelfTimerBegin:Z

    if-nez p1, :cond_e3

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 355
    :cond_e3
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSelfTimerBegin:Z

    return-void

    .line 276
    :cond_e6
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    .line 277
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsContinuousShotBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsQuickVideoBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsShutterGuideLayoutShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_235

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 280
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 272
    :cond_10a
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 288
    :cond_110
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    .line 289
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSuperNightLiteAnimBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomBegin:Z

    if-nez p1, :cond_235

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 293
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 284
    :cond_128
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 369
    :cond_12e
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsContinuousShotBegin:Z

    .line 370
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsCelebritySceneShow:Z

    if-nez p1, :cond_235

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 371
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 365
    :cond_146
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsContinuousShotBegin:Z

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    return-void

    .line 415
    :cond_14c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    const-string/jumbo v0, "true"

    if-eqz p1, :cond_162

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_selling_point_video_played"

    .line 417
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {p1, v1, v0, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 419
    :cond_162
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    if-nez p1, :cond_172

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz p1, :cond_235

    .line 420
    :cond_172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p1, "key_selling_point_guide_show"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 405
    :cond_17e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz p1, :cond_189

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    .line 408
    :cond_189
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    if-eqz p1, :cond_235

    .line 409
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSellingPointSupport()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->initSellingPointVideo()V

    return-void

    .line 425
    :cond_1a0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideOverlayGuide()V

    return-void

    .line 331
    :cond_1a4
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomWheelUIShow:Z

    .line 332
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsContinuousShotBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsQuickVideoBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsSelfTimerBegin:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsShutterGuideLayoutShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomBegin:Z

    if-nez p1, :cond_235

    .line 338
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 324
    :cond_1c8
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomWheelUIShow:Z

    .line 325
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_1db
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomBegin:Z

    .line 316
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomWheelUIShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsPopSettingViewShow:Z

    if-nez p1, :cond_235

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFilterUIShow:Z

    if-nez p1, :cond_235

    .line 319
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 304
    :cond_1f3
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomBegin:Z

    .line 305
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomWheelUIShow:Z

    if-nez p1, :cond_20a

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    if-eqz p1, :cond_20a

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void

    .line 308
    :cond_20a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isOverlayGuideShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_220
    :pswitch_220
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isOverlayGuideShow()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;)V

    :cond_235
    :goto_235
    return-void

    :pswitch_data_236
    .packed-switch 0xb
        :pswitch_8e
        :pswitch_7a
        :pswitch_220
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 5

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2a

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    if-eqz v0, :cond_2a

    .line 170
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[onBackPressed] stop selling point video"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->stopSellingPointVideo()V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_29

    .line 173
    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    :cond_29
    return v1

    .line 176
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    if-eqz v0, :cond_43

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isOverlayGuideShow()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->hideCurrentGuide()V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_42

    .line 179
    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateIntentFromNegativeScreen(ZZ)V

    :cond_42
    return v1

    .line 183
    :cond_43
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onSetupViews()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 6

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoView:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    if-eqz v0, :cond_2f

    .line 156
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause] stop selling point video"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 158
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 157
    const-string v3, "key_selling_point_video_played"

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->stopSellingPointVideo()V

    .line 161
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->pause()V

    return-void
.end method

.method public resume()V
    .registers 5

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    if-eqz v0, :cond_5a

    .line 133
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSellingPointSupport()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFromIntent:Z

    if-nez v0, :cond_5a

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "false"

    .line 137
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "key_selling_point_video_played"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 138
    sget-object v1, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resume] isVideoPlayed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v0, :cond_48

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_48

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->initSellingPointVideo()V

    goto :goto_5a

    .line 142
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSellingPointVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 143
    const-string v0, "[resume] selling point video has played, reset flag value"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setSellingPointVideoPlaying(Z)V

    .line 147
    :cond_5a
    :goto_5a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->resume()V

    return-void
.end method

.method public setAllModeResources(Ljava/util/List;)V
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setAllModeResources(Ljava/util/List;)V

    return-void
.end method

.method public showFloatingWindow()V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindow()V

    :cond_f
    return-void
.end method

.method public showFloatingWindowWithAnim()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->showFloatingWindowWithAnim()V

    :cond_f
    return-void
.end method

.method public unInit()V
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->unInit()V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 7

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->updateCurrentModeName(Ljava/lang/String;)V

    .line 196
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsFromIntent:Z

    if-eqz p1, :cond_13

    .line 197
    sget-object p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateCurrentMode] return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "key_selling_point_guide_show"

    if-eqz p1, :cond_62

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string/jumbo v2, "value_floating_window"

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    .line 203
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "value_overlay_guide"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 204
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v3, "true"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    :cond_4a
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomBegin:Z

    if-nez p1, :cond_98

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mIsZoomWheelUIShow:Z

    if-nez p1, :cond_98

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    .line 207
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->getGuideStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindow()V

    return-void

    .line 211
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "false"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isFloatingWindowShow()Z

    move-result p1

    const-string v0, "0"

    if-eqz p1, :cond_80

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideFloatingWindow()V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setFloatingWindowClickIconId(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_80
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->isOverlayGuideShow()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->hideOverlayGuideWithAnim()V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    const-string/jumbo v1, "value_none_guide"

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setGuideStatus(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->mSellingPointGuideUI:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->setOverlayGuideClickIconId(Ljava/lang/String;)V

    :cond_98
    return-void
.end method
