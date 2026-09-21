.class public abstract Lcom/transsion/camera/app/ui/AbstractThumbnailUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThumbnailUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;
    }
.end annotation


# instance fields
.field private final mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEnabled:Z

.field protected final mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModeName:Ljava/lang/String;

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

.field protected mOrientation:I

.field private final mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

.field private mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

.field private mRecordingAnimator:Landroid/animation/Animator;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mThumbnailBg:Landroid/view/View;

.field protected mThumbnailLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field protected mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

.field private final mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$6KU3Xupan_N9R6u4H1NbZS9EguU(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->lambda$performPendingClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$9MI0BQDH-izOoq66ngww54l514Y(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    return-void
.end method

.method public static synthetic $r8$lambda$UqZcev8CU9W3CekGUr9BjJUzH44(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$idi4tr_9SmyyVU1ClUEmfPuNl0I(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->lambda$playThumbLottieAnimation$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabled(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnThumbnailClickListener(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendPopupTipsView(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPendingClick(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->setPendingClick(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrapDrawable(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOrientation:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mEnabled:Z

    .line 116
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 200
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 574
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "images"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 575
    const-string/jumbo p0, "thumbnail_anim.json"

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 576
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$performPendingClick$1()V
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$playThumbLottieAnimation$2()V
    .registers 1

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-eqz v0, :cond_c

    .line 125
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private setPendingClick(Z)V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 570
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onThumbnailPendingClicked(Z)V

    return-void
.end method

.method private wrapDrawable()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_thumbnail_black:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageResource(I)V

    return-void

    .line 156
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mModeName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateThumbnailDefaultView(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method protected beforeThumbnailAnimation()V
    .registers 1

    return-void
.end method

.method public cancelPendingClick()V
    .registers 2

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->setPendingClick(Z)V

    return-void
.end method

.method public getCurrentMode()Ljava/lang/String;
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 1

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 1

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    return-object p0
.end method

.method public hideRecommendPopupTips()V
    .registers 3

    .line 266
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHdPopTipsSupport:Z

    if-eqz v0, :cond_f

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    :cond_f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFramePopTipsSupport:Z

    if-eqz v0, :cond_1e

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_25

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->hide()V

    :cond_25
    return-void
.end method

.method protected hideThumbnailBg()V
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 389
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 92
    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_thumbnail:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    sget v2, Lcom/transsion/camera/R$id;->previous_shutter_panel_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    .line 94
    sget v2, Lcom/transsion/camera/R$id;->btn_shutter_panel_thumbnail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mContext:Landroid/content/Context;

    .line 96
    sget v2, Lcom/transsion/camera/R$id;->thumbnail_anim:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 97
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 98
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3d

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 99
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 101
    :cond_3d
    sget v1, Lcom/transsion/camera/R$id;->view_thumbnail_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    .line 102
    sget v1, Lcom/transsion/camera/R$id;->shutter_panel_thumbnail_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 103
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHdPopTipsSupport:Z

    if-nez v0, :cond_6e

    .line 107
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFramePopTipsSupport:Z

    if-eqz v0, :cond_94

    :cond_6e
    if-eqz p2, :cond_75

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_79

    :cond_75
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 109
    :goto_79
    new-instance p2, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    .line 110
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setCloseImageVisible(I)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$color;->popup_tips_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setBackGroundColor(I)V

    .line 113
    :cond_94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method public isPendingClick()Z
    .registers 1

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isUpdateThumbnail()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 318
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_e

    .line 319
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->onOrientationChanged(I)V

    :cond_e
    return-void
.end method

.method public performPendingClick()V
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performPendingClick mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingClicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mEnabled:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPendingClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->setPendingClick(Z)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-eqz v0, :cond_3e

    .line 487
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3e
    return-void
.end method

.method public playThumbLottieAnimation()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_c

    .line 504
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected playThumbnailAnimation()V
    .registers 8

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x50

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/AnimationUtils;->startScaleAnimation(Landroid/view/View;JFFFF)V

    return-void
.end method

.method protected releaseResource()V
    .registers 1

    return-void
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 555
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_2c

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public restoreRecommendPopupTips()V
    .registers 6

    .line 281
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHdPopTipsSupport:Z

    const/4 v1, 0x0

    const-string v2, "_global_scope"

    const-string v3, "false"

    if-eqz v0, :cond_14

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v4, "key_ultra_hd_frame_pop_up_tips_showed"

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    :cond_14
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFramePopTipsSupport:Z

    if-eqz v0, :cond_23

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_ai_frame_pop_up_on_thunmbnail_tips_showed"

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_23
    return-void
.end method

.method public setClickable(Z)V
    .registers 2

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-eqz p0, :cond_7

    .line 477
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 462
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    if-eqz v0, :cond_11

    if-nez p1, :cond_e

    const/4 v0, 0x0

    .line 464
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->setPendingClick(Z)V

    .line 466
    :cond_e
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mEnabled:Z

    return-void

    .line 469
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-eqz p0, :cond_18

    .line 470
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
    return-void
.end method

.method public setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOnThumbnailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbnail cachedBitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setThumbnailClickable(Z)V
    .registers 2

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-eqz p0, :cond_7

    .line 331
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_7
    return-void
.end method

.method public setupViews()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportThumbnailTouchDown:Z

    if-eqz v0, :cond_33

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Lcom/transsion/camera/app/ui/AbstractThumbnailUI-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_43

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mPreviousThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->wrapDrawable()V

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->hideThumbnailBg()V

    return-void

    .line 144
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] updateThumbnailView CachedBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showRecommendPopupTips(I)V
    .registers 5

    .line 236
    const-string v0, "_global_scope"

    const-string v1, "false"

    if-eqz p1, :cond_2f

    const/4 v2, 0x1

    if-eq p1, v2, :cond_a

    return-void

    .line 249
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_ai_frame_pop_up_on_thunmbnail_tips_showed"

    invoke-virtual {p1, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopupTips, return for ai frame showed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 238
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_ultra_hd_frame_pop_up_tips_showed"

    invoke-virtual {p1, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopupTips, return for ultra hd showed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_45
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 539
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_4a

    .line 543
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_4f
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 307
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->releaseResource()V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mUltraHdShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mAiFrameShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mHasImage:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-nez v0, :cond_11

    return-void

    .line 413
    :cond_11
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateThumbnailDefaultView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    if-nez v0, :cond_12

    goto/16 :goto_ae

    .line 166
    :cond_12
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_a7

    .line 169
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 170
    const-string v1, "4:3"

    if-nez p2, :cond_2e

    .line 171
    const-string p2, "key_picture_ratio"

    const-string v2, "_global_scope"

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    .line 173
    :cond_2e
    invoke-static {p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    :goto_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThumbnailDefaultView ratio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mModeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "1:1"

    .line 178
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 179
    const-string p2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 180
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInUltraHDMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 181
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_89

    .line 189
    :cond_7e
    sget v0, Lcom/transsion/camera/R$drawable;->ic_thumbnail_black_light_ui5:I

    .line 190
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 191
    sget v0, Lcom/transsion/camera/R$drawable;->ic_thumbnail_black_dark_ui5:I

    goto :goto_a1

    .line 182
    :cond_89
    :goto_89
    sget v0, Lcom/transsion/camera/R$drawable;->ic_thumbnail_black_dark_ui5:I

    .line 183
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9f

    .line 184
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInPanoMode(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9f

    const-string p2, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 185
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 186
    :cond_9f
    sget v0, Lcom/transsion/camera/R$drawable;->ic_thumbnail_black_light_ui5:I

    .line 194
    :cond_a1
    :goto_a1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageResource(I)V

    return-void

    .line 196
    :cond_a7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mThumbnailView:Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_thumbnail:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/RoundedThumbnailView;->setImageResource(I)V

    :cond_ae
    :goto_ae
    return-void
.end method
