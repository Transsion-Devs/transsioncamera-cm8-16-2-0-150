.class public Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field protected static final COLOR_ANIMATION_MAX_PROGRESS:F = 0.7f


# instance fields
.field private final ANIMATION_OFF:Ljava/lang/String;

.field private final ANIMATION_ON:Ljava/lang/String;

.field protected final DEFAULT_SELECTED:Z

.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field protected mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field protected final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected final mIconClickListener:Landroid/view/View$OnClickListener;

.field protected final mIconOffColor:I

.field protected final mIconOnColor:I

.field private mIconView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mIsIconSelected:Z

.field protected mIsSelfTimerStarted:Z

.field protected mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

.field protected mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

.field private mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

.field private mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method public static synthetic $r8$lambda$-v2fRdO2JfxT_ds8A-LjCXvEwHY(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GbiGpOaCxtyDMgrCCrWfhldtS1c(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MDSwitchtUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->DEFAULT_SELECTED:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 41
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v2, 0x67

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 42
    const-string v2, "motion_detect_switch_on.json"

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->ANIMATION_ON:Ljava/lang/String;

    .line 43
    const-string v2, "motion_detect_switch_off.json"

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->ANIMATION_OFF:Ljava/lang/String;

    .line 114
    new-instance v2, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 60
    sget v0, Lcom/transsion/camera/R$color;->motion_detect_icon_on:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    .line 61
    sget v0, Lcom/transsion/camera/R$color;->motion_detect_icon_off:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    .line 62
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private getCurrentIconView()Lcom/airbnb/lottie/LottieAnimationView;
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 136
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 6

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-eqz v0, :cond_5

    goto :goto_b

    .line 118
    :cond_5
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    .line 121
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mIconClickListener, onClick, return for animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1d
    const/16 v0, 0x8

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getCurrentIconView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 132
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 135
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_47

    .line 139
    :cond_6a
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->updateHint()V

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_80

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_7b

    .line 143
    const-string v0, "1"

    goto :goto_7d

    :cond_7b
    const-string v0, "0"

    .line 142
    :goto_7d
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 145
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_89

    const/16 v0, 0x15d

    .line 146
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 148
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 71
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 72
    sget v0, Lcom/transsion/camera/R$layout;->motion_detect_switch_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p1, p2, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->motion_detect_switch_icon_on:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->motion_detect_switch_icon_off:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p2, "motion_detect_switch_on.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    const-string p2, "motion_detect_switch_off.json"

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getCurrentIconView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 84
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 179
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 180
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    goto :goto_e

    :cond_c
    iget p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    :goto_e
    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2b

    div-float/2addr p1, v1

    .line 183
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

    :cond_2b
    return p2
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 219
    const-string p0, "key_best_moment_detect"

    return-object p0
.end method

.method protected getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->motion_detect_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 201
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->motion_detect_icon_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 206
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x53

    .line 207
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v2, v0, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideHint()V
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_11
    return-void
.end method

.method protected hideIcon()V
    .registers 2

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getCurrentIconView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v0, 0x8

    .line 260
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
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

    if-eq p1, v0, :cond_77

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eq p1, v0, :cond_71

    const/16 v0, 0x13

    if-eq p1, v0, :cond_6d

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_63

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5b

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x154

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_26

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_5b

    goto :goto_6c

    .line 280
    :cond_26
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideIcon()V

    return-void

    .line 295
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p1, :cond_6c

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-nez p1, :cond_6c

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->onUserInteraction()V

    return-void

    .line 300
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-nez p1, :cond_55

    .line 301
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

    .line 303
    :cond_55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->initGuide()V

    return-void

    .line 284
    :cond_5b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_6c

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->showIcon()V

    return-void

    .line 289
    :cond_63
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz p0, :cond_6c

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->pause()V

    :cond_6c
    :goto_6c
    return-void

    .line 277
    :cond_6d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->restoreDefaultState()V

    return-void

    .line 273
    :cond_71
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->showIcon()V

    return-void

    :cond_77
    const/4 p1, 0x1

    .line 268
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsSelfTimerStarted:Z

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideIcon()V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->hideHint()V

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 328
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 191
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_b
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public releaseResource()V
    .registers 1

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->restoreDefaultState()V

    return-void
.end method

.method protected restoreDefaultState()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreDefaultState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eq v0, v2, :cond_30

    .line 319
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_30

    .line 321
    const-string v0, "1"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 242
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3d

    .line 230
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 231
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceSetting, switch on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsIconSelected: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-ne v0, p1, :cond_3b

    return-void

    .line 237
    :cond_3b
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    :cond_3d
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 108
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOff:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionDetectSwitchIconOn:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method protected showIcon()V
    .registers 2

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->getCurrentIconView()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method protected switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 160
    new-instance v0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_10

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 337
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_17

    .line 338
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    .line 340
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    if-eqz v0, :cond_21

    .line 341
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;->unInitGuide()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mMotionCaptureGuideUI:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionCaptureGuideUI;

    .line 344
    :cond_21
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method protected updateHint()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz v1, :cond_f

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->motion_detect_switch_on_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 155
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->motion_detect_switch_off_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    :goto_17
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
