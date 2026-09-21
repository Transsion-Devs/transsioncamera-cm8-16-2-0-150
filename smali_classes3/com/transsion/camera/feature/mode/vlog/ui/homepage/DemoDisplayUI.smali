.class public Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore;


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0xc8

.field private static final PLAYER_ANIMATION_TIME:I = 0x32

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private isPlaying:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mLastScreenFormType:I

.field private final mModeInflateScrollRoot:Landroid/view/ViewGroup;

.field private final mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private final mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

.field private mPlayerAnimation:Z

.field private mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private mSource:I

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private mTemplateDuration:Landroid/widget/TextView;

.field private mTemplateInfoContainer:Landroid/widget/FrameLayout;

.field private mTemplateSegmentNum:Landroid/widget/TextView;

.field private mTemplateTitle:Landroid/widget/TextView;

.field private mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

.field private mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mVolumeSwitch:Landroid/widget/ImageView;

.field private mbMute:Z


# direct methods
.method public static synthetic $r8$lambda$8HGJMRhbZs41yBHw8ZKp_bZaZls(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->volumeSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3q8jtrH3GJP3CCRksgDRYXQUAI(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->lambda$runAnimationOnlySupportTBHoverUI$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerAnimation(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->isPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->startPlayIfNeed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_DemoDisplayUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;II)V
    .registers 10

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->isPlaying:Z

    .line 75
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mCurrentPage:I

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mLastScreenFormType:I

    .line 386
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    .line 88
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    .line 89
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateScrollRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    .line 91
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    .line 92
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOrientation:I

    return-void
.end method

.method private inflateView()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->home_page_demo_play_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$color;->vlog_homepage_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->demo_root_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    .line 108
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->demo_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->template_info_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateInfoContainer:Landroid/widget/FrameLayout;

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->demo_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVolumeSwitch:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->template_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateTitle:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->template_segment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateSegmentNum:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->template_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateDuration:Landroid/widget/TextView;

    return-void
.end method

.method private initEvents()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVolumeSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMemoryValue()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getVideoGuideVolume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVolumeSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    sget v0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_volume_colse:I

    goto :goto_11

    :cond_f
    sget v0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_volume_open:I

    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initPlayer()V
    .registers 4

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    const-string v2, "demo"

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->home_page_demo_video_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    return-void
.end method

.method private synthetic lambda$runAnimationOnlySupportTBHoverUI$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 215
    const-string/jumbo v0, "topMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    const-string/jumbo v0, "videoWidth"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 217
    const-string/jumbo v0, "videoHeight"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V
    .registers 10

    .line 207
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mLastScreenFormType:I

    if-eq v0, v1, :cond_4d

    .line 208
    const-string/jumbo v0, "topMargin"

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 209
    const-string/jumbo p3, "videoWidth"

    filled-new-array {p4, p5}, [I

    move-result-object p4

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 210
    const-string/jumbo p4, "videoHeight"

    filled-new-array {p6, p7}, [I

    move-result-object p5

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 211
    filled-new-array {p2, p3, p4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p3, 0x190

    .line 212
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_ad

    :cond_4d
    if-nez v0, :cond_5c

    .line 223
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_68

    .line 224
    :cond_5c
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_hover:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_68
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 225
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez p2, :cond_7b

    .line 226
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_87

    .line 227
    :cond_7b
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_hover:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_87
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez p2, :cond_9a

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_a6

    .line 230
    :cond_9a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_hover:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_a6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 231
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    :goto_ad
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mLastScreenFormType:I

    return-void
.end method

.method private startPlayIfNeed(Z)V
    .registers 12

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_eb

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mCurrentPage:I

    if-eqz v0, :cond_12

    goto/16 :goto_eb

    .line 329
    :cond_12
    :try_start_12
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay, demo path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", needAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3e

    .line 332
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_3e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v2, 0x271c

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 336
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz p1, :cond_ab

    .line 340
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vlogassets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    invoke-interface/range {v2 .. v9}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V

    goto :goto_ca

    .line 345
    :cond_ab
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZZ)V

    .line 349
    :goto_ca
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updatePlayerContent()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_cd} :catch_ce

    return-void

    :catch_ce
    move-exception v0

    move-object p0, v0

    .line 351
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSelectedTemplate, openFd failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    return-void
.end method

.method private stopPlay()V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 357
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    .line 358
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->stopPlay()V

    .line 361
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePlayerContent()V
    .registers 8

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTitle(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateSegmentNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getFragmentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_template_slot_num:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_template_duration:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cutsame/solution/template/model/TemplateItem;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePlayerRootParams(Z)V
    .registers 10

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_b

    goto/16 :goto_1fa

    .line 136
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, 0x0

    .line 137
    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight(D)I

    move-result v0

    .line 139
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    const/4 v3, 0x1

    const/16 v4, 0x31

    if-ne v2, v3, :cond_103

    .line 140
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_c8

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_99

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_6a

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 163
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_expand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_f6

    .line 154
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x15

    .line 156
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_expand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f6

    .line 148
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x51

    .line 150
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_expand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_f6

    .line 142
    :cond_c8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x13

    .line 144
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_expand:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 167
    :goto_f6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOrientation:I

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 169
    :cond_103
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 170
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_13f

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_hover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_13d
    move v4, v0

    goto :goto_14c

    .line 175
    :cond_13f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_13d

    .line 176
    :goto_14c
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_15e

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_15c
    move v5, v0

    goto :goto_16b

    .line 178
    :cond_15e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_hover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_15c

    .line 179
    :goto_16b
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_17d

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_hover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_17b
    move v6, v0

    goto :goto_18a

    .line 181
    :cond_17d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_17b

    .line 182
    :goto_18a
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_19c

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_19a
    move v7, v0

    goto :goto_1a9

    .line 184
    :cond_19c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_hover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_19a

    .line 185
    :goto_1a9
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_1bb

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_hover:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1b9
    move v2, v0

    goto :goto_1c8

    .line 187
    :cond_1bb
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1b9

    .line 188
    :goto_1c8
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-nez v0, :cond_1db

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_normal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1d8
    move v3, v0

    move-object v0, p0

    goto :goto_1e8

    .line 190
    :cond_1db
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_hover:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1d8

    .line 191
    :goto_1e8
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V

    move-object p0, v0

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 193
    :cond_1f2
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    if-eqz v2, :cond_1fb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    :goto_1fa
    return-void

    .line 195
    :cond_1fb
    :goto_1fb
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_demo_top_margin_increment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 198
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v0, v2

    .line 199
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVideoViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private volumeSwitchClick(Landroid/view/View;)V
    .registers 3

    .line 366
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->isPlaying:Z

    if-eqz v0, :cond_38

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_38

    .line 370
    :cond_b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeVideoGuideVolume(Z)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVolumeSwitch:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    if-eqz v0, :cond_1f

    sget v0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_volume_colse:I

    goto :goto_21

    :cond_1f
    sget v0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_volume_open:I

    :goto_21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mVolumeSwitch:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz p1, :cond_38

    .line 376
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mbMute:Z

    if-eqz p0, :cond_33

    const/4 p0, 0x0

    goto :goto_35

    :cond_33
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_35
    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->setVolume(F)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->inflateView()V

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->initPlayer()V

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->initEvents()V

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->initMemoryValue()V

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updatePlayerRootParams(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 237
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mScreenFormType:I

    .line 238
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updatePlayerRootParams(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->stopPlay()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 256
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mSource:I

    return-void

    .line 261
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->startPlayIfNeed(Z)V

    return-void
.end method

.method public setSource(I)V
    .registers 2

    .line 247
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mSource:I

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility, visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRootView.getAlpha(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_41

    .line 287
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->startPlayIfNeed(Z)V

    .line 288
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    if-nez p1, :cond_40

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    :cond_40
    return-void

    .line 292
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->stopPlay()V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 265
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 269
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->destroy()V

    .line 270
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    .line 273
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$color;->vlog_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mPlayerAnimation:Z

    .line 277
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 297
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mCurrentPage:I

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 242
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mOrientation:I

    const/4 p1, 0x1

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updatePlayerRootParams(Z)V

    return-void
.end method

.method public updateSelectedTemplate(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 6

    .line 301
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedTemplate, templateItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRootView.getAlpha(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->stopPlay()V

    return-void

    .line 310
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_47

    .line 311
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_47

    return-void

    .line 315
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 316
    :goto_4e
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 317
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->startPlayIfNeed(Z)V

    return-void
.end method
