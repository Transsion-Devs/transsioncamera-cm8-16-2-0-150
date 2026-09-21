.class public Lcom/transsion/camera/app/ui/ThermalThrottleUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThermalThrottleUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCutoutHeight:I

.field private mFadeAnimator:Landroid/animation/Animator;

.field protected mFadeInAnimId:I

.field protected mFadeOutAnimId:I

.field private mHandler:Landroid/os/Handler;

.field protected mHasShow:Z

.field protected mHasShowVideo:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field protected mParent:Landroid/view/ViewGroup;

.field private mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$KApuWM-9oqRgbE-esdGBvdnoHMw(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->lambda$updateLayout$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoHide(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doHide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInitView(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doInitView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShow(Lcom/transsion/camera/app/ui/ThermalThrottleUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doShow(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUninitView(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doUninitView()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractThermalThrottleUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShow:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShowVideo:Z

    .line 56
    new-instance v0, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelFadeAnimator()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private doHide()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->fadeOut(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private doInitView()V
    .registers 1

    return-void
.end method

.method private doShow(I)V
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_15

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShow:Z

    if-nez v0, :cond_15

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->getMediumTemperatureLayout()I

    move-result v0

    goto :goto_22

    :cond_15
    const/4 v0, 0x3

    if-ne p1, v0, :cond_21

    .line 105
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShowVideo:Z

    if-nez v0, :cond_21

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->getVideoThermalWarningLayout()I

    move-result v0

    goto :goto_22

    :cond_21
    move v0, v1

    .line 109
    :goto_22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doUninitView()V

    if-ne v0, v1, :cond_28

    goto :goto_54

    .line 114
    :cond_28
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->updateLayout()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->updateLayoutParameter()V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_54

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz v0, :cond_4f

    .line 121
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->hidePopupOption()V

    .line 123
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->fadeIn(Landroid/view/View;I)V

    :cond_54
    :goto_54
    return-void
.end method

.method private doUninitView()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    .line 207
    sget-object p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Remove complete."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$updateLayout$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->hide(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateLayoutParameter()V
    .registers 3

    .line 139
    iget v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mCutoutHeight:I

    if-lez v0, :cond_a

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected fadeIn(Landroid/view/View;I)V
    .registers 5

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->cancelFadeAnimator()V

    .line 240
    iget v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeInAnimId:I

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    .line 242
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected fadeOut(Landroid/view/View;)V
    .registers 4

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->cancelFadeAnimator()V

    .line 265
    iget v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeOutAnimId:I

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    .line 267
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected getMediumTemperatureLayout()I
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 146
    sget p0, Lcom/transsion/camera/R$layout;->warning_dialog_medium_dark:I

    return p0

    .line 148
    :cond_13
    sget p0, Lcom/transsion/camera/R$layout;->warning_dialog_medium_light:I

    return p0
.end method

.method protected getVideoThermalWarningLayout()I
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 157
    sget p0, Lcom/transsion/camera/R$layout;->warning_dialog_video_thermal_dark:I

    return p0

    .line 159
    :cond_13
    sget p0, Lcom/transsion/camera/R$layout;->warning_dialog_video_thermal_light:I

    return p0
.end method

.method public hide(Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 167
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    return-object p2
.end method

.method public initView()V
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHasShow:Z

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->doUninitView()V

    return-void
.end method

.method public setCutoutHeight(I)V
    .registers 2

    .line 213
    iput p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mCutoutHeight:I

    return-void
.end method

.method public setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    return-void
.end method

.method public show(I)V
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showVideoThermalWarning(I)V
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInitView()V
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateFadeAnim(II)V
    .registers 3

    .line 190
    iput p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeInAnimId:I

    .line 191
    iput p2, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mFadeOutAnimId:I

    return-void
.end method

.method public updateLayout()V
    .registers 3

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->cancelFadeAnimator()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->id_warning_dialog_medium:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    .line 132
    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
