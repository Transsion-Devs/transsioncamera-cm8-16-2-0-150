.class public Lcom/transsion/widgetslib/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DIMEN_LARGE:I = 0x1

.field private static final DIMEN_MEDIUM:I = 0x0

.field private static final DIMEN_SMALL:I = 0x2


# instance fields
.field private mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mDimenMode:I

.field private mIsAutoAnim:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowOnColorFull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    .line 36
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/LoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    .line 41
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/LoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    .line 46
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/LoadingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    .line 51
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/LoadingView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/view/LoadingView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    return p0
.end method

.method private init()V
    .registers 5

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    .line 63
    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_layout_loading:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    sget v1, Lcom/transsion/widgetslib/R$id;->loadingView:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    new-instance v1, Lcom/transsion/widgetslib/view/LoadingView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/LoadingView$1;-><init>(Lcom/transsion/widgetslib/view/LoadingView;Z)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mRunnable:Ljava/lang/Runnable;

    .line 113
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private replayAnim(Ljava/lang/String;)V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z

    if-eqz v0, :cond_9

    goto :goto_56

    :cond_9
    const/4 v0, 0x0

    .line 180
    :try_start_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v1

    .line 183
    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 184
    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 186
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_3d
    .catchall {:try_start_a .. :try_end_30} :catchall_3b

    if-eqz v0, :cond_56

    .line 192
    :try_start_32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    :catchall_3b
    move-exception p0

    goto :goto_4b

    :catch_3d
    move-exception p0

    .line 188
    :try_start_3e
    const-string p1, "LoadingView"

    const-string v1, "open asset file error"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    if-eqz v0, :cond_56

    .line 192
    :try_start_47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_36

    goto :goto_56

    :goto_4b
    if-eqz v0, :cond_55

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    :cond_55
    :goto_55
    throw p0

    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 124
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    if-eqz v0, :cond_e

    .line 125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 129
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setAutoAnim(Z)V
    .registers 2

    .line 146
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    return-void
.end method

.method public setDarkMode()V
    .registers 3

    .line 151
    iget v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 152
    const-string v0, "loading_small_night.json"

    goto :goto_10

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 154
    const-string v0, "loading_large_night.json"

    goto :goto_10

    .line 156
    :cond_e
    const-string v0, "loading_medium_night.json"

    .line 158
    :goto_10
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->replayAnim(Ljava/lang/String;)V

    return-void
.end method

.method public setNormalMode()V
    .registers 3

    .line 163
    iget v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 164
    const-string v0, "loading_small.json"

    goto :goto_10

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 166
    const-string v0, "loading_large.json"

    goto :goto_10

    .line 168
    :cond_e
    const-string v0, "loading_medium.json"

    .line 170
    :goto_10
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->replayAnim(Ljava/lang/String;)V

    return-void
.end method

.method public showOnColorFull(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z

    .line 56
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    .line 57
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/LoadingView;->init()V

    return-void
.end method

.method public start()V
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 140
    :cond_d
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_14

    .line 141
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_14
    :goto_14
    return-void
.end method
