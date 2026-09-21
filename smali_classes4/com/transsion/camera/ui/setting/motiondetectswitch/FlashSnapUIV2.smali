.class public Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;
.super Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;
    }
.end annotation


# static fields
.field private static final ANIMATION:Ljava/lang/String; = "flash_snap_switch.json"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$bKJz0ETmoJlYp8amBLpQXT1Yp_c(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dakmMrNU_SXGU-tqNmYRYRj6-0I(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->lambda$new$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sYXv8aNxqh37qkaj_QQQGLkLj4M(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashSnapUIV2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;-><init>(Landroid/content/res/Resources;)V

    .line 70
    new-instance p1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 96
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 99
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .registers 6

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_5

    goto :goto_b

    .line 74
    :cond_5
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 77
    :cond_c
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 78
    sget-object p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mIconClickListener, onClick, return for animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1c
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2b

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_2c

    :cond_2b
    move p1, v1

    :goto_2c
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 83
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_39

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_3e

    .line 86
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 88
    :goto_3e
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_45

    sget p1, Lcom/transsion/camera/R$string;->motion_detect_switch_on_hint:I

    goto :goto_47

    :cond_45
    sget p1, Lcom/transsion/camera/R$string;->motion_detect_switch_off_hint:I

    .line 89
    :goto_47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->updateHint()V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 93
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "Vector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 95
    :cond_8c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 98
    :cond_98
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_6c

    .line 102
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_b5

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_b0

    .line 104
    const-string v0, "1"

    goto :goto_b2

    :cond_b0
    const-string v0, "0"

    .line 103
    :goto_b2
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 107
    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p1, :cond_c4

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isNeedShowGuide()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialog()V

    .line 111
    :cond_c4
    sget-object p1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIconClickListener, onClick, isSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 46
    sget v0, Lcom/transsion/camera/R$layout;->flash_snap_switch_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->flash_snap_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 49
    const-string p2, "flash_snap_switch.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$string;->motion_detect_switch_on_hint:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method protected getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 148
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 149
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    goto :goto_e

    :cond_c
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    .line 151
    :goto_e
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v1, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    :cond_16
    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_33

    div-float/2addr p1, v1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_33
    return p2
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->motion_detect_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->motion_detect_icon_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 189
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 192
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x53

    .line 193
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v2, v0, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected hideIcon()V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 174
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 8

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7a

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eq p1, v0, :cond_74

    const/16 v0, 0x13

    if-eq p1, v0, :cond_70

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_66

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5e

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_44

    const/16 v0, 0x154

    if-eq p1, v0, :cond_32

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_5e

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_2e

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_5e

    goto :goto_6f

    .line 233
    :cond_2e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->hideIcon()V

    return-void

    .line 249
    :cond_32
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p1, :cond_6f

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez p1, :cond_6f

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->onUserInteraction()V

    return-void

    .line 254
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-nez p1, :cond_6f

    .line 255
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    new-instance v3, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;ZLcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    return-void

    .line 238
    :cond_5e
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_6f

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->showIcon()V

    return-void

    .line 243
    :cond_66
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_6f

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->pause()V

    :cond_6f
    :goto_6f
    return-void

    .line 229
    :cond_70
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->restoreDefaultState()V

    return-void

    .line 225
    :cond_74
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->showIcon()V

    return-void

    :cond_7a
    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->hideIcon()V

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideHint()V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 265
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;->setOrientation(IZ)V

    :cond_a
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 200
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    if-eqz p1, :cond_e

    .line 201
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_1d

    .line 63
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_c
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method protected showIcon()V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 116
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method
