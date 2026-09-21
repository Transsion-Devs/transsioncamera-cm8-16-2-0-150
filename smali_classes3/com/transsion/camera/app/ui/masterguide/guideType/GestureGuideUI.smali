.class public Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;
.super Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;
.source "SourceFile"


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mGestureGuideLayout:Landroid/widget/FrameLayout;

.field private mGestureGuideRoot:Landroid/widget/LinearLayout;

.field private mLottieAnimView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$h7l_OnTkVw01EfNS3k9h7_dQMLk(Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->lambda$showGuideView$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private initResource()V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mDescription:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 69
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$string;->asd_gesture_master_guide_ui_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->startAnimation()V

    return-void
.end method

.method private synthetic lambda$showGuideView$0()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->getGuideViewVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideRoot:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mLottieAnimView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_14

    .line 79
    const-string v1, "arrow_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mLottieAnimView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mLottieAnimView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_14
    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    if-nez p3, :cond_7

    goto :goto_3d

    .line 43
    :cond_7
    sget p1, Lcom/transsion/camera/R$layout;->gesture_guide_ui_layout:I

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    sget p2, Lcom/transsion/camera/R$id;->gesture_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    .line 45
    sget p2, Lcom/transsion/camera/R$id;->arrow_anim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mLottieAnimView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 46
    sget p2, Lcom/transsion/camera/R$id;->gesture_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideRoot:Landroid/widget/LinearLayout;

    .line 47
    sget p2, Lcom/transsion/camera/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mDescription:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideRoot:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    return-object p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public showGuideView()V
    .registers 5

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->initResource()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mGestureGuideRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/GestureGuideUI;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_17
    return-void
.end method
