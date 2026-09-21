.class public Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field protected static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_ALL_VIEW:I = 0x12c

.field private static final MSG_HIDE_ALL_VIEW_SUDDENLY:I = 0x1f4

.field protected static final MSG_HIDE_SETTING_NAME:I = 0x64

.field private static final MSG_ON_VIDEO_PORTRAIT_SWITCH_CHANGED:I = 0x65

.field private static final MSG_SETTING_UI_CALL_BACK_FROM_RELATION:I = 0x1f5

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SETTING_KEY:Ljava/lang/String; = "key_video_portrait_level"

.field private static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field private static final STATE_TO_SHOW_SWITCH_BAR:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private DEFAULT_VALUE:Ljava/lang/String;

.field private DURATION:I

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mAnimShow:Z

.field private mBottomTitle:Landroid/widget/TextView;

.field private final mBottomUIDefaultHeight:I

.field mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCurrentUIState:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field protected mEntryView:Landroid/view/View;

.field private final mExpandTranslateDistance:F

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field protected mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsLevelBarShowing:Z

.field private mIsPopSettingShow:Z

.field private mIsVideoPortraitOn:Z

.field protected mIsVideoRecording:Z

.field private mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

.field protected mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mLowLight:Z

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field protected mResources:Landroid/content/res/Resources;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mUIHandler:Landroid/os/Handler;

.field private mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

.field private mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public static synthetic $r8$lambda$2k5sHFPMvWaJIYk8kXoIGsk26rE(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$hide$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gf-KVXVvdmFVEXqwaoFn15oydRI(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$updateSettingUILayout$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$TY5-OjP8YaUayaTIn3iuEwifQcg(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$c6Xi5hFFl9d--u3CPkjev8l4rdc(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 990
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 991
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oS9_EhhjwSfoHtFzZvrG_IL0_lo(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->lambda$new$2(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimShow(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLevelBarShowing(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoPortraitSwitchSetting(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoOnVideoPortraitSwitchChanged(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->doOnVideoPortraitSwitchChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAllView(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideAllView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAllViewSuddenly(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideAllViewSuddenly()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideLevelBar(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTranslation(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateTranslation(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 65
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoPortraitLevelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    const/16 v1, 0x12c

    .line 76
    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    .line 109
    const-string v1, "60"

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 112
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 128
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    .line 154
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 364
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$4;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 395
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$5;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 803
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 870
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 175
    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelSettingUISpec;

    invoke-direct {v1, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 177
    sget v1, Lcom/transsion/camera/R$dimen;->video_portrait_level_bar_anime_distance2:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    .line 178
    sget v1, Lcom/transsion/camera/R$dimen;->bottom_ui_expand_translate_anim_distance:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mExpandTranslateDistance:F

    .line 179
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 180
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 181
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x2

    .line 182
    new-array v2, v1, [F

    fill-array-data v2, :array_ba

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 183
    iget v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v2, v2

    new-array v1, v1, [F

    aput v2, v1, v0

    const/4 v0, 0x1

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 185
    iget v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 186
    sget v0, Lcom/transsion/camera/R$dimen;->video_portrait_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomUIDefaultHeight:I

    return-void

    :array_ba
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener0()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 356
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_12
    return-void
.end method

.method private alphaAnim()V
    .registers 8

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_c

    .line 465
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[alphaAnim] mLevelContainer is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 468
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_19

    move v2, v4

    goto :goto_1a

    :cond_19
    move v2, v3

    .line 469
    :goto_1a
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    if-eqz v2, :cond_20

    const/high16 v1, 0x3f800000    # 1.0f

    .line 471
    :cond_20
    sget-object v2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[alphaAnim], alphaFrom:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " , alphaTo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " , mAnimShow:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v0, v5, v3

    aput v1, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 473
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    if-eqz v0, :cond_60

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_67

    .line 476
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    :goto_67
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelAnimation()V
    .registers 3

    .line 273
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[cancelAnimation]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 277
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_25
    return-void
.end method

.method private doOnVideoPortraitSwitchChanged(Ljava/lang/String;)V
    .registers 5

    .line 862
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnVideoPortraitSwitchChanged value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    .line 864
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    return-void

    :cond_22
    const/4 p1, 0x0

    .line 866
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    return-void
.end method

.method private expandModePickerUI(Z)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 263
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->isExpandedState()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_1f

    const/16 p1, 0x82

    .line 265
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 267
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    if-nez v0, :cond_1f

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private getPortraitTranslateDistance()F
    .registers 3

    .line 439
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_f

    goto :goto_28

    .line 442
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_19

    .line 443
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    :goto_17
    neg-float p0, p0

    return p0

    .line 446
    :cond_19
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v0, :cond_25

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_22

    goto :goto_25

    .line 449
    :cond_22
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mExpandTranslateDistance:F

    return p0

    .line 447
    :cond_25
    :goto_25
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mExpandTranslateDistance:F

    goto :goto_17

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method private hide()V
    .registers 5

    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    .line 767
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    if-eqz p0, :cond_1b

    const-wide/16 v2, 0x64

    goto :goto_1d

    :cond_1b
    const-wide/16 v2, 0x0

    .line 759
    :goto_1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

.method private hideAllView()V
    .registers 4

    .line 817
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    if-eqz v0, :cond_18

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_18

    .line 820
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_18
    return-void
.end method

.method private hideAllViewSuddenly()V
    .registers 4

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoPortraitOn:Z

    if-eqz v0, :cond_22

    .line 829
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz v0, :cond_22

    .line 830
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_bar_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    return-void
.end method

.method private hideEntryRootView()V
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 773
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz p0, :cond_18

    const/4 v0, 0x0

    .line 779
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    :cond_18
    return-void
.end method

.method private hideLevelBar()V
    .registers 2

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePortraitLevel(Z)Z

    return-void
.end method

.method private hidePortraitLevel(Z)Z
    .registers 6

    .line 645
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hidePortraitLevel]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 647
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v2, :cond_14

    .line 648
    const-string p0, "hidePortraitLevel mLevelContainer is null!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 652
    :cond_14
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_39

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePortraitLevel mEntryView.getVisibility(): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 657
    :cond_39
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_61

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePortraitLevel mLevelContainer.getVisibility(): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->resetBottomViews()V

    return v1

    .line 663
    :cond_61
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b1

    .line 664
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->cancelAnimation()V

    .line 665
    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->alphaAnim()V

    .line 667
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->translateAnim()V

    if-nez p1, :cond_8a

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    .line 671
    :cond_8a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->shutterControlAnim()V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_bar_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_aa

    const/16 p1, 0xb5

    goto :goto_ac

    :cond_aa
    const/16 p1, 0x82

    :goto_ac
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p0, 0x1

    return p0

    .line 679
    :cond_b1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 680
    const-string p1, "hidePortraitLevel mAlphaAnimator.isRunning(), need cancel and reset"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->resetBottomViews()V

    :cond_c3
    return v1
.end method

.method private hideSettingUI()V
    .registers 4

    .line 239
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideSettingUI]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 243
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_2e

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 250
    :cond_2e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz v1, :cond_35

    .line 251
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    .line 254
    :cond_35
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideEntryRootView()V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_videoportrait_bar_hide"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private inflateMainLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 224
    sget p0, Lcom/transsion/camera/R$layout;->video_portrait_level_root:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 226
    sget p2, Lcom/transsion/camera/R$id;->video_portrait_bottom_root_view:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 228
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_1a

    .line 229
    sget v1, Lcom/transsion/camera/R$layout;->video_portait_scroller_bottom_layout_ui5:I

    goto :goto_1c

    .line 231
    :cond_1a
    sget v1, Lcom/transsion/camera/R$layout;->video_portait_scroller_bottom_layout:I

    .line 233
    :goto_1c
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 234
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p0
.end method

.method private isExpandedOrLRHoverState()Z
    .registers 3

    .line 458
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private isExpandedState()Z
    .registers 2

    .line 454
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$hide$0()V
    .registers 4

    .line 760
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 761
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 762
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->alphaAnim()V

    .line 763
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->translateAnim()V

    .line 764
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    .line 765
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_bar_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x82

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p1, p2, :cond_10

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    const/16 p2, 0x1f5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .registers 2

    .line 870
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$4()V
    .registers 3

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->setOrientation(I)V

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateSettingUILayout(I)V

    return-void
.end method

.method private reOpenToSavedValue()V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2d

    .line 343
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 345
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "key_video_portrait_level"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetBottomViews()V
    .registers 4

    .line 838
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[resetBottomViews]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 839
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 840
    iput v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 842
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v1, :cond_23

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 844
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateDistance:F

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 848
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz v1, :cond_2a

    .line 849
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    :cond_2a
    const/4 v1, 0x7

    .line 852
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v2, :cond_38

    .line 853
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_38

    const/16 v2, 0x82

    .line 854
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 858
    :cond_38
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->expandModePickerUI(Z)V

    return-void
.end method

.method private showEntryRootView()V
    .registers 3

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 785
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 787
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    :cond_10
    return-void
.end method

.method private showPortraitLevel()V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_49

    .line 411
    :cond_11
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showPortraitLevel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showEntryRootView()V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateFeatureUI(Z)V

    .line 414
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateSettingUILayout(Z)V

    .line 415
    iput v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_videoportrait_bar_show"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->alphaAnim()V

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->translateAnim()V

    .line 421
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->shutterControlAnim()V

    :cond_49
    :goto_49
    return-void
.end method

.method private shutterControlAnim()V
    .registers 4

    .line 425
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterControlAnim, mAnimShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_33

    .line 428
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    return-void

    .line 432
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_33
    return-void
.end method

.method private translateAnim()V
    .registers 6

    .line 483
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getPortraitTranslateDistance()F

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 484
    :goto_b
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    if-eqz v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getPortraitTranslateDistance()F

    move-result v1

    .line 485
    :goto_14
    sget-object v2, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[translateAnim], translateYFrom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , translateYTo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , mAnimShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v2, :cond_43

    .line 488
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateTranslation(F)V

    .line 491
    :cond_43
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 493
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAnimShow:Z

    if-eqz v0, :cond_6b

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_80

    .line 497
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    :goto_80
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateTranslation(F)V
    .registers 4

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->isExpandedOrLRHoverState()Z

    move-result v0

    if-nez v0, :cond_c

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 379
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v0, :cond_23

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_23

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1d

    return-void

    .line 388
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 383
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 197
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->inflateMainLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    .line 200
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 201
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getAppUIRect()Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->portrait_level_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p2, 0x0

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->video_portrait_level_bar_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelBarRootView:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitBarView;

    .line 206
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p1, :cond_6b

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->video_portait_bottom_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomTitle:Landroid/widget/TextView;

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 209
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_64

    .line 210
    check-cast p1, Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomTitle:Landroid/widget/TextView;

    sget p2, Lcom/transsion/camera/R$string;->video_portrait_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 214
    :cond_6b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->video_portrait_blur_scroller_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    .line 215
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->addAnimatorListener0()V

    .line 218
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->setCameraOperate(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

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

    .line 558
    const-string p0, "key_video_portrait_level"

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

    .line 563
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    const-string v0, "key_video_portrait"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_2b

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 575
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_21

    .line 579
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_21
    :goto_21
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "supportList is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    return-object p0

    .line 571
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "deviceSetting is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->DEFAULT_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 507
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 509
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideSettingUI()V

    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->expandModePickerUI(Z)V

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->unregisterSettingDevice()V

    return-void
.end method

.method protected hidePopSettingTitle()V
    .registers 1

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 794
    iget p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCurrentUIState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-eq p1, v0, :cond_92

    const/16 v0, 0x13

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_7f

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x149

    if-eq p1, v0, :cond_92

    const/16 v0, 0xf

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5d

    const/16 v0, 0x18

    if-eq p1, v0, :cond_52

    const/16 v0, 0x19

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_40

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_40

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_37

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_95

    goto :goto_91

    .line 735
    :cond_37
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    .line 736
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hide()V

    .line 737
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    return-void

    .line 724
    :cond_40
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_91

    .line 725
    :cond_4e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    return-void

    .line 746
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    .line 747
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_91

    .line 748
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    return-void

    .line 709
    :cond_5d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    .line 710
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->resetBottomViews()V

    .line 711
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_91

    const/16 p1, 0x82

    .line 712
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 704
    :cond_6c
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    .line 705
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideEntryRootView()V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_conflict_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_videoportrait_bar_hide"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 729
    :cond_7f
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    .line 730
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    .line 731
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hide()V

    .line 732
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    return-void

    .line 718
    :cond_8a
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_91

    .line 719
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_91
    :goto_91
    return-void

    .line 741
    :cond_92
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePopSettingTitle()V

    .line 743
    :cond_95
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 639
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onBackPressed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 641
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hidePortraitLevel(Z)Z

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

    .line 623
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 625
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x7

    if-eq p1, v0, :cond_17

    .line 627
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_16

    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    return-void

    :cond_17
    :goto_17
    const/4 p1, 0x0

    .line 628
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 884
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 p1, 0x1

    .line 885
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 4

    .line 303
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    if-eqz v0, :cond_9

    goto/16 :goto_84

    .line 309
    :cond_9
    const-string v0, "key_video_portrait"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 310
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingOptionToggle mIsLevelBarShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 312
    const-string p0, "onSettingOptionToggle return because animation is running."

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4d

    .line 316
    const-string p0, "onSettingOptionToggle mLevelContainer alpha is 1, don\'t show mLevelContainer!"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_4d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showPortraitLevel()V

    .line 320
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->showPopSettingTitle()V

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_84

    .line 323
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "on"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    const-string p1, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 326
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->reOpenToSavedValue()V

    return-void

    .line 331
    :cond_7d
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_84

    .line 332
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_84
    :goto_84
    return-void
.end method

.method public onSingleTapUp(FF)Z
    .registers 6

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3f

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_3f

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_3f

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_20

    goto :goto_3f

    .line 692
    :cond_20
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onSingleTapUp] , mIsLevelBarShowing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 693
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsLevelBarShowing:Z

    if-eqz p1, :cond_3f

    .line 694
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    :cond_3f
    :goto_3f
    return v2
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public restoreInteractiveView()V
    .registers 2

    .line 516
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideSettingUI()V

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->expandModePickerUI(Z)V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 799
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 800
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 584
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 586
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 590
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 592
    sget-object p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 595
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_33

    .line 597
    const-string v0, "key_video_portrait_ui"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 598
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_video_portrait_level"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 601
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3c

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSwitchDataCallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_3c
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 608
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-nez p1, :cond_20

    .line 610
    sget-object p1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSettingData is null,key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 614
    sget-object v1, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceSettingData key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",iSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_portrait"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 616
    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_24

    :cond_61
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz p0, :cond_7

    .line 552
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->enableUIStatus(Z)V

    :cond_7
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

    .line 634
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 284
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideSettingUI()V

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->expandModePickerUI(Z)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->registerSettingDevice()V

    return-void
.end method

.method protected showPopSettingTitle()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 522
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->hideLevelBar()V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitSwitchSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 525
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 527
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_26

    .line 528
    const-string v2, "key_video_portrait_ui"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_video_portrait_level"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 531
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->removeAnimatorListener()V

    .line 533
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mEntryView:Landroid/view/View;

    .line 534
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsPopSettingShow:Z

    .line 536
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected updateRingScreenLight(Z)V
    .registers 3

    .line 873
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLowLight:Z

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mVideoPortraitRoot:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;

    if-eqz v0, :cond_9

    .line 875
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitScrollerLayout;->updateLowLight(Z)V

    .line 877
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_16

    .line 878
    const-string p1, "#FF242424"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_17

    :cond_16
    const/4 p1, -0x1

    :goto_17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1a
    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 890
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 891
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 892
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_11

    goto/16 :goto_281

    .line 896
    :cond_11
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 897
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 899
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 900
    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    .line 901
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 902
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 904
    iget v7, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne v7, v8, :cond_40

    .line 905
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->level_hover_bottom_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_69

    :cond_40
    if-ne v7, v9, :cond_4d

    .line 908
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->level_column_root_bottom_padding:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_4a
    sub-int v3, v4, v3

    goto :goto_69

    .line 910
    :cond_4d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_60

    .line 911
    iget v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomUIDefaultHeight:I

    sub-int v3, v4, v3

    .line 912
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_69

    add-int/lit8 v3, v3, -0x24

    goto :goto_69

    .line 916
    :cond_60
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->video_portrait_bottom_offset:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4a

    .line 919
    :cond_69
    :goto_69
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x0

    .line 920
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 921
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->isExpandedState()Z

    move-result v8

    const/16 v10, 0x55

    const/16 v11, 0x35

    const/16 v12, 0x33

    const/16 v13, 0x5a

    const/16 v14, 0x10e

    const/16 v15, 0xb4

    if-eqz v8, :cond_131

    if-eq v1, v13, :cond_f2

    if-eq v1, v15, :cond_d1

    if-eq v1, v14, :cond_b0

    const/16 v3, 0x53

    .line 944
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 945
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_root_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 946
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_0_left_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 947
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_0_bottom_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_112

    .line 936
    :cond_b0
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 937
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_root_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 938
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_90_right_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 939
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_90_bottom_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_112

    .line 930
    :cond_d1
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 931
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_root_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 932
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_0_left_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 933
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_0_bottom_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_112

    .line 924
    :cond_f2
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 925
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_root_width:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 926
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_90_right_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 927
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->level_expand_90_bottom_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_112
    add-int/lit16 v1, v1, 0x10e

    .line 950
    rem-int/lit16 v1, v1, 0x168

    .line 951
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v1, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 952
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12a

    .line 953
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_12a

    .line 954
    invoke-interface {v3, v7, v7, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 957
    :cond_12a
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 958
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_260

    .line 959
    :cond_131
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1b5

    const/4 v8, 0x7

    .line 960
    iget v9, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v8, v9, :cond_185

    if-eq v1, v13, :cond_170

    if-eq v1, v15, :cond_170

    if-eq v1, v14, :cond_15b

    .line 978
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 979
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 980
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 981
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_flip_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_260

    .line 970
    :cond_15b
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v15, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 971
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 972
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 973
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->flip_level_expand_270_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_260

    .line 964
    :cond_170
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v15, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 965
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 966
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 967
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->flip_level_expand_180_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_260

    :cond_185
    if-eqz p1, :cond_1ae

    .line 986
    filled-new-array {v6, v3}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x190

    .line 987
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 988
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 989
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, v2}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 993
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_260

    .line 995
    :cond_1ae
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 996
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_260

    .line 999
    :cond_1b5
    iget v6, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v8, -0x1

    if-eqz v6, :cond_23c

    if-ne v6, v9, :cond_1be

    goto/16 :goto_23c

    :cond_1be
    const/4 v3, 0x4

    if-ne v6, v3, :cond_1fd

    .line 1012
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1013
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1014
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_left_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1015
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_top_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1016
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_right_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1017
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1018
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1f7

    .line 1019
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_1f7

    .line 1020
    invoke-interface {v3, v7, v7, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1023
    :cond_1f7
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1024
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_260

    :cond_1fd
    const/4 v3, 0x5

    if-ne v6, v3, :cond_260

    .line 1026
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1027
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1028
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_left_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1029
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_top_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1030
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_portrait_scroller_margin_right_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1031
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v15, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1032
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_236

    .line 1033
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_236

    .line 1034
    invoke-interface {v3, v7, v7, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1037
    :cond_236
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1038
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_260

    :cond_23c
    :goto_23c
    const/16 v6, 0x51

    .line 1001
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1002
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1003
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1004
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1005
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_260

    iget-boolean v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIsVideoRecording:Z

    if-nez v2, :cond_260

    .line 1007
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_260

    const/4 v3, 0x1

    .line 1008
    invoke-interface {v2, v3, v7, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1040
    :cond_260
    :goto_260
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mLevelContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-instance v3, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1046
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLevelUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_281

    iget v0, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_281

    if-eq v1, v13, :cond_27d

    if-ne v1, v14, :cond_27c

    goto :goto_27d

    :cond_27c
    move v7, v1

    :cond_27d
    :goto_27d
    int-to-float v0, v7

    .line 1050
    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    :cond_281
    :goto_281
    return-void
.end method
