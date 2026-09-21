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

.field private mIconView:Lcom/airbnb/lottie/LottieAnimationView;

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

.method static bridge synthetic -$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/airbnb/lottie/LottieAnimationView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

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

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;-><init>(Landroid/content/res/Resources;)V

    .line 34
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "FlashSnapLiteUI"

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->DEFAULT_SELECTED:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    .line 42
    const-string v0, "flash_snap_switch.json"

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->ANIMATION:Ljava/lang/String;

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 89
    new-instance p1, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private isFacingBack()Z
    .registers 4

    .line 270
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

    .line 271
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

    .line 354
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

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x158

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideIcon "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 112
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

    .line 115
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

    .line 90
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_5

    goto :goto_b

    .line 93
    :cond_5
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 96
    :cond_c
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mIconClickListener, onClick, return for animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_1c
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2b

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_2c

    :cond_2b
    move p1, v1

    :goto_2c
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 102
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_39

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_3e

    .line 105
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 107
    :goto_3e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 109
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "Vector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 111
    :cond_73
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 114
    :cond_7f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_53

    .line 118
    :cond_8c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->updateHint()V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9f

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_9a

    .line 121
    const-string v0, "value_off_manual_on"

    goto :goto_9c

    :cond_9a
    const-string v0, "value_on_manual_off"

    .line 120
    :goto_9c
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 123
    :cond_9f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_b2

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->isNeedShowGuide()Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->showDialog()V

    .line 128
    :cond_b2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_bb

    const/16 v0, 0x157

    goto :goto_bd

    :cond_bb
    const/16 v0, 0x158

    :goto_bd
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 129
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

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isFacingBack()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    if-eqz v0, :cond_9e

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIcon1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 283
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_75

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 286
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_62

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_75

    .line 288
    :cond_62
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_75

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 292
    :cond_75
    :goto_75
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8d

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 296
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_9e

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x157

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_9e
    return-void
.end method

.method private setIconDefault()V
    .registers 3

    .line 346
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_13

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    :cond_13
    return-void
.end method

.method private switchIcon(I)V
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_e

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_27

    .line 324
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

    .line 327
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_85

    .line 328
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

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 332
    :cond_58
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_64

    const/4 p1, 0x0

    goto :goto_66

    :cond_64
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_66
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 335
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    if-eqz p1, :cond_75

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->updateHint()V

    .line 338
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_85

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p0, :cond_80

    .line 340
    const-string p0, "1"

    goto :goto_82

    :cond_80
    const-string p0, "0"

    .line 339
    :goto_82
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_85
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 52
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 53
    sget p3, Lcom/transsion/camera/R$layout;->flash_snap_switch_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->flash_snap_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    const-string p2, "flash_snap_switch.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method protected getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 156
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 157
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    goto :goto_e

    :cond_c
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    .line 159
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

    .line 167
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

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_35

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView: translationX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", translationY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method protected hideIcon()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_17

    .line 310
    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isIconVisible(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_17

    .line 312
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

    if-eqz p1, :cond_d8

    const/16 v0, 0x13

    if-eq p1, v0, :cond_d4

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_b4

    const/16 v0, 0x145

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x154

    if-eq p1, v0, :cond_ac

    const/16 v0, 0xb

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_99

    const/16 v0, 0x19

    if-eq p1, v0, :cond_93

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_90

    const/16 v0, 0x30

    if-eq p1, v0, :cond_88

    const/16 v0, 0x31

    if-eq p1, v0, :cond_74

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_6c

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_5c

    packed-switch p1, :pswitch_data_dc

    goto/16 :goto_d3

    .line 228
    :pswitch_3d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    return-void

    .line 225
    :pswitch_40
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    return-void

    .line 231
    :pswitch_43
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideEntryView()V

    .line 232
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 233
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 234
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 235
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 236
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 237
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    .line 238
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_d3

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->pause()V

    return-void

    .line 211
    :cond_5c
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_69

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    if-nez p1, :cond_69

    .line 212
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    .line 215
    :cond_69
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    return-void

    .line 196
    :cond_6c
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    .line 198
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    return-void

    .line 218
    :cond_74
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_85

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopSettingViewShowing:Z

    if-nez p1, :cond_85

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mPopWindowViewShowing:Z

    if-nez p1, :cond_85

    .line 219
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    .line 222
    :cond_85
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    return-void

    .line 201
    :cond_88
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 202
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mFilterShowing:Z

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    .line 248
    :cond_90
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    return-void

    .line 244
    :cond_93
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mZoomWeelUIShowing:Z

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    .line 188
    :cond_99
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 189
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->showIcon()V

    return-void

    .line 182
    :cond_a1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 183
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideHint()V

    return-void

    .line 255
    :cond_ac
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_d3

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->onUserInteraction()V

    return-void

    .line 260
    :cond_b4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-nez p1, :cond_d3

    .line 261
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

    .line 206
    :cond_cd
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_d3

    .line 207
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mNeedShowIcon:Z

    :cond_d3
    :goto_d3
    return-void

    .line 193
    :cond_d4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->restoreDefaultState()V

    return-void

    .line 252
    :cond_d8
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->hideIcon()V

    return-void

    :pswitch_data_dc
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

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected restoreDefaultState()V
    .registers 4

    .line 393
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

    .line 394
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_33

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 397
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 399
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_3c

    .line 400
    const-string v0, "value_on_manual_off"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 174
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$MotionDetectSwitchCallback;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 175
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

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->isIconVisible(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 280
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

    .line 68
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 385
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->unInit()V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mDataCallBackAllowShowIcon:Z

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_d

    .line 388
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    :cond_d
    return-void
.end method

.method protected updateHint()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v1, :cond_17

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->flash_snap_lite_switch_on_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_22

    .line 147
    :cond_17
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-nez v0, :cond_22

    goto :goto_2a

    .line 151
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 148
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
