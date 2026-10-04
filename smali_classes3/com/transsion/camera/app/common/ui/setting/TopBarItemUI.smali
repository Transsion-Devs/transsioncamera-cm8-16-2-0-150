.class public Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;,
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;,
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;
    }
.end annotation


# static fields
.field private static final COLOR_ANIMATION_MAX_PROGRESS:F = 0.7f

.field private static final DEFAULT_ITEM_TYPE:Ljava/lang/String; = "TOP_BAR"

.field private static final DEFAULT_LOTTIE_IMAGES_FOLDER:Ljava/lang/String; = "images"

.field private static final INDEX_OFF:I = 0x0

.field private static final INDEX_ON:I = 0x1

.field private static final MSG_ON_SETTING_STATE_CHANGED:I = 0x65

.field private static final MSG_ON_SETTING_VALUE_CHANGED:I = 0x64

.field private static final PREFIX:Ljava/lang/String; = "SettingItemSellingPoint"

.field public static final SELLING_POINT_SP_NAME:Ljava/lang/String; = "SellingPoint"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mLastClickTime:[J


# instance fields
.field private final VIDEO_FPS_30:Ljava/lang/String;

.field private final VIDEO_FPS_60:Ljava/lang/String;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field protected mBatteryStatus:I

.field protected mBatteryTemperatureStatus:I

.field protected mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebritySceneUIShow:Z

.field private mChangePopWindowHide:Z

.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mComposition:Lcom/airbnb/lottie/LottieComposition;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field private mCurrentModeSupportNewVideoSize:Z

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDirection:I

.field protected mEntryRootLayout:Landroid/view/View;

.field private mEntrySellingImg:Landroid/widget/ImageView;

.field protected mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

.field private mFilterUIShow:Z

.field private mFlipEntryView:Landroid/view/View;

.field private mFlipImageView:Landroid/widget/ImageView;

.field private mFlipTextView:Landroid/widget/TextView;

.field private mHidePopup:Z

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field protected mIsLottieAnimationSupport:Z

.field private mIsSellingPoint:Z

.field private mIsShouldGone:Z

.field private mItemClickDisable:Z

.field private mItemDisable:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private mItemSellingPointsImgId:I

.field protected mLivePhotoIconClicked:Z

.field private mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

.field protected mLottieAnimationSupport:Z

.field private mMasterGuideUIManager:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

.field protected mNeedAnimation:Z

.field protected mNeedItemAnimation:Z

.field private mOverrideClickListener:Landroid/view/View$OnClickListener;

.field private mPointRes:Landroid/graphics/drawable/Drawable;

.field protected mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

.field protected mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

.field protected mPopupWindowShow:Z

.field private mPositionInTopBar:I

.field private mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

.field protected mPreEntryValue:Ljava/lang/String;

.field protected mScreenSupply:Z

.field protected mScreenType:I

.field private mSellingPointData:Lcom/tencent/mmkv/MMKV;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field private mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mTreasureBoxSupport:Z

.field protected final mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

.field private mVideoQualityTitle:Ljava/lang/String;

.field protected stateValue:[I


# direct methods
.method public static synthetic $r8$lambda$BQZwd30GmKnOEdhrPv7wkECUGos(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$changeIconColor$10(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TOyo4N0mxVoKM-asjQV5kYXTssc(Ljava/lang/Throwable;)V
    .registers 3

    .line 576
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to load composition"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VC7ZbGrL1Gq1TdynyKjGNXdicxQ(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$changeIconColor$9(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VTlMBbuX_cdEP5fA5eyTnSt5x6Y(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZZLcom/airbnb/lottie/LottieComposition;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$setupLottieAnimation$1(ZIZZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbIWYzT3AZ9z9H1lJae1lAYJXYc(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$setupEntryView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-G5vwyM0zDVjBStCCw98-1PZJ4(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$createFlipEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEep1LxFRJLxojylMfkxFevHba8(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$onScreenSupply$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSoMxsxY7rXlEyUGcaETbSNthII(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$6(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$geG8OGrb08viwtQKlHsvd2iuAZ0(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$7(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hhlF2Rey7S4grWrNenQS2dqaijs(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$8(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yR0J5dIyJyC-oC86-fZ4833F6FA(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$setupLottieAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCelebritySceneUIShow(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterUIShow(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlipTextView(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChangePopWindowHide(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptClickByLowPower(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->interceptClickByLowPower()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetValueByIndex(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setValueByIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 155
    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string v0, "Video Quality"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 114
    const-string v0, "30"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->VIDEO_FPS_30:Ljava/lang/String;

    .line 115
    const-string v0, "60"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->VIDEO_FPS_60:Ljava/lang/String;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 132
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 135
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 136
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 146
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    .line 152
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenType:I

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentModeSupportNewVideoSize:Z

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedAnimation:Z

    .line 186
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    .line 187
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    .line 188
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportTopBarLottieAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationSupport:Z

    .line 189
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1105
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1106
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0

    :cond_13
    return-object p1
.end method

.method private changeIconColor(IZ)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_70

    .line 1575
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 1576
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v1

    .line 1577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 1578
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v3

    .line 1579
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1580
    const-string v5, "icon"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    array-length v3, v0

    const/4 v5, 0x2

    if-gt v3, v5, :cond_63

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-nez v3, :cond_63

    :cond_48
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1581
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_live_photo"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1582
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v4, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZ)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    .line 1585
    :cond_63
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0, v4, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZ)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    :cond_70
    :goto_70
    return-void
.end method

.method private checkCallUIType()V
    .registers 6

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v0, :cond_9

    goto :goto_77

    .line 523
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 525
    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallUIType: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_64

    .line 528
    const-string v0, "key_color_style"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_supernight_filter"

    .line 529
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_filter"

    .line 530
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_image_style"

    .line 531
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_5c

    .line 533
    :cond_4c
    const-string v0, "key_celebrity_scene"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x188

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 532
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x16a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 536
    :cond_64
    array-length v0, v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_70

    const-string v0, "key_flash_facade"

    .line 537
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 538
    :cond_70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x169

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_77
    :goto_77
    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 996
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

.method private createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;
    .registers 3

    .line 1607
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {p1, p2}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private getAnimatingColor(FZIZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 1592
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 1593
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    goto :goto_15

    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconLowLightColor:I

    goto :goto_15

    :cond_13
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    :goto_15
    if-nez p4, :cond_35

    if-nez p3, :cond_1d

    .line 1595
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :goto_1b
    move v0, p2

    goto :goto_27

    :cond_1d
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz p2, :cond_24

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconLowLightColor:I

    goto :goto_1b

    :cond_24
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_1b

    :goto_27
    if-nez p3, :cond_33

    .line 1596
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz p2, :cond_30

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconLowLightColor:I

    goto :goto_35

    :cond_30
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_35

    :cond_33
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :cond_35
    :goto_35
    const p3, 0x3f333333    # 0.7f

    cmpg-float p4, p1, p3

    if-gez p4, :cond_52

    div-float/2addr p1, p3

    .line 1600
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_52
    return p2
.end method

.method private getLottieAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 625
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

.method private getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 387
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_10

    .line 388
    const-string p0, "SellingPoint"

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method private getVideoQuality(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_39

    .line 1283
    const-string p0, "5"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1284
    const-string p0, "720P 30FPS"

    return-object p0

    .line 1285
    :cond_d
    const-string p0, "6"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1286
    const-string p0, "1080P 30FPS"

    return-object p0

    .line 1287
    :cond_18
    const-string p0, "6_60"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 1288
    const-string p0, "1080P 60FPS"

    return-object p0

    .line 1289
    :cond_23
    const-string p0, "11"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1290
    const-string p0, "2K 30FPS"

    return-object p0

    .line 1291
    :cond_2e
    const-string p0, "8"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 1292
    const-string p0, "4K 30FPS"

    return-object p0

    :cond_39
    return-object p1
.end method

.method private initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 1552
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private interceptClickByLowPower()Z
    .registers 4

    .line 953
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    if-ne v0, v2, :cond_1f

    .line 954
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v0, :cond_1f

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_15

    .line 956
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 958
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    invoke-interface {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    return v2

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z
    .registers 4

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 1611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingItemSellingPoint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

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

.method private synthetic lambda$changeIconColor$10(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 1586
    invoke-virtual {p4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getAnimatingColor(FZIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$changeIconColor$9(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 1583
    invoke-virtual {p4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getAnimatingColor(FZIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createFlipEntryView$0(Landroid/view/View;)V
    .registers 4

    .line 408
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onFlipEntryViewClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 410
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$initIconColor$6(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1560
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_f

    :cond_d
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initIconColor$7(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1564
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_f

    :cond_d
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initIconColor$8(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 9

    .line 1553
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 1554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 1555
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 1556
    sget-object v3, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCompositionLoaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1557
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_live_photo"

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1558
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1559
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, v1, v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 1562
    :cond_65
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1563
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_13

    :cond_7c
    return-void
.end method

.method private synthetic lambda$onScreenSupply$5(Z)V
    .registers 3

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_7

    .line 1528
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1530
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1531
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1533
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p0, :cond_15

    .line 1534
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->onScreenSupply(Z)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$setupEntryView$4(Landroid/view/View;)V
    .registers 5

    .line 699
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 701
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_2e
    return-void
.end method

.method private synthetic lambda$setupLottieAnimation$1(ZIZZLcom/airbnb/lottie/LottieComposition;)V
    .registers 7

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_6

    goto/16 :goto_86

    .line 556
    :cond_6
    iput-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p1, :cond_15

    .line 557
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p5

    if-eqz p5, :cond_15

    .line 558
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 560
    :cond_15
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p5, :cond_6e

    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p5

    if-eqz p5, :cond_23

    if-eqz p1, :cond_6e

    .line 561
    :cond_23
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 562
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p5

    const-string v0, "key_live_photo"

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_4c

    const/4 p5, 0x1

    if-gt p2, p5, :cond_4c

    if-nez p2, :cond_40

    .line 563
    const-string p5, "off"

    goto :goto_42

    :cond_40
    const-string p5, "on"

    .line 564
    :goto_42
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p5}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getLottieAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_67

    .line 565
    :cond_4c
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p5

    if-eqz p5, :cond_67

    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_67

    .line 566
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string v0, "images"

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 568
    :cond_67
    :goto_67
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 570
    :cond_6e
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->changeIconColor(IZ)V

    .line 571
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_7b

    if-eqz p1, :cond_86

    :cond_7b
    if-eqz p4, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    if-eqz p1, :cond_86

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_86
    :goto_86
    return-void
.end method

.method private synthetic lambda$setupLottieAnimation$3(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 608
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_live_photo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;->onAnimationUpdate(F)V

    :cond_21
    return-void
.end method

.method private needAlwaysShowFlashItem()Z
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_flash_facade"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1396
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setValueByIndex(I)V
    .registers 7

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 1004
    array-length v1, v0

    .line 1005
    rem-int/2addr p1, v1

    .line 1007
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 1008
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1009
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1010
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1011
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 1012
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    .line 1018
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_87

    .line 1019
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 1021
    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1023
    const-string v3, "key_video_fps2"

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "_60"

    if-eqz v3, :cond_61

    .line 1024
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    if-nez v2, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    .line 1025
    :cond_5a
    const-string p1, ""

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    .line 1026
    :cond_61
    const-string v0, "key_video_size"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    if-eqz v2, :cond_7d

    .line 1027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    goto :goto_82

    .line 1029
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1031
    :goto_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1033
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p1, :cond_8e

    .line 1034
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    .line 1036
    :cond_8e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnValueChanged()V

    return-void
.end method

.method private setupLottieAnimation(IZZ)V
    .registers 13

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_e

    goto :goto_5e

    .line 546
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5e

    .line 547
    array-length v1, v0

    if-lt p1, v1, :cond_1d

    goto :goto_5e

    .line 550
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_live_photo"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 551
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZZ)V

    .line 552
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda4;-><init>()V

    .line 576
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 577
    iget-object p0, v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;

    invoke-direct {p1, v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    iget-object p0, v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda5;

    invoke-direct {p1, v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private shouldShown()Z
    .registers 2

    .line 1391
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 1392
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

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldUpdateTint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private showSellingPointsIfNeed()V
    .registers 3

    .line 1615
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1616
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-nez v0, :cond_16

    .line 1617
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, mEntryRootLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1620
    :cond_16
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-nez v0, :cond_2a

    .line 1622
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, mEntrySellingImg is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2a
    const/4 p0, 0x0

    .line 1625
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1627
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-eqz p0, :cond_38

    const/16 v0, 0x8

    .line 1628
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_38
    return-void
.end method

.method private storeKeyStatus(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private translateItem()V
    .registers 10

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_176

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz v0, :cond_176

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result v0

    if-eqz v0, :cond_176

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentModeSupportNewVideoSize:Z

    if-nez v0, :cond_14

    goto/16 :goto_176

    .line 342
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_video_size"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "key_video_fps2"

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "6"

    .line 347
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "6_60"

    .line 348
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 349
    :cond_4a
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 351
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080_translate:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 352
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x15a

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_10e

    .line 353
    :cond_7c
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "8"

    .line 354
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "8_60"

    .line 355
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "11"

    .line 356
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 357
    :cond_a6
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k_translate:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 360
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x15b

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_10e

    .line 361
    :cond_d7
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 362
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_fps:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_fps:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_fps_translate:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_10e

    :cond_10d
    move v3, v0

    .line 368
    :goto_10e
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v0, 0x1

    aput v3, v7, v0

    const-string/jumbo v0, "translationX"

    invoke-static {v6, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x0

    .line 369
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 370
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_143

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 371
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 372
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    :cond_143
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 373
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_anti_video"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 374
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_super_anti_video"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 375
    :cond_15f
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    :cond_162
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_176
    :goto_176
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1400
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateClickEntryView()V
    .registers 2

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 1079
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1080
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 1081
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDescription()V

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_27

    .line 1084
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private updateEntryDescription()V
    .registers 5

    .line 1228
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 1231
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 1234
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1235
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1236
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 1238
    :cond_5a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    :goto_65
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1241
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_b5

    .line 1243
    :cond_74
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_quality"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1244
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 1245
    :cond_8c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_facebeauty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1246
    const-string/jumbo v1, "video_facebeauty_off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry:I

    goto :goto_aa

    :cond_a8
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry:I

    :goto_aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 1248
    :cond_ae
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :cond_b5
    :goto_b5
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEntryDrawable(I)V
    .registers 4

    .line 1303
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1307
    :cond_9
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 1309
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1310
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    .line 1312
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1313
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 1314
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1315
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    .line 1317
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1320
    :goto_34
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_52

    .line 1321
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 1322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    goto :goto_52

    .line 1325
    :cond_4b
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1328
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doUpdateSettingEntryView()V

    return-void
.end method

.method private updateFlipClickEntryView()V
    .registers 2

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 1093
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1094
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1095
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDescription()V

    .line 1097
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryText()V

    .line 1098
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_27

    .line 1099
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private updateFlipEntryDescription()V
    .registers 5

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    goto/16 :goto_9c

    .line 1258
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1259
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 1261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_49

    .line 1262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_93

    .line 1265
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_93

    .line 1267
    :cond_49
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_quality"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 1270
    :cond_64
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_facebeauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string/jumbo v1, "video_facebeauty_off"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry_value:I

    goto :goto_85

    :cond_83
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry_value:I

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 1274
    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_93
    :goto_93
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private updateFlipEntryDrawable(I)V
    .registers 3

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 1336
    :cond_9
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 1337
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1338
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1339
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1340
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_23
    const/4 v0, 0x0

    .line 1342
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1344
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2e

    .line 1345
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateFlipEntryText()V
    .registers 3

    .line 1350
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1351
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1353
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_21
    return-void
.end method

.method private updateFlipHighLightShow()V
    .registers 3

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result v0

    .line 1381
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 1382
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1384
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_16

    .line 1385
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_16
    return-void
.end method

.method private updateFlipListEntryView()V
    .registers 8

    const/4 v0, 0x0

    .line 1194
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1195
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1198
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldShown()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v1, :cond_25

    .line 1199
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1200
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOP_BAR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1201
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    .line 1205
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 1206
    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFlipListEntryView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gez v1, :cond_93

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid index, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1210
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1211
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 1215
    :cond_93
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    if-eqz v4, :cond_9a

    move v0, v2

    :cond_9a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDescription()V

    .line 1217
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryText()V

    .line 1218
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDrawable(I)V

    .line 1219
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipHighLightShow()V

    return-void
.end method

.method private updateListEntryView()V
    .registers 8

    const/4 v0, 0x0

    .line 1138
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1139
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1142
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldShown()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v1, :cond_25

    .line 1143
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOP_BAR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1145
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    .line 1149
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 1150
    sget-object v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateListEntryView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateSettingName(I)V

    if-gez v1, :cond_96

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid index, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1155
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1156
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 1160
    :cond_96
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v3, :cond_a2

    .line 1161
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    if-eqz v4, :cond_9f

    move v0, v2

    :cond_9f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :cond_a2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDescription()V

    .line 1164
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDrawable(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateHighLightShow()V

    return-void
.end method

.method private updateSettingName(I)V
    .registers 8

    .line 1168
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_87

    .line 1171
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 1172
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1173
    const-string v2, "key_supernight_filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "key_filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1174
    :cond_20
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentFilterName(Ljava/lang/String;)V

    .line 1176
    :cond_25
    const-string v2, "key_mu_stereo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4c

    const-string v2, "key_mu_monomer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_4c

    .line 1179
    :cond_38
    const-string v2, "key_video_portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1180
    const-string v2, "on"

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setPortraitOpen(Z)V

    goto :goto_54

    :cond_4c
    :goto_4c
    if-lez p1, :cond_50

    move v2, v4

    goto :goto_51

    :cond_50
    move v2, v3

    .line 1177
    :goto_51
    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setPortraitOpen(Z)V

    .line 1182
    :cond_54
    :goto_54
    const-string v2, "key_mu_face_beauty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    if-lez p1, :cond_60

    move p0, v4

    goto :goto_61

    :cond_60
    move p0, v3

    .line 1183
    :goto_61
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setFaceBeautyOpen(Z)V

    goto :goto_79

    .line 1185
    :cond_65
    const-string v2, "key_video_facebeauty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1186
    const-string/jumbo v2, "video_facebeauty_on"

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setFaceBeautyOpen(Z)V

    .line 1188
    :cond_79
    :goto_79
    const-string p0, "key_mu_slimbody"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    if-lez p1, :cond_84

    move v3, v4

    .line 1189
    :cond_84
    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setSlimBodyOpen(Z)V

    :cond_87
    :goto_87
    return-void
.end method

.method private updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1112
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_c

    .line 1113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_c
    const/4 p0, 0x0

    .line 1115
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 7

    .line 300
    iput p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    const/4 p5, 0x0

    .line 301
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    const/4 p6, -0x1

    if-eq p4, p6, :cond_17

    .line 303
    invoke-virtual {p1, p3, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    .line 304
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    goto :goto_1f

    .line 306
    :cond_17
    invoke-virtual {p1, p3, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 308
    :goto_1f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, p5}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 310
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "video_quality_setting_title"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_55

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 316
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const p3, 0x3f4ccccd    # 0.8f

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 317
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_66

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationSupport:Z

    if-nez p1, :cond_74

    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 318
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p3, "key_live_photo"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    :cond_74
    move p5, p2

    :cond_75
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p1, :cond_7c

    return-object p1

    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method public createFlipEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;)Landroid/view/View;
    .registers 5

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 397
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getEntryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    .line 398
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    .line 399
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    .line 401
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "video_quality_setting_title"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 403
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public createOptionEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 283
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "video_quality_setting_title"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 287
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :cond_3c
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 293
    :cond_4c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method protected createSupportEntries()Z
    .registers 7

    .line 967
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 969
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-> mDeviceSetting\'s support is null!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 973
    :cond_22
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 974
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 975
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-nez v3, :cond_5d

    .line 976
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_camera_zoom"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 977
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v4

    .line 978
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v4

    .line 979
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    move-object v2, v4

    .line 983
    :cond_5d
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 984
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 986
    array-length v0, v0

    if-nez v0, :cond_86

    .line 987
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_86
    const/4 p0, 0x1

    return p0
.end method

.method public currentModeSupportNewVideoSize(Z)V
    .registers 2

    .line 1129
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentModeSupportNewVideoSize:Z

    return-void
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 5

    .line 1474
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1475
    const-string v1, "key_picture_size"

    .line 1476
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1477
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1478
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1480
    :cond_21
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 1482
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryForStatusChanged()V

    :cond_28
    return-void
.end method

.method protected doOnValueChanged()V
    .registers 1

    return-void
.end method

.method protected doUpdateSettingEntryView()V
    .registers 1

    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 683
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFlipEntryView()Landroid/view/View;
    .registers 1

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    return-object p0
.end method

.method public getIsShouldGone()Z
    .registers 1

    .line 1125
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 1

    .line 427
    const-string p0, "TOP_BAR"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

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

.method public getOptionEntryView()Landroid/view/View;
    .registers 1

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .registers 1

    .line 1541
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 1545
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1548
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTintList()Landroid/content/res/ColorStateList;
    .registers 1

    const/high16 p0, -0x1000000

    .line 1120
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public hintInfo()V
    .registers 1

    return-void
.end method

.method public initIconColor(III)V
    .registers 4

    .line 325
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    .line 326
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    .line 327
    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconLowLightColor:I

    return-void
.end method

.method public isSellingPointAndShow()Z
    .registers 3

    .line 1514
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result p0

    return p0
.end method

.method public needAnimation()Z
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public needItemAnimation()Z
    .registers 1

    .line 1224
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 8

    .line 871
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a6

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_a2

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_9f

    const/16 v0, 0x30

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9c

    const/16 v0, 0x31

    if-eq p1, v0, :cond_99

    const/16 v0, 0x76

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x77

    if-eq p1, v0, :cond_85

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_8f

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_85

    const/16 v0, 0x183

    if-eq p1, v0, :cond_82

    const/16 v0, 0x184

    if-eq p1, v0, :cond_7f

    packed-switch p1, :pswitch_data_aa

    packed-switch p1, :pswitch_data_c2

    goto :goto_98

    .line 905
    :pswitch_4f
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    if-nez p1, :cond_98

    .line 906
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    return-void

    .line 902
    :pswitch_56
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    return-void

    .line 899
    :pswitch_59
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return-void

    :pswitch_5c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_77

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_98

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v2

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x2

    .line 891
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_98

    .line 892
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 895
    :cond_77
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 880
    :pswitch_7b
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 937
    :cond_7f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    return-void

    .line 934
    :cond_82
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    return-void

    .line 920
    :cond_85
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 921
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setEnable(Z)V

    return-void

    .line 914
    :cond_8f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 915
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setEnable(Z)V

    :cond_98
    :goto_98
    return-void

    .line 931
    :cond_99
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    return-void

    .line 928
    :cond_9c
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    return-void

    .line 910
    :cond_9f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    return-void

    .line 925
    :cond_a2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->translateItem()V

    return-void

    .line 874
    :cond_a6
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_5c
        :pswitch_7b
        :pswitch_5c
        :pswitch_7b
        :pswitch_5c
        :pswitch_7b
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1c
        :pswitch_59
        :pswitch_56
        :pswitch_4f
    .end packed-switch
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 270
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 271
    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 272
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-nez p2, :cond_12

    .line 273
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 275
    :cond_12
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz p2, :cond_1b

    .line 276
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    invoke-interface {p2, p1, p0, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_1b
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;Z)Z
    .registers 8

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_15

    .line 433
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_16e

    .line 437
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_picture_size"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v2, v0, :cond_36

    .line 438
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEntryViewClick, currentUIState is STATE_PROCESSING, not allow click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 442
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "key_live_photo"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 443
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEntryViewClick, live photo view is animating, not allow click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 446
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->interceptClickByLowPower()Z

    move-result v3

    if-nez v3, :cond_16e

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    if-nez v3, :cond_16e

    array-length v3, v0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->optionBarFastDoubleClick(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    if-eqz p2, :cond_16e

    :cond_6d
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    if-nez p2, :cond_16e

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemDisable:Z

    if-eqz p2, :cond_77

    goto/16 :goto_16e

    .line 452
    :cond_77
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_90

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_88

    array-length p2, v0

    if-gt p2, v2, :cond_88

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->needAlwaysShowFlashItem()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 454
    :cond_88
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v3, 0xd1

    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_9b

    .line 455
    :cond_90
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_9b

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    if-eqz v3, :cond_9b

    .line 456
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    .line 460
    :cond_9b
    :goto_9b
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-eqz p2, :cond_cd

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-eqz v3, :cond_cd

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingItemSellingPoint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 463
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_c6
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    :cond_cd
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    if-eqz p2, :cond_d8

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v3, :cond_d8

    .line 468
    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;->onTopBarItemListClick(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 470
    :cond_d8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->checkCallUIType()V

    .line 471
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x1

    if-eqz p2, :cond_ee

    .line 472
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p2, :cond_e7

    .line 473
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 475
    :cond_e7
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_160

    .line 477
    :cond_ee
    array-length p1, v0

    if-gt p1, v2, :cond_f7

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->needAlwaysShowFlashItem()Z

    move-result p1

    if-eqz p1, :cond_13d

    :cond_f7
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz p1, :cond_13d

    .line 479
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_12c

    .line 480
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    if-eqz p2, :cond_11f

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p2, :cond_11f

    .line 481
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->getCurrentPopupWindowKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11f

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 483
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    goto :goto_12f

    .line 485
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_126

    .line 486
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->doOnDismiss()V

    .line 488
    :cond_126
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    .line 489
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    goto :goto_12f

    .line 492
    :cond_12c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    .line 494
    :goto_12f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz p1, :cond_160

    .line 495
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->updateCurrentPopWindowKey(Ljava/lang/String;)V

    goto :goto_160

    .line 498
    :cond_13d
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_15b

    .line 499
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_158

    .line 500
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopupWithoutAnimation()V

    .line 501
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_15b

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    if-nez p2, :cond_154

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    if-eqz p2, :cond_15b

    .line 502
    :cond_154
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->showPopSettingView()V

    goto :goto_15b

    .line 505
    :cond_158
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 508
    :cond_15b
    :goto_15b
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    .line 509
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    .line 512
    :cond_160
    :goto_160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_16d

    .line 513
    array-length p1, v0

    if-gt p1, v2, :cond_16a

    move v1, v3

    :cond_16a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    :cond_16d
    return v3

    :cond_16e
    :goto_16e
    return v1
.end method

.method public onFlipEntryViewClick(Landroid/view/View;)Z
    .registers 7

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 637
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->interceptClickByLowPower()Z

    move-result v2

    if-nez v2, :cond_8a

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    if-nez v2, :cond_8a

    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->optionBarFastDoubleClick(I)Z

    move-result v2

    if-nez v2, :cond_8a

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    if-nez v2, :cond_8a

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemDisable:Z

    if-eqz v2, :cond_2a

    goto :goto_8a

    .line 641
    :cond_2a
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_33

    const/16 v3, 0xd1

    .line 642
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 645
    :cond_33
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-eqz v2, :cond_65

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-eqz v3, :cond_65

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingItemSellingPoint"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    .line 647
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 648
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 650
    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :cond_65
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_76

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_70

    .line 654
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 656
    :cond_70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_88

    .line 658
    :cond_76
    array-length p1, v0

    const/4 v0, 0x2

    if-le p1, v0, :cond_7e

    .line 659
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    goto :goto_88

    .line 661
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_85

    .line 662
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 664
    :cond_85
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    :goto_88
    const/4 p0, 0x1

    return p0

    :cond_8a
    :goto_8a
    return v1
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 194
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenType:I

    return-void
.end method

.method public onScreenSupply(ZZ)V
    .registers 4

    .line 1524
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz p2, :cond_e

    .line 1526
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method protected onStatusChangedOnCalledThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public optionBarFastDoubleClick(I)Z
    .registers 6

    .line 418
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOP_BAR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    if-gt p1, v0, :cond_17

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->needAlwaysShowFlashItem()Z

    move-result p0

    if-nez p0, :cond_17

    return v1

    :cond_17
    const-wide/16 p0, 0x12c

    .line 421
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p0

    .line 422
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, v1

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected processAnimationIfNeed()Z
    .registers 4

    .line 1634
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1635
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "off"

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 1636
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

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

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 2

    return-void
.end method

.method public setAnimation(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 621
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupLottieAnimation(IZZ)V

    return-void
.end method

.method public setAnimation(Z)V
    .registers 4

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 616
    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupLottieAnimation(IZZ)V

    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 944
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 774
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_25

    .line 776
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 780
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_live_photo"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 785
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_aa

    .line 790
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v1, "60"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 792
    const-string v2, "key_video_fps2"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    if-eqz p1, :cond_57

    goto :goto_59

    .line 793
    :cond_57
    const-string v1, "30"

    :goto_59
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    goto :goto_75

    .line 794
    :cond_5c
    const-string v1, "key_video_size"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    if-eqz p1, :cond_71

    .line 795
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v1, "_60"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    :goto_73
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 797
    :cond_75
    :goto_75
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_92

    .line 799
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 800
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 801
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_92

    .line 802
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 806
    :cond_92
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_ab

    .line 807
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 808
    const-string p1, "key_video_asd"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_video_asd_recognize_result"

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_aa
    :goto_aa
    return-void

    .line 812
    :cond_ab
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 678
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDirection:I

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_7

    .line 733
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 735
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz p0, :cond_e

    .line 736
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 823
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .registers 2

    .line 1509
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    .line 1510
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public setItemClickDisable(Z)V
    .registers 5

    .line 672
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemClickDisable  disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return-void
.end method

.method public setItemDisable(Z)V
    .registers 4

    .line 1640
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemDisable:Z

    .line 1641
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setItemDisable: mItemDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemDisable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    return-void
.end method

.method public setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V
    .registers 2

    .line 752
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1519
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPopOptionSettingControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .registers 2

    .line 833
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    return-void
.end method

.method public setPositionInTopBar(I)V
    .registers 2

    .line 757
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPositionInTopBar:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 818
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 828
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    return-void
.end method

.method protected setToNextIndex()V
    .registers 3

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 1053
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setValueByIndex(I)V

    :cond_10
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 711
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_35

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 714
    :cond_35
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    return-void
.end method

.method public setupFlipEntryView()V
    .registers 3

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_13

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 722
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    return-void
.end method

.method protected showPopupIfNeed()V
    .registers 8

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-nez v1, :cond_9

    goto :goto_28

    .line 1046
    :cond_9
    new-instance v3, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPositionInTopBar:I

    iget-boolean v5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    iget v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDirection:I

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z

    move-result p0

    .line 1047
    iget-object v0, v2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_24

    iget-boolean p0, v2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method public unInit()V
    .registers 5

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_24

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 244
    const-string v2, "key_video_asd"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_video_asd_recognize_result"

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 248
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 249
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 250
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 252
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_3a

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_41

    .line 257
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p0, :cond_48

    .line 260
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    :cond_48
    return-void
.end method

.method protected updateEntryForStatusChanged()V
    .registers 4

    .line 1487
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1488
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1489
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1490
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1491
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_live_photo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 1492
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 1493
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    .line 1494
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    return-void

    .line 1496
    :cond_29
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    return-void

    .line 1499
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    :cond_30
    return-void
.end method

.method protected updateEntryView()V
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1059
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateClickEntryView()V

    goto :goto_10

    .line 1061
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateListEntryView()V

    .line 1063
    :goto_10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->translateItem()V

    return-void
.end method

.method protected updateFlipEntryView()V
    .registers 3

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1068
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipClickEntryView()V

    return-void

    .line 1070
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipListEntryView()V

    return-void
.end method

.method protected updateHighLightShow()V
    .registers 3

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_f

    .line 1374
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1375
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    .line 1374
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_f
    return-void
.end method

.method protected updateShouldGone(Z)V
    .registers 5

    .line 1133
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShouldGone shouldGone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1134
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void
.end method

.method public updateSupportEntries()V
    .registers 1

    .line 1467
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1468
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1469
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    return-void
.end method
