.class public Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;
.super Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;
    }
.end annotation


# instance fields
.field private final ANIMATION:Ljava/lang/String;

.field private final DEFAULT_SELECTED:Z

.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mDataCallBackAllowShowIcon:Z

.field private mFilterShowing:Z

.field protected final mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private mNeedShowIcon:Z

.field private mPopSettingViewShowing:Z

.field private mPopWindowViewShowing:Z

.field private mZoomWeelUIShowing:Z


# direct methods
.method public static synthetic $r8$lambda$4ZFDKQSAxEmSeOosOA6nPE3Zols(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LK3RSgFqK-YvCAqYEnRKS7qMlaI(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LPFfjvIBXxeDoKugNYiEvdda_Z0(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->lambda$hideIcon$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$lGhLr4Su7mGEfp0W_3sz-UtUghI(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->lambda$new$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yDSSPn7IfYc_XSXWxBQcOtAALps(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->lambda$showIcon$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedShowIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomWeelUIShowing(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDataCallBackAllowShowIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIconDefault(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->setIconDefault()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchIcon(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIcon(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;-><init>(Landroid/content/res/Resources;)V

    .line 36
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "FlashSnapLiteUI"

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->DEFAULT_SELECTED:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    .line 44
    const-string v0, "flash_snap_switch.json"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->ANIMATION:Ljava/lang/String;

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 90
    new-instance p1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private isFacingBack()Z
    .registers 4

    .line 274
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 275
    :goto_1f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFacingBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isIconVisible(Lcom/airbnb/lottie/LottieAnimationView;)Z
    .registers 2

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$hideIcon$4()V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x158

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideIcon "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 113
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 116
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_5

    goto :goto_b

    .line 94
    :cond_5
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 97
    :cond_c
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mIconClickListener, onClick, return for animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1c
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2b

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_2c

    :cond_2b
    move p1, v1

    :goto_2c
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 103
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_39

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_3e

    .line 106
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 108
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 110
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "Vector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 112
    :cond_73
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 115
    :cond_7f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_53

    .line 119
    :cond_8c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->updateHint()V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9f

    .line 121
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_9a

    .line 122
    const-string v0, "value_off_manual_on"

    goto :goto_9c

    :cond_9a
    const-string v0, "value_on_manual_off"

    .line 121
    :goto_9c
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 124
    :cond_9f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_b5

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isNeedShowGuide()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialog()V

    .line 128
    :cond_b2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->disableTwinkleGuide()V

    .line 130
    :cond_b5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_be

    const/16 v0, 0x157

    goto :goto_c0

    :cond_be
    const/16 v0, 0x158

    :goto_c0
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method private synthetic lambda$showIcon$3()V
    .registers 4

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isFacingBack()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    if-nez v0, :cond_a5

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 287
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_79

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 290
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_66

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_79

    .line 292
    :cond_66
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_79

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 296
    :cond_79
    :goto_79
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_91

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 300
    :cond_91
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_a5

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->disableTwinkleGuide()V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x157

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_a5
    return-void
.end method

.method private setIconDefault()V
    .registers 3

    .line 351
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_13

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    :cond_13
    return-void
.end method

.method private switchIcon(I)V
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 327
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_e

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_27

    .line 329
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "same status, return!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_85

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 337
    :cond_58
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez p1, :cond_64

    const/4 p1, 0x0

    goto :goto_66

    :cond_64
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_66
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 340
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    if-eqz p1, :cond_75

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->updateHint()V

    .line 343
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_85

    .line 344
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p0, :cond_80

    .line 345
    const-string p0, "1"

    goto :goto_82

    :cond_80
    const-string p0, "0"

    .line 344
    :goto_82
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_85
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 55
    sget p3, Lcom/transsion/camera/R$layout;->flash_snap_switch_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->flash_snap_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 58
    const-string p2, "flash_snap_switch.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method disableTwinkleGuide()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 419
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideTwinkleGuide()V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->resetTwinkleGuide()V

    :cond_c
    return-void
.end method

.method protected getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 158
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 159
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    goto :goto_e

    :cond_c
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    .line 161
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

    .line 169
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

.method public hideEntryView()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_35

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView: translationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", translationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method protected hideIcon()V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_17

    .line 315
    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isIconVisible(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_17

    .line 317
    new-instance v1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_17
    :goto_17
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

    if-eqz p1, :cond_e0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_dc

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d5

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_bc

    const/16 v0, 0x145

    if-eq p1, v0, :cond_e0

    const/16 v0, 0x154

    if-eq p1, v0, :cond_b4

    const/16 v0, 0xb

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a9

    const/16 v0, 0xc

    if-eq p1, v0, :cond_a1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_9b

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_98

    const/16 v0, 0x30

    if-eq p1, v0, :cond_90

    const/16 v0, 0x31

    if-eq p1, v0, :cond_7c

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_74

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_64

    packed-switch p1, :pswitch_data_e4

    goto/16 :goto_db

    .line 230
    :pswitch_3d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    return-void

    .line 227
    :pswitch_40
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    return-void

    .line 233
    :pswitch_43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5PrivacyMode:Z

    if-nez p1, :cond_50

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideEntryView()V

    .line 235
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 237
    :cond_50
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 238
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 239
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 240
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 241
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    .line 242
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_db

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->pause()V

    return-void

    .line 213
    :cond_64
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_71

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    if-nez p1, :cond_71

    .line 214
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    .line 217
    :cond_71
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    return-void

    .line 198
    :cond_74
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    .line 200
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    return-void

    .line 220
    :cond_7c
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_8d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    if-nez p1, :cond_8d

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    if-nez p1, :cond_8d

    .line 221
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    .line 224
    :cond_8d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    return-void

    .line 203
    :cond_90
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 204
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    .line 252
    :cond_98
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    return-void

    .line 248
    :cond_9b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    .line 190
    :cond_a1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 191
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    return-void

    .line 184
    :cond_a9
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 185
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideHint()V

    return-void

    .line 259
    :cond_b4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_db

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->onUserInteraction()V

    return-void

    .line 264
    :cond_bc
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-nez p1, :cond_db

    .line 265
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    new-instance v3, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/storage/DataStore;ZLcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    return-void

    .line 208
    :cond_d5
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_db

    .line 209
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    :cond_db
    :goto_db
    return-void

    .line 195
    :cond_dc
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->restoreDefaultState()V

    return-void

    .line 256
    :cond_e0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    :pswitch_data_e4
    .packed-switch 0x1c
        :pswitch_43
        :pswitch_40
        :pswitch_3d
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 411
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 413
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

.method protected restoreDefaultState()V
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreDefaultState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_33

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 402
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 404
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_3c

    .line 405
    const-string v0, "value_on_manual_off"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 176
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 177
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showIcon()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isIconVisible(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    .line 283
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method protected switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 69
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->unInit()V

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_d

    .line 393
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    :cond_d
    return-void
.end method

.method protected updateHint()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_5

    return-void

    .line 147
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v1, :cond_17

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->flash_snap_lite_switch_on_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_22

    .line 149
    :cond_17
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_22

    goto :goto_2a

    .line 153
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 150
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
