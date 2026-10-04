.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0xc8

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLowLight:Z

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

.field private makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;


# direct methods
.method public static synthetic $r8$lambda$B4sPqzcmxcj6kF7qFyk8rPcbJrk(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uzWW1os48AkCBU8Gt40TjdG8FzA(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmakeUpBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcomputeFilterRootVisibility(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->computeFilterRootVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misFloatEqual(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;FF)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->isFloatEqual(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msettingUIAnimShowOrHide(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 63
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 76
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 87
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 95
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 104
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 325
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 196
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    .line 197
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_rv_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBottomUIDefaultHeight:I

    .line 198
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {p1, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    .line 199
    new-array v3, v2, [F

    fill-array-data v3, :array_76

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 200
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 201
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 203
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_76
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 211
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    return-void
.end method

.method private computeFilterRootVisibility()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_f

    .line 126
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    const/16 p0, 0x8

    .line 127
    :goto_c
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideSettingUI()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 220
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->cancelAnimation()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 226
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_2c

    .line 227
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 229
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 230
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 233
    :cond_34
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private isFloatEqual(FF)Z
    .registers 3

    sub-float/2addr p1, p2

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 326
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 327
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    .line 328
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_9

    .line 336
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->updateLowLight(Z)V

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_12

    .line 339
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->updateLowLight(Z)V

    :cond_12
    return-void
.end method

.method private notifyConflictUI(Z)V
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_e

    const-string/jumbo p1, "value_facebeauty_ui_on"

    goto :goto_11

    :cond_e
    const-string/jumbo p1, "value_facebeauty_ui_off"

    :goto_11
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 334
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .registers 9

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_36

    .line 179
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->updateFeatureRv(I)V

    .line 181
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_22

    :goto_20
    move v1, v2

    goto :goto_30

    .line 184
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_30

    goto :goto_20

    .line 189
    :cond_30
    :goto_30
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mCurrentUIType:I

    .line 191
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showOrHide(Z)V

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method private showEntryRootView()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 385
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 386
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showEntryRootViewAndInitState()V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedShow:Z

    if-eqz v1, :cond_18

    .line 394
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    return-void
.end method

.method private showOrHide(Z)V
    .registers 9

    if-eqz p1, :cond_62

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    .line 153
    :goto_12
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_19
    move v1, v0

    .line 155
    :goto_1a
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v3

    aput v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_36

    goto :goto_39

    .line 158
    :cond_36
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateDistance:F

    neg-float v0, v0

    .line 159
    :goto_39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v3

    aput v0, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_5d

    .line 162
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    if-eqz v0, :cond_55

    .line 163
    invoke-interface {p1, v2, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto :goto_5d

    .line 166
    :cond_55
    invoke-interface {p1, v3, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    .line 171
    :cond_5d
    :goto_5d
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mAnimShow:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->notifyConflictUI(Z)V

    :cond_62
    return-void
.end method

.method private updateMakeUpTopUI()V
    .registers 6

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 313
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v2

    .line 314
    const-string v3, "key_mu_slimbody"

    iget-object v4, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 315
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setSlimBodyBarState(Z)V

    goto :goto_37

    .line 316
    :cond_28
    const-string v3, "key_makeup_feature"

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setMakeUpBarState(Z)V

    :cond_37
    :goto_37
    if-nez v2, :cond_6

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_3d
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 7

    .line 238
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 240
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_main_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    .line 241
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 245
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 246
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 249
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 250
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 255
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->addAnimatorListener()V

    .line 259
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 260
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mLowLight:Z

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->ringScreenLightUpdateUI()V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

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

    .line 406
    const-string p0, "key_mu_slimbody"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    const-string v0, "key_mu_slimbody"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v0, "key_makeup_feature"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v0, "key_gender_attribute_value"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 411
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

    .line 276
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

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
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_67

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6b

    const/16 v2, 0x10

    if-eq p1, v2, :cond_63

    const/16 v2, 0x19

    if-eq p1, v2, :cond_5c

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_54

    const/16 v2, 0x24

    if-eq p1, v2, :cond_50

    const/16 v2, 0x25

    if-eq p1, v2, :cond_4c

    packed-switch p1, :pswitch_data_88

    packed-switch p1, :pswitch_data_94

    goto :goto_5b

    .line 468
    :pswitch_28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    return-void

    .line 493
    :pswitch_2c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    goto :goto_6f

    .line 510
    :pswitch_2f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 511
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    .line 512
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz p1, :cond_5b

    .line 514
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 487
    :pswitch_46
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    .line 488
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    goto :goto_67

    .line 519
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    return-void

    .line 465
    :cond_50
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    return-void

    .line 479
    :cond_54
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_5b

    .line 480
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootViewAndInitState()V

    :cond_5b
    :goto_5b
    return-void

    .line 475
    :cond_5c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    return-void

    .line 484
    :cond_63
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    return-void

    .line 490
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideEntryRootView()V

    return-void

    .line 526
    :cond_6b
    :pswitch_6b
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    return-void

    .line 498
    :cond_6f
    :goto_6f
    :pswitch_6f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz p1, :cond_76

    .line 499
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideDialog()V

    .line 501
    :cond_76
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_7d

    .line 502
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 504
    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_84

    .line 505
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    .line 507
    :cond_84
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->setEnable(Z)V

    return-void

    :pswitch_data_88
    .packed-switch 0xb
        :pswitch_46
        :pswitch_2f
        :pswitch_6f
        :pswitch_6b
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1c
        :pswitch_2c
        :pswitch_6f
        :pswitch_6b
        :pswitch_6b
        :pswitch_28
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 443
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSelfTimerCapturing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_1b

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 449
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1b
    return v1

    .line 452
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_24

    .line 453
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onBackPressed()Z

    move-result v1

    :cond_24
    if-eqz v1, :cond_29

    .line 456
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    :cond_29
    return v1
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

.method public releaseResource()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->releaseResource()V

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz v0, :cond_e

    .line 301
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->releaseResource()V

    .line 304
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;

    if-eqz p0, :cond_15

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->releaseResource()V

    :cond_15
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 431
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 432
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

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

    .line 437
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 267
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->updateMakeUpTopUI()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->showEntryRootView()V

    .line 271
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->hideSettingUI()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 283
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 284
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->unregisterSettingData()V

    .line 287
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    .line 290
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 291
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
