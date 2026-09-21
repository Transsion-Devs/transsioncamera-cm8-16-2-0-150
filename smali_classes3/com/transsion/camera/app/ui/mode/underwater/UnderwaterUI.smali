.class public Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;
.super Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCaptureTitle:Landroid/view/View;

.field private mCapturedNumber:Landroid/widget/TextView;

.field private mCountDownAnimRoot:Landroid/view/View;

.field private mCountDownDisappearAnim:Landroid/animation/ObjectAnimator;

.field private mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field private mCountDownRoot:Landroid/view/View;

.field private mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

.field private final mCountDownViewListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field private mDrainageAnimRoot:Landroid/view/View;

.field protected mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

.field protected mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

.field private mDrainageLimitRoot:Landroid/view/View;

.field private mDrainageRoot:Landroid/view/View;

.field protected mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mExitOverlay:Landroid/view/View;

.field private mIsNoticeOn:Z

.field private mIsPause:Z

.field private mKeyVolumeDownPrompt:Landroid/widget/TextView;

.field private mKeyVolumeUpPrompt:Landroid/widget/TextView;

.field private mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

.field private mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

.field private mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mNoticeDialogCheckbox:Landroid/widget/CheckBox;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPowerLongPressed:Z

.field private mUnifyCaptureAnimation:Z

.field private mVideoSnapShotCover:Landroid/view/View;

.field private mVideoSnapShotCoverAlpha:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$fEmp2VUkj6i-VPKhYsJ2Uy_-Lt0(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->lambda$updateCapturedNumber$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownAnimRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownAnimRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownDisappearAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownRoot(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownView(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressedPowerReceiver(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerLongPressed(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mPowerLongPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSnapShotCover(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountDownDisappearAnim(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;Landroid/animation/ObjectAnimator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownDisappearAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnderwaterUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 7

    .line 115
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mPowerLongPressed:Z

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsPause:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mUnifyCaptureAnimation:Z

    .line 93
    new-instance p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_52

    .line 117
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    .line 118
    const-string p2, "key_underwater_notice"

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    .line 118
    const-string p4, "on"

    invoke-virtual {p1, p2, p4, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsNoticeOn:Z

    .line 121
    sget-object p2, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "hideNotice getValue noticeState = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsNoticeOn = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsNoticeOn:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_74

    .line 124
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mWindowManager:Landroid/view/WindowManager;

    .line 125
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, -0x1

    .line 126
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p2, -0x3

    .line 128
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 p2, 0x100

    .line 129
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 131
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$bool;->unify_capture_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mUnifyCaptureAnimation:Z

    .line 132
    new-instance p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$2;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownViewListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;Z)V
    .registers 14

    if-eqz p6, :cond_c

    .line 109
    sget p6, Lcom/transsion/camera/R$layout;->underwater_video_layout:I

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v3, p6

    goto :goto_f

    :cond_c
    sget p6, Lcom/transsion/camera/R$layout;->underwater_layout:I

    goto :goto_4

    .line 108
    :goto_f
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private createNoticeView()Landroid/view/View;
    .registers 4

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->underwater_notice:I

    const/4 v2, 0x0

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 555
    sget v1, Lcom/transsion/camera/R$id;->underwater_notice_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialogCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private synthetic lambda$updateCapturedNumber$0(IZ)V
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    .line 322
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 323
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3d
    if-eqz p2, :cond_4d

    if-lez p1, :cond_4d

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCaptureTitle:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 329
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCaptureTitle:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSnapShotCoverLayout()V
    .registers 6

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_9

    goto :goto_28

    .line 220
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 222
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 223
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 224
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_28
    :goto_28
    return-void
.end method

.method private updateSnapshotCoverView()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 310
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLowLight:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mUnifyCaptureAnimation:Z

    if-nez v0, :cond_14

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 313
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1b
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .registers 4

    .line 189
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 190
    sget v1, Lcom/transsion/camera/R$id;->video_snap_shot_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->snap_shot_cover_alpha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCoverAlpha:F

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateSnapShotCoverLayout()V

    .line 194
    sget v1, Lcom/transsion/camera/R$id;->key_volume_up_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPrompt:Landroid/widget/TextView;

    .line 195
    sget v1, Lcom/transsion/camera/R$id;->key_volume_up_prompt_long_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

    .line 196
    sget v1, Lcom/transsion/camera/R$id;->key_volume_down_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeDownPrompt:Landroid/widget/TextView;

    .line 202
    sget v1, Lcom/transsion/camera/R$id;->underwater_captured_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCaptureTitle:Landroid/view/View;

    .line 203
    sget v1, Lcom/transsion/camera/R$id;->underwater_captured_number:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    .line 204
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_6e

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getSeparateCaptureNumber()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6e
    return-object v0
.end method

.method public hideDrainageLimit()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageLimitRoot:Landroid/view/View;

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->removeOverlay(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public hideNotice(Z)V
    .registers 6

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialogCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_65

    if-eqz p1, :cond_41

    .line 502
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_41

    .line 504
    sget-object p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideNotice setValue KEY_UNDERWATER_NOTICE_OFF"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 507
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 505
    const-string v2, "key_underwater_notice"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 510
    :cond_41
    sget-object p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideNotice"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 512
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPrompt:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/R$string;->underwater_key_volume_up_prompt_capture:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeDownPrompt:Landroid/widget/TextView;

    sget p1, Lcom/transsion/camera/R$string;->underwater_key_volume_down_prompt_start_video:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_65
    return-void
.end method

.method public isPowerLongPressed()Z
    .registers 1

    .line 434
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mPowerLongPressed:Z

    return p0
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 212
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 213
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateSnapShotCoverLayout()V

    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .registers 6

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playCaptureAnimation +"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->updateSnapshotCoverView()V

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCover:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mVideoSnapShotCoverAlpha:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    aput v3, v1, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playDrainageAnimation()V
    .registers 5

    .line 443
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->playDrainageAnimation()V

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$layout;->underwater_exit_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    .line 447
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageRoot:Landroid/view/View;

    if-nez v0, :cond_3a

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->underwater_drainage_root_group:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageRoot:Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->underwater_drainage_anim_root:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAnimRoot:Landroid/view/View;

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v2, Lcom/transsion/camera/R$id;->underwater_drainage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 452
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7c

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAnimRoot:Landroid/view/View;

    if-eqz v0, :cond_71

    const/4 v2, 0x0

    .line 454
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_64

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAnimRoot:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_7e

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    .line 457
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 460
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_71

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 464
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_7c
    return-void

    nop

    :array_7e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public registerReceiver(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4b

    .line 363
    new-instance v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$3;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    if-nez p1, :cond_29

    .line 410
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    .line 411
    const-string p2, "com.transsion.camera.LONG_PRESSED_POWER_ACTION"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "com.transsion.camera.UNDERWATER_STATUS_CHANGED_ACTION"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 415
    :cond_29
    sget-object p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerReceiver: mLongPressedPowerIntentFilter = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_4b
    return-void
.end method

.method public removeOverlay(Landroid/view/View;)V
    .registers 4

    .line 588
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 590
    sget-object p1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOverlay failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 2

    .line 230
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->ringScreenLightUpdateUI()V

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsPause:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onUpdateRecordingUI(Z)V

    return-void
.end method

.method public setPowerLongPressed(Z)V
    .registers 2

    .line 438
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mPowerLongPressed:Z

    return-void
.end method

.method public showDrainageLimit(Z)V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    if-nez v0, :cond_13

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->underwater_exit_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    .line 276
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageLimitRoot:Landroid/view/View;

    if-nez v0, :cond_21

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->underwater_drainage_limit_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageLimitRoot:Landroid/view/View;

    .line 279
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageLimitRoot:Landroid/view/View;

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_30

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showOverlay(Landroid/view/View;)V

    :cond_30
    return-void
.end method

.method public showNotice()V
    .registers 4

    .line 520
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsNoticeOn:Z

    if-nez v0, :cond_c

    .line 521
    sget-object p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showNotice notice is off, no showNotice"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_c
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showNotice"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->hideNotice(Z)V

    .line 526
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-nez v1, :cond_41

    .line 527
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 530
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->createNoticeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$4;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V

    .line 531
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 549
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method public showOverlay(Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 565
    :try_start_3
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 566
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 567
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 568
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 569
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mNoticeDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_42

    .line 571
    :cond_3c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 572
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 574
    :goto_42
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4a

    return-void

    .line 576
    :catch_4a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 577
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startCountDown(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    if-nez v0, :cond_13

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->underwater_exit_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    .line 238
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownRoot:Landroid/view/View;

    if-nez v0, :cond_37

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->underwater_exit_count_down_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownRoot:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->underwater_exit_count_down_anim_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownAnimRoot:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->underwater_exit_count_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    .line 243
    :cond_37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    if-eqz p1, :cond_47

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownViewListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->setOnCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->startCountDown()V

    .line 249
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->showOverlay(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->loadActionSound()V

    return-void
.end method

.method public stopCountDown(Z)Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCountDownView:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;

    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->stopCountDown()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez p1, :cond_11

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->removeOverlay(Landroid/view/View;)V

    :cond_11
    return v0
.end method

.method public stopDrainageAnimation(Z)V
    .registers 3

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 491
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 492
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 494
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAppearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 497
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mExitOverlay:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->removeOverlay(Landroid/view/View;)V

    return-void
.end method

.method public stopDrainageAnimationPrepare()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageAnimRoot:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_21

    .line 473
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_30

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mDrainageDisappearAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2e
    return-void

    nop

    :array_30
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public unRegisterReceiver()V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_30

    .line 424
    :try_start_4
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterReceiver: mLongPressedPowerIntentFilter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mLongPressedPowerReceiver:Landroid/content/BroadcastReceiver;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 428
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLongPressedPowerIntentFilter not registered"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    return-void
.end method

.method public updateCapturedNumber(ZI)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mCapturedNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 320
    new-instance v1, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public updateVolumeKeyPrompt(IZ)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4a

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eq p1, v0, :cond_37

    .line 347
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mIsNoticeOn:Z

    if-eqz p1, :cond_23

    if-nez p2, :cond_23

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPrompt:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/R$string;->underwater_key_volume_up_prompt:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeDownPrompt:Landroid/widget/TextView;

    sget p1, Lcom/transsion/camera/R$string;->underwater_key_volume_down_prompt:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 352
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPrompt:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/R$string;->underwater_key_volume_up_prompt_capture:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeDownPrompt:Landroid/widget/TextView;

    sget p1, Lcom/transsion/camera/R$string;->underwater_key_volume_down_prompt_start_video:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 341
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPrompt:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/R$string;->underwater_key_volume_up_prompt_capture:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeUpPromptLongPressed:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->mKeyVolumeDownPrompt:Landroid/widget/TextView;

    sget p1, Lcom/transsion/camera/R$string;->underwater_key_volume_down_prompt_stop_video:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_4a
    return-void
.end method
