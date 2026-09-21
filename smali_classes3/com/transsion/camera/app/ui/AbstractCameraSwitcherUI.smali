.class public abstract Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/ICameraSwitcherUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

.field protected mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mContext:Landroid/content/Context;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mModeName:Ljava/lang/String;

.field private mOldValue:Z

.field private mRecordingAnimator:Landroid/animation/Animator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSwitchListener(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOldValue(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mvibrateWhenCamSwitch(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->vibrateWhenCamSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrapDrawable(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->wrapDrawable()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractCameraSwitcherUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    return-void
.end method

.method private vibrateWhenCamSwitch()V
    .registers 5

    .line 133
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 134
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string v0, "cam_switch.he"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportVibrate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "vibrator"

    if-eqz v0, :cond_33

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/32 v2, 0x78a27630    # 9.999458874E-315

    .line 139
    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    .line 143
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_46

    const-wide/16 v2, 0x32

    .line 146
    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_46
    return-void
.end method

.method private wrapDrawable()V
    .registers 3

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    if-eqz v0, :cond_c

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_camera_switcher_black:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 228
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mModeName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->updateSwitchView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getAnimatorDrawableId(Z)I
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    .line 67
    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_camera_switcher:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    sget v0, Lcom/transsion/camera/R$id;->btn_shutter_panel_camera_switcher:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 71
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 73
    :cond_38
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->camera_switcher_front:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    .line 74
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->camera_switcher_back:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    :goto_55
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_7

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_7
    return-void
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 297
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 301
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2c

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_7

    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setupViews()V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->wrapDrawable()V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->bottomButtonPressSealAnimation(Landroid/view/View;)V

    return-void
.end method

.method public startAnimation()V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 157
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->getAnimatorDrawableId(Z)I

    move-result v0

    if-lez v0, :cond_27

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 162
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_27
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 284
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 285
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_4a

    .line 289
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_4f
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 97
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateLayoutParams(Z)V
    .registers 5

    .line 188
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayoutParams lensVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_21

    .line 190
    const-string p0, "mCameraSwitcherView is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_36

    .line 198
    sget p1, Lcom/transsion/camera/R$dimen;->camera_switcher_with_lens_margin_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_3c

    .line 200
    :cond_36
    sget p1, Lcom/transsion/camera/R$dimen;->camera_switcher_margin_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 202
    :goto_3c
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateModeName(Ljava/lang/String;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public updateSwitchView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 234
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_a

    goto/16 :goto_8d

    .line 238
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_86

    if-nez p2, :cond_2a

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 243
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    const-string v0, "key_picture_size"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    :cond_2a
    const-string v0, "4:3"

    if-eqz p2, :cond_33

    .line 248
    invoke-static {p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_34

    :cond_33
    move-object p2, v0

    .line 253
    :goto_34
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "1:1"

    .line 254
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_58

    .line 264
    :cond_43
    sget p2, Lcom/transsion/camera/R$drawable;->camera_switcher_normal_black_light_ui5:I

    .line 265
    const-string v0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mModeName:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 267
    :cond_55
    sget p2, Lcom/transsion/camera/R$drawable;->camera_switcher_normal_black_dark_ui5:I

    goto :goto_80

    .line 255
    :cond_58
    :goto_58
    sget p2, Lcom/transsion/camera/R$drawable;->camera_switcher_normal_black_dark_ui5:I

    .line 256
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 257
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInPanoMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mModeName:Ljava/lang/String;

    .line 258
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mModeName:Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isInPanoMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 260
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 261
    :cond_7e
    sget p2, Lcom/transsion/camera/R$drawable;->camera_switcher_normal_black_light_ui5:I

    .line 270
    :cond_80
    :goto_80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 272
    :cond_86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_camera_switcher:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8d
    :goto_8d
    return-void
.end method
