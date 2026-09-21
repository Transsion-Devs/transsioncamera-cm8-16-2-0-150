.class public Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;,
        Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;
    }
.end annotation


# static fields
.field private static final COLOR_ANIMATION_MAX_PROGRESS:F = 0.7f

.field private static final DEFAULT_ITEM_TYPE:Ljava/lang/String; = "POP_SETTING"

.field private static final DEFAULT_LOTTIE_IMAGES_FOLDER:Ljava/lang/String; = "images"

.field private static final INDEX_OFF:I = 0x0

.field private static final INDEX_ON:I = 0x1

.field private static final MSG_ON_SETTING_VALUE_CHANGED:I = 0x64

.field protected static final POP_OPTION_INDEX_NONE:I = -0x1

.field private static final PREFIX:Ljava/lang/String; = "SettingItemSellingPoint"

.field private static final SELLING_POINT_SP_NAME:Ljava/lang/String; = "SellingPoint"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mLastClickTime:[J


# instance fields
.field private final TREASURE_BOX_ITEM_ANIMATOR_TIME:I

.field protected isCameraSwitching:Z

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBatteryStatus:I

.field private mBatteryTemperatureStatus:I

.field protected mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mComposition:Lcom/airbnb/lottie/LottieComposition;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field private mCurrentTreasureBoxItemRes:I

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDirection:I

.field protected mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private mEntryLayout:Landroid/view/View;

.field private mEntryRoot:Landroid/widget/LinearLayout;

.field private mEntrySellingImg:Landroid/widget/ImageView;

.field private mEntrySellingPointsResId:I

.field protected mEntryText:Landroid/widget/TextView;

.field private mHidePopup:Z

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field private mIsSellingPoint:Z

.field private mIsShouldGone:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

.field private mItemSellingPointsImgId:I

.field private mItemSellingPointsLayer:I

.field protected mLivePhotoIconClicked:Z

.field protected mLottieAnimationSupport:Z

.field protected mNeedAnimation:Z

.field protected mNormalColor:I

.field private mOverrideClickListener:Landroid/view/View$OnClickListener;

.field private mPointRes:Landroid/graphics/drawable/Drawable;

.field protected mPopSettingContainer:Landroid/widget/FrameLayout;

.field protected mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

.field private mPositionInPopSetting:I

.field private mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

.field protected mPreEntryValue:Ljava/lang/String;

.field protected mRearCamLowLight:Z

.field protected mScreenFormType:I

.field protected mScreenSupply:Z

.field private mSellingPointData:Lcom/tencent/mmkv/MMKV;

.field private final mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field protected final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mSupplyColor:I

.field private mTargetTreasureBoxItemRes:I

.field private mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

.field private mTreasureBoxItemBackground:Landroid/widget/ImageView;

.field private final mTreasureBoxSupport:Z

.field protected final mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$0_tM1ODzdKSPu4e4yL8TnEgU0Tc(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$setupEntryView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AM6KLtc4K1S7a0McVEbLdJLWNR0(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$changeIconColor$4(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PvPTvORY6a7cUEBlGgWyZ4bP2zY(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$animateTreasureBoxItemBackground$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SIDdIiGOOwmi7A6AXL_vKnSDH0o(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$onScreenSupply$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$X_j9QA9tKAMFXjlIQdlDbS_55Yk(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$changeIconColor$5(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fUl4C1QnyM0BdW4656vP9j99utI(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IZFLcom/airbnb/lottie/LottieComposition;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->lambda$setupLottieAnimation$1(IZFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kQ4eeBLsmJGtcnjuRwJSURefkpo(Ljava/lang/Throwable;)V
    .registers 3

    .line 490
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to load composition"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEntryLayout(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconOffColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOffColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconOnColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOnColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetTreasureBoxItemRes(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTargetTreasureBoxItemRes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxItemBackground(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTreasureBoxItemRes(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddOnPreDrawListener(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->addOnPreDrawListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptClickByLowPower(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->interceptClickByLowPower()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetValueByIndex(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setValueByIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLastClickTime:[J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsShouldGone:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHidePopup:Z

    .line 114
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryStatus:I

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryTemperatureStatus:I

    .line 116
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenFormType:I

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isCameraSwitching:Z

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsImgId:I

    .line 139
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsLayer:I

    .line 142
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    .line 143
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTargetTreasureBoxItemRes:I

    const/16 v0, 0x1f4

    .line 144
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TREASURE_BOX_ITEM_ANIMATOR_TIME:I

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNeedAnimation:Z

    .line 169
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportTopBarLottieAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLottieAnimationSupport:Z

    .line 172
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private addOnPreDrawListener()V
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private animateTreasureBoxItemBackground(I)V
    .registers 7

    .line 331
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    if-ne v0, p1, :cond_13

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 338
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    sget v1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_no_alpha_ui5:I

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    if-eq v0, v1, :cond_2f

    sget v4, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_ui5:I

    if-ne v0, v4, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v2

    :goto_30
    if-ne p1, v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    .line 346
    :goto_34
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4f

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 350
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    return-void

    :cond_4f
    cmpl-float v1, v0, v2

    if-nez v1, :cond_54

    return-void

    .line 358
    :cond_54
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTargetTreasureBoxItemRes:I

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_65
    const/4 v1, 0x2

    .line 363
    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    .line 364
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private changeIconColor()V
    .registers 8

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_70

    .line 1170
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v1

    .line 1172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 1173
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v3

    .line 1174
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1175
    const-string v5, "icon"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    array-length v3, v0

    const/4 v5, 0x2

    if-gt v3, v5, :cond_63

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-nez v3, :cond_63

    :cond_48
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1176
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_live_photo"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1177
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v4}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Z)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    .line 1180
    :cond_63
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Z)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    :cond_70
    :goto_70
    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 784
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private createSupportEntries()Z
    .registers 7

    .line 754
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 756
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 760
    :cond_f
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 761
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 763
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    if-nez v3, :cond_4a

    .line 764
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_camera_zoom"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 765
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v4

    .line 766
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    move-object v2, v4

    .line 771
    :cond_4a
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 774
    array-length v0, v0

    if-nez v0, :cond_73

    .line 775
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_73
    const/4 p0, 0x1

    return p0
.end method

.method private getAnimatingColor(FZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 1187
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 1188
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOnColor:I

    goto :goto_15

    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconLowLightColor:I

    goto :goto_15

    :cond_13
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOffColor:I

    :goto_15
    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_32

    div-float/2addr p1, v1

    .line 1191
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

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

    :cond_32
    return p2
.end method

.method private getEntryTextColor(I)I
    .registers 7

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    .line 1019
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string v4, "color_control_activated"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 1022
    :goto_1b
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz v2, :cond_40

    .line 1023
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    instance-of v3, v2, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;

    if-eqz v3, :cond_39

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightText()Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz p1, :cond_34

    .line 1024
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSupplyColor:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 1026
    :cond_39
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSupplyColor:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 1029
    :cond_40
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    instance-of v3, v2, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;

    if-eqz v3, :cond_5a

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightText()Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz p1, :cond_55

    .line 1030
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNormalColor:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 1032
    :cond_5a
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNormalColor:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getLottieAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 521
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "images"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 1145
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private interceptClickByLowPower()Z
    .registers 4

    .line 740
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryTemperatureStatus:I

    if-ne v0, v2, :cond_1f

    .line 741
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v0, :cond_1f

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_15

    .line 743
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 745
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryStatus:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryTemperatureStatus:I

    invoke-interface {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    return v2

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private isCameraFacingBack()Z
    .registers 1

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 931
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 930
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDVHintShowing()Z
    .registers 4

    .line 240
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 243
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 246
    :cond_f
    const-string v0, "key_dv_template_entrance"

    const-string v2, "key_state_dv_hint_showing_in_videomode"

    invoke-interface {p0, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    if-ne p0, v0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method private isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z
    .registers 4

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 1240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingItemSellingPoint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_21

    return p1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$animateTreasureBoxItemBackground$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 367
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$changeIconColor$4(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1178
    invoke-virtual {p2}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$changeIconColor$5(ZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1181
    invoke-virtual {p2}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onScreenSupply$6()V
    .registers 2

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1223
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryView()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$setupEntryView$3(Landroid/view/View;)V
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10e

    .line 545
    :cond_a
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->interceptClickByLowPower()Z

    move-result v1

    if-nez v1, :cond_10e

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHidePopup:Z

    if-nez v1, :cond_10e

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->optionBarFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_10e

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10e

    .line 547
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isDVHintShowing()Z

    move-result v1

    if-nez v1, :cond_10e

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto/16 :goto_10e

    .line 550
    :cond_3f
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v1, :cond_6e

    .line 552
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_live_photo"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 553
    const-string p0, "setupEntryView, live photo view is animating, not allow click"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 556
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_a0

    .line 557
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->updateCurrentPopWindowKey(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_color_style"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 559
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_supernight_filter"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 560
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 563
    :cond_a0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_de

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsSellingPoint:Z

    if-eqz v1, :cond_de

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingItemSellingPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 568
    :cond_cc
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    :cond_de
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_ef

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_e9

    .line 573
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 575
    :cond_e9
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 577
    :cond_ef
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    .line 578
    array-length p1, p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_10b

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->needAlwaysShowFlashItem()Z

    move-result p1

    if-eqz p1, :cond_100

    goto :goto_10b

    .line 581
    :cond_100
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_107

    .line 582
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 584
    :cond_107
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setToNextIndex()V

    return-void

    .line 579
    :cond_10b
    :goto_10b
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->showPopupIfNeed()V

    :cond_10e
    :goto_10e
    return-void
.end method

.method private synthetic lambda$setupLottieAnimation$1(IZFLcom/airbnb/lottie/LottieComposition;)V
    .registers 7

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_72

    .line 470
    :cond_5
    iput-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    .line 471
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p4

    if-eqz p4, :cond_12

    .line 472
    iget-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 474
    :cond_12
    iget-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_5f

    .line 475
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1, p4}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 476
    iget-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p4

    const-string v1, "key_live_photo"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3f

    const/4 p4, 0x1

    if-gt p1, p4, :cond_3f

    if-nez p1, :cond_33

    .line 477
    const-string p1, "off"

    goto :goto_35

    :cond_33
    const-string p1, "on"

    .line 478
    :goto_35
    iget-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getLottieAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_5a

    .line 479
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 480
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string p4, "images"

    invoke-virtual {p1, p4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 482
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 484
    :cond_5f
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->changeIconColor()V

    if-eqz p2, :cond_72

    .line 485
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_72

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, p3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxProgress(FF)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_72
    :goto_72
    return-void
.end method

.method private needAlwaysShowFlashItem()Z
    .registers 3

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_flash_facade"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private processAnimationIfNeed()Z
    .registers 4

    .line 455
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 456
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "off"

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 457
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPreEntryValue:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setValueByIndex(I)V
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 792
    array-length v1, v0

    .line 793
    rem-int/2addr p1, v1

    .line 794
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 795
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 797
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryView()V

    .line 798
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 799
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    .line 800
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->changeIconColor()V

    .line 802
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_29

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 805
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

    if-eqz p1, :cond_30

    .line 806
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;->onItemSelected()V

    .line 808
    :cond_30
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->doOnValueChanged()V

    return-void
.end method

.method private setupLottieAnimation(IZF)V
    .registers 6

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    .line 462
    array-length v1, v0

    if-ge p1, v1, :cond_3a

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLottieAnimationSupport:Z

    if-nez v1, :cond_13

    goto :goto_3a

    .line 465
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IZF)V

    .line 466
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda3;-><init>()V

    .line 490
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 492
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$2;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private shouldShown()Z
    .registers 2

    .line 1040
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 1041
    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private shouldUpdateTint()Z
    .registers 2

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldUpdateTint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private showPopupIfNeed()V
    .registers 7

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    new-instance v2, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI-IA;)V

    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPositionInPopSetting:I

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDirection:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 818
    iget-object p0, v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    .line 820
    :cond_1c
    iget-object p0, v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private showSellingPointsIfNeed()V
    .registers 4

    .line 957
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-nez v0, :cond_15

    .line 959
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSellingPointsIfNeed, mEntryLayout is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 961
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsLayer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_29

    .line 963
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, viewStub is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 966
    :cond_29
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 967
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsImgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-nez v0, :cond_42

    .line 969
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, mEntrySellingImg is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 972
    :cond_42
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 973
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingPointsResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 975
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 976
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_8d

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 978
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$dimen;->treasure_box_selling_point_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 979
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$dimen;->treasure_box_selling_point_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 980
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 983
    :cond_84
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-eqz p0, :cond_8d

    const/16 v0, 0x8

    .line 984
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8d
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateClickEntryView()V
    .registers 4

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6d

    .line 854
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 855
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->showSellingPointsIfNeed()V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    if-eqz v1, :cond_6d

    .line 858
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_59

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSupplyColor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 863
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 865
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNormalColor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 866
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTreasureBoxItemBackground(Ljava/lang/String;Z)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private updateEntryDescription()V
    .registers 4

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 920
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_2d

    .line 922
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isCameraFacingBack()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "back"

    goto :goto_27

    :cond_25
    const-string v2, "front"

    .line 923
    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEntryDrawable(I)V
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 936
    aget-object p1, v0, p1

    if-nez p1, :cond_d

    goto :goto_55

    .line 939
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 940
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 941
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->showSellingPointsIfNeed()V

    .line 942
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->shouldUpdateTint()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    .line 945
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 947
    :goto_2c
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 948
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLottieAnimationSupport:Z

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    .line 949
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    goto :goto_4a

    .line 951
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    :goto_4a
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private updateEntryView()V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 833
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateClickEntryView()V

    return-void

    .line 835
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateListEntryView()V

    return-void
.end method

.method private updateItemTextStrokeAvailable(Landroid/view/View;Z)V
    .registers 3

    .line 1248
    instance-of p0, p1, Lcom/transsion/camera/app/ui/widget/StrokeTextView;

    if-eqz p0, :cond_9

    .line 1249
    check-cast p1, Lcom/transsion/camera/app/ui/widget/StrokeTextView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/StrokeTextView;->setStrokeAvailable(Z)V

    :cond_9
    return-void
.end method

.method private updateListEntryView()V
    .registers 5

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsShouldGone:Z

    .line 890
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-nez v1, :cond_8

    return-void

    .line 893
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->shouldShown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2c

    .line 894
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsShouldGone:Z

    .line 895
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not show this entry, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 899
    :cond_2c
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_6f

    .line 901
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid index, key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportedValues: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 903
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 904
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsShouldGone:Z

    return-void

    .line 908
    :cond_6f
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-eqz v2, :cond_76

    .line 909
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    :cond_76
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryDescription()V

    .line 912
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryDrawable(I)V

    .line 913
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateHighLightShow(I)V

    return-void
.end method

.method private updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 872
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_c

    .line 873
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_c
    const/4 p0, 0x0

    .line 875
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_e

    .line 515
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_e
    return-void
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIIIIIIII)Landroid/view/View;
    .registers 12

    .line 255
    iput p7, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsImgId:I

    .line 256
    iput p11, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSellingPointsLayer:I

    const/4 p11, 0x0

    .line 257
    iput-boolean p11, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHidePopup:Z

    .line 258
    invoke-virtual {p1, p3, p2, p11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    .line 259
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    invoke-virtual {p1, p10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopSettingContainer:Landroid/widget/FrameLayout;

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "top_bar_animation_icon_on"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOnColor:I

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "top_bar_animation_icon_off"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconOffColor:I

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "top_bar_animation_icon_low_light"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIconLowLightColor:I

    .line 268
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    const/4 p2, 0x0

    if-nez p1, :cond_9b

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 271
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/transsion/camera/app/common/R$dimen;->pop_setting_container_margin_top_ui3:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 272
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a6

    .line 273
    :cond_9b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_a6

    .line 274
    invoke-virtual {p0, p2, p11}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTreasureBoxItemBackground(Ljava/lang/String;Z)V

    .line 276
    :cond_a6
    :goto_a6
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    invoke-virtual {p1, p11}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    const-string p1, "SellingPoint"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iput p8, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntrySellingPointsResId:I

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->showSellingPointsIfNeed()V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    xor-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateLayoutParams()V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    const p3, 0x3f4ccccd    # 0.8f

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 286
    const-string p3, "pop_setting_item_supply_color"

    const-string p4, "color"

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSupplyColor:I

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 288
    const-string p3, "pop_setting_item_normal_color"

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNormalColor:I

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public doAnimation()V
    .registers 4

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 844
    :cond_9
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 845
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 5

    .line 1111
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_14

    const-string v0, "key_pro_watermark"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1112
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 1114
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1115
    const-string v1, "key_picture_size"

    .line 1116
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1117
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1118
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createSupportEntries()Z

    .line 1120
    :cond_35
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-nez v0, :cond_69

    .line 1123
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createSupportEntries()Z

    .line 1124
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryView()V

    .line 1125
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1126
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_63

    .line 1127
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLivePhotoIconClicked:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_5f

    .line 1128
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLivePhotoIconClicked:Z

    .line 1129
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    goto :goto_66

    .line 1131
    :cond_5f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    goto :goto_66

    .line 1134
    :cond_63
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    .line 1136
    :goto_66
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->changeIconColor()V

    :cond_69
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 1

    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    return-object p0
.end method

.method public getIsShouldGone()Z
    .registers 1

    .line 885
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsShouldGone:Z

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 1

    .line 416
    const-string p0, "POP_SETTING"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .registers 1

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSupport()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1236
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTintList()Landroid/content/res/ColorStateList;
    .registers 1

    const/high16 p0, -0x1000000

    .line 880
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public hintInfo()V
    .registers 1

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1d

    const/16 v2, 0x20

    if-eq p1, v2, :cond_1a

    const/16 v2, 0x36

    if-eq p1, v2, :cond_1d

    const/16 v2, 0x4a

    if-eq p1, v2, :cond_17

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_1a

    return-void

    .line 711
    :cond_17
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHidePopup:Z

    return-void

    .line 715
    :cond_1a
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHidePopup:Z

    return-void

    .line 722
    :cond_1d
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isCameraSwitching:Z

    return-void

    .line 718
    :cond_20
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->isCameraSwitching:Z

    return-void
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 229
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryStatus:I

    .line 230
    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryTemperatureStatus:I

    .line 231
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-nez p2, :cond_12

    .line 232
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 234
    :cond_12
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz p2, :cond_1b

    .line 235
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mBatteryStatus:I

    invoke-interface {p2, p1, p0, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_1b
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;)V
    .registers 6

    .line 420
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->interceptClickByLowPower()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_85

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsSellingPoint:Z

    if-eqz v2, :cond_46

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingItemSellingPoint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 425
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x2

    if-eqz v0, :cond_58

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_52

    .line 433
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 435
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_6f

    .line 437
    :cond_58
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    .line 438
    array-length p1, p1

    if-le p1, v2, :cond_65

    .line 439
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->showPopupIfNeed()V

    goto :goto_6f

    .line 441
    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_6c

    .line 442
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 444
    :cond_6c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setToNextIndex()V

    .line 447
    :goto_6f
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-gt p1, v2, :cond_7f

    const/4 v1, 0x1

    :cond_7f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setAnimation(Z)V

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->changeIconColor()V

    :cond_85
    :goto_85
    return-void
.end method

.method protected onLivePhotoEntryClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    return-void
.end method

.method public onScreenSupply(Z)V
    .registers 5

    .line 1209
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenSupply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1210
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_2b

    .line 1212
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1214
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_42

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_high_light_background:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_47

    :cond_42
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1218
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateTreasureBoxItemBackground(Ljava/lang/String;Z)V

    .line 1220
    :goto_47
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    .line 1221
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public optionBarFastDoubleClick()Z
    .registers 3

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getItemType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "POP_SETTING"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const-wide/16 v0, 0x12c

    .line 412
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mLastClickTime:[J

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p0

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public playAnimation(ZF)V
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 509
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setupLottieAnimation(IZF)V

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    return-void
.end method

.method public setAnimation(Z)V
    .registers 4

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 503
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setupLottieAnimation(IZF)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 637
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_1f

    .line 639
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_live_photo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 648
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_3e

    return-void

    .line 652
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5b

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 655
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_5b

    .line 657
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 661
    :cond_5b
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_69

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 663
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void

    .line 665
    :cond_69
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    return-void
.end method

.method public setDirection(I)V
    .registers 2

    .line 526
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDirection:I

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 606
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 676
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .registers 2

    .line 1199
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1204
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
    .registers 2

    .line 617
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    return-void
.end method

.method public setPositionInPopSetting(I)V
    .registers 2

    .line 622
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPositionInPopSetting:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    return-void
.end method

.method protected setToNextIndex()V
    .registers 3

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 827
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setValueByIndex(I)V

    :cond_10
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_1d

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 591
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryView()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_d

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 217
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v2, 0x0

    .line 218
    invoke-interface {v0, v2, v2, v2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 219
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 221
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    if-eqz p0, :cond_24

    .line 223
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24
    return-void
.end method

.method protected updateHighLightShow(I)V
    .registers 3

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getEntryTextColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1013
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    .line 1012
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public updateLayoutParams()V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 395
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_43

    .line 396
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$dimen;->treasure_box_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 397
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$dimen;->treasure_box_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 398
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 399
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$dimen;->pop_setting_text_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5f

    .line 401
    :cond_43
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$dimen;->pop_setting_item_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 402
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/app/common/R$dimen;->pop_setting_item_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    :goto_5f
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateScreenForm(I)V
    .registers 2

    .line 627
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenFormType:I

    return-void
.end method

.method public updateSupportEntries()V
    .registers 1

    .line 1105
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->createSupportEntries()Z

    .line 1106
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateEntryView()V

    return-void
.end method

.method public updateTreasureBoxItemBackground(Ljava/lang/String;Z)V
    .registers 6

    .line 296
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    goto/16 :goto_a0

    .line 299
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_8e

    .line 300
    const-string v0, "4:3"

    if-nez p1, :cond_27

    .line 301
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 302
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    :cond_27
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "1:1"

    .line 306
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    :cond_35
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 307
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_70

    :cond_41
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 308
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 309
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInUltraHDMode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 310
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInAIGCModeV30(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    goto :goto_70

    :cond_68
    if-eqz p2, :cond_6d

    .line 314
    sget p1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_light_no_alpha_ui5:I

    goto :goto_77

    .line 315
    :cond_6d
    sget p1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_light_ui5:I

    goto :goto_77

    :cond_70
    :goto_70
    if-eqz p2, :cond_75

    .line 311
    sget p1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_no_alpha_ui5:I

    goto :goto_77

    .line 312
    :cond_75
    sget p1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background_black_dark_ui5:I

    :goto_77
    if-eqz p2, :cond_7d

    .line 318
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->animateTreasureBoxItemBackground(I)V

    return-void

    .line 320
    :cond_7d
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentTreasureBoxItemRes:I

    .line 321
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 325
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mTreasureBoxItemBackground:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/app/common/R$drawable;->ic_treasure_box_item_background:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_a0
    :goto_a0
    return-void
.end method
