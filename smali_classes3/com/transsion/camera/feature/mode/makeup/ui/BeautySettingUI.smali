.class public Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final PRECISION:F = 0.01f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private final mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

.field private mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

.field private final mBottomUIDefaultHeight:I

.field private final mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

.field private mCurrentUIType:I

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLowLight:Z

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedShow:Z

.field private mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

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

.field private final mSinkTranslateDistance:I

.field private mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;


# direct methods
.method public static synthetic $r8$lambda$TXFY-ZLhDcVkEAPSOm0Rc-q0R9E(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hlEkCZmgyhTGq4w4S4LrUkQUqI8(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBottomUI(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msettingUIAnimShowOrHide(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->settingUIAnimShowOrHide(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BeautySettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 71
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 82
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 93
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    .line 104
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    .line 113
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    .line 328
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 211
    sget v1, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    .line 212
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->sink_shutter_translate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSinkTranslateDistance:I

    .line 213
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_rv_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUIDefaultHeight:I

    .line 214
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 215
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 216
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x2

    .line 217
    new-array v2, p1, [F

    fill-array-data v2, :array_90

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    .line 218
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 219
    new-array p1, p1, [F

    aput v3, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 220
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_90
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 227
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    return-void
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideSettingUI()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 236
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->cancelAnimation()V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_25

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 242
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_2c

    .line 243
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 245
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 246
    invoke-interface {v0, v1, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 249
    :cond_39
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->notifyConflictUI(Z)V

    return-void
.end method

.method private isFloatEqual(FF)Z
    .registers 3

    sub-float/2addr p1, p2

    .line 135
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

    .line 329
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 330
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz v0, :cond_9

    .line 339
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateLowLight(Z)V

    .line 341
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_12

    .line 342
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->updateLowLight(Z)V

    :cond_12
    return-void
.end method

.method private notifyConflictUI(Z)V
    .registers 3

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

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

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 337
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private settingUIAnimShowOrHide(I)Z
    .registers 9

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_36

    .line 194
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->updateFeatureRv(I)V

    .line 196
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mCurrentUIType:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_22

    :goto_20
    move v1, v2

    goto :goto_30

    .line 199
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_30

    goto :goto_20

    .line 204
    :cond_30
    :goto_30
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mCurrentUIType:I

    .line 206
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showOrHide(Z)V

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method private showEntryRootView()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 388
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 389
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method private showEntryRootViewAndInitState()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedShow:Z

    if-eqz v1, :cond_18

    .line 397
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->resetToInitState()V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 401
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    return-void
.end method

.method private showOrHide(Z)V
    .registers 9

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->cancelAnimation()V

    if-eqz p1, :cond_ad

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    .line 157
    :goto_15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz v1, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_1c
    move v1, v0

    .line 159
    :goto_1d
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p1, v6, v2

    aput v1, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 160
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_31

    iget p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float p1, p1

    goto :goto_32

    :cond_31
    move p1, v0

    :goto_32
    cmpg-float v1, p1, v0

    if-gez v1, :cond_37

    goto :goto_3a

    .line 161
    :cond_37
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateDistance:F

    neg-float v0, v0

    .line 162
    :goto_3a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v5, [F

    aput p1, v4, v2

    aput v0, v4, v3

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 163
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz p1, :cond_64

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_7e

    .line 169
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    :goto_7e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_a8

    .line 177
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    if-eqz v0, :cond_9b

    .line 178
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSinkTranslateDistance:I

    invoke-interface {p1, v3, v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToSmall()V

    goto :goto_a8

    .line 181
    :cond_9b
    invoke-interface {p1, v2, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->transitionShutterToRegular()V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->notifyState(IZ)V

    .line 186
    :cond_a8
    :goto_a8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mAnimShow:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->notifyConflictUI(Z)V

    :cond_ad
    return-void
.end method

.method private updateMakeUpTopUI()V
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 316
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v2

    .line 317
    const-string v3, "key_mu_slimbody"

    iget-object v4, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setSlimBodyBarState(Z)V

    goto :goto_37

    .line 319
    :cond_28
    const-string v3, "key_makeup_feature"

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setMakeUpBarState(Z)V

    :cond_37
    :goto_37
    if-nez v2, :cond_6

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_3d
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 7

    .line 254
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 256
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->facebeauty_root_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    .line 257
    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->slimbody_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->top_ui:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 260
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 261
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 264
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 265
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBarClickListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;

    const/4 v2, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarStatusListener;)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->bottom_ui:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p3

    if-eqz p3, :cond_7b

    add-int/lit8 p2, p2, 0x17

    .line 272
    :cond_7b
    iget p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUIDefaultHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 273
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->addAnimatorListener()V

    .line 277
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 278
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mLowLight:Z

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->ringScreenLightUpdateUI()V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public enableUIStatus(Z)V
    .registers 2

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz p0, :cond_7

    .line 544
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->enableBottomUIStatus(Z)V

    :cond_7
    return-void
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

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

    .line 409
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

    .line 419
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    const-string v0, "key_mu_slimbody"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v0, "key_makeup_feature"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v0, "key_gender_attribute_value"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 414
    const-string p0, ""

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

    .line 294
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 295
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

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

    if-eqz p1, :cond_84

    const/4 v1, 0x1

    if-eq p1, v1, :cond_80

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7c

    const/16 v2, 0x9

    if-eq p1, v2, :cond_80

    const/16 v2, 0x10

    if-eq p1, v2, :cond_78

    const/16 v2, 0x19

    if-eq p1, v2, :cond_71

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_69

    const/16 v2, 0x24

    if-eq p1, v2, :cond_7c

    const/16 v2, 0x25

    if-eq p1, v2, :cond_78

    packed-switch p1, :pswitch_data_96

    packed-switch p1, :pswitch_data_a2

    goto :goto_70

    .line 502
    :pswitch_28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 503
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz p1, :cond_31

    .line 504
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 506
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_38

    .line 507
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 509
    :cond_38
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    return-void

    .line 523
    :pswitch_3c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 524
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    .line 525
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->enableUIStatus(Z)V

    .line 526
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz p1, :cond_70

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 493
    :pswitch_56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    .line 494
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    .line 495
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->enableUIStatus(Z)V

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    if-eqz p0, :cond_70

    .line 498
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->hideDialog()V

    return-void

    .line 488
    :cond_69
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_70

    .line 489
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootViewAndInitState()V

    :cond_70
    :goto_70
    return-void

    .line 484
    :cond_71
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    return-void

    .line 477
    :cond_78
    :pswitch_78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    return-void

    .line 472
    :cond_7c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideEntryRootView()V

    return-void

    .line 537
    :cond_80
    :pswitch_80
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    return-void

    .line 514
    :cond_84
    :pswitch_84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    if-eqz p1, :cond_8b

    .line 515
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 517
    :cond_8b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSlimBodyRoot:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    if-eqz p1, :cond_92

    .line 518
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->hideDialog()V

    .line 520
    :cond_92
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->setEnable(Z)V

    return-void

    :pswitch_data_96
    .packed-switch 0xb
        :pswitch_56
        :pswitch_3c
        :pswitch_84
        :pswitch_80
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x1c
        :pswitch_28
        :pswitch_84
        :pswitch_80
        :pswitch_80
        :pswitch_78
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 5

    const-wide/16 v0, 0xc8

    .line 445
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 449
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSelfTimerCapturing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    goto :goto_25

    .line 452
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_25

    .line 455
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    :goto_25
    return v2

    .line 458
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3b

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->onBackPressed()Z

    move-result v2

    :cond_3b
    if-eqz v2, :cond_40

    .line 462
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showOrHide(Z)V

    :cond_40
    return v2
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

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mNeedToMonitorSetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 434
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 435
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

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

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 285
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->updateMakeUpTopUI()V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mSettingDataList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->showEntryRootView()V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->hideSettingUI()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 301
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 302
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;->unregisterSettingData()V

    .line 305
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mBottomUI:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyBottomUI;

    .line 308
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->makeUpTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;

    .line 309
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
