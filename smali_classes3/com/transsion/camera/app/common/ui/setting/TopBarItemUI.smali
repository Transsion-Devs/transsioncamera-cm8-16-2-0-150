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

.field private mItemSellingPointsLayer:I

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
.method public static synthetic $r8$lambda$0WrTD678Z1C7xlnw9gROLsQENPU(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$8(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8lExS21LncpMdOngg4dLRQyTPmg(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$setupLottieAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9z8lga9xTD-DIFDn9Ui4I3zhWck(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$createFlipEntryView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BQZwd30GmKnOEdhrPv7wkECUGos(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$changeIconColor$10(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FNdaooDJ_lupknyWz990BCnXlfc(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$9(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f5LNku60ejsV9-sw0LNhTwbRR4w(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZZLcom/airbnb/lottie/LottieComposition;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$setupLottieAnimation$3(ZIZZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$geG8OGrb08viwtQKlHsvd2iuAZ0(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$initIconColor$7(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n55SF2h0mVjXA7z9YGlDH4uJrBo(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$onScreenSupply$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUzrN49uOM3MzcMiQ3H3WjwTh2E(Ljava/lang/Throwable;)V
    .registers 3

    .line 592
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to load composition"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDK7It8y9W-HLbzBMv-moufU4BQ(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$createOptionEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqpBhd7FpAwFCFPwvpzWOwHaKr4(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$changeIconColor$11(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zb54v5uT4bY1lEBxkS-xF5CQiZo(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$createEntryView$1(Landroid/view/View;)V

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

    .line 87
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 158
    new-array v0, v0, [J

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "Video Quality"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 116
    const-string v0, "30"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->VIDEO_FPS_30:Ljava/lang/String;

    .line 117
    const-string v0, "60"

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->VIDEO_FPS_60:Ljava/lang/String;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 134
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 137
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 138
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$SettingStateChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    .line 154
    iput v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsLayer:I

    .line 155
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenType:I

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentModeSupportNewVideoSize:Z

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedAnimation:Z

    .line 189
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    .line 190
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportTopBarLottieAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationSupport:Z

    .line 192
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method private addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1116
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1117
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

    .line 1576
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    goto :goto_70

    .line 1579
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 1580
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v1

    .line 1581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 1582
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v3

    .line 1583
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1584
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

    .line 1585
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_live_photo"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1586
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0, v4, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZ)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    .line 1589
    :cond_63
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0, v4, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZ)V

    invoke-virtual {v3, v2, v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_20

    :cond_70
    :goto_70
    return-void
.end method

.method private checkCallUIType()V
    .registers 6

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v0, :cond_9

    goto :goto_77

    .line 539
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 541
    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallUIType: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_64

    .line 544
    const-string v0, "key_color_style"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_supernight_filter"

    .line 545
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_filter"

    .line 546
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "key_image_style"

    .line 547
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_5c

    .line 549
    :cond_4c
    const-string v0, "key_celebrity_scene"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x188

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 548
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x16a

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 552
    :cond_64
    array-length v0, v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_70

    const-string v0, "key_flash_facade"

    .line 553
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 554
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

    .line 1007
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

    .line 1611
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {p1, p2}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private getAnimatingColor(FZIZ)I
    .registers 6

    if-eqz p2, :cond_5

    .line 1596
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    :goto_7
    if-eqz p2, :cond_c

    .line 1597
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

    .line 1599
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

    .line 1600
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

    .line 1604
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

    .line 641
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
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-nez p0, :cond_a

    .line 403
    const-string p0, "SellingPoint"

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method private getVideoQuality(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_39

    .line 1294
    const-string p0, "5"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1295
    const-string p0, "720P 30FPS"

    return-object p0

    .line 1296
    :cond_d
    const-string p0, "6"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1297
    const-string p0, "1080P 30FPS"

    return-object p0

    .line 1298
    :cond_18
    const-string p0, "6_60"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 1299
    const-string p0, "1080P 60FPS"

    return-object p0

    .line 1300
    :cond_23
    const-string p0, "11"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1301
    const-string p0, "2K 30FPS"

    return-object p0

    .line 1302
    :cond_2e
    const-string p0, "8"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 1303
    const-string p0, "4K 30FPS"

    return-object p0

    :cond_39
    return-object p1
.end method

.method private initIconColor(Landroid/view/ViewGroup;)V
    .registers 4

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "top_bar_animation_icon_on"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOnColor:I

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "top_bar_animation_icon_off"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconOffColor:I

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "top_bar_animation_icon_low_light"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIconLowLightColor:I

    return-void
.end method

.method private initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 1556
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    return-void
.end method

.method private interceptClickByLowPower()Z
    .registers 4

    .line 960
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    if-ne v0, v2, :cond_1f

    .line 961
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v0, :cond_1f

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_15

    .line 963
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 965
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

    .line 1615
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

    .line 1587
    invoke-virtual {p4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getAnimatingColor(FZIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$changeIconColor$11(ZIZLcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 5

    .line 1590
    invoke-virtual {p4}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getAnimatingColor(FZIZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createEntryView$1(Landroid/view/View;)V
    .registers 5

    .line 334
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

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->storeKeyStatus(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    return-void
.end method

.method private synthetic lambda$createFlipEntryView$2(Landroid/view/View;)V
    .registers 4

    .line 424
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onFlipEntryViewClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 426
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private synthetic lambda$createOptionEntryView$0(Landroid/view/View;)V
    .registers 5

    .line 298
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

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->storeKeyStatus(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 301
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_35
    return-void
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

.method private synthetic lambda$initIconColor$8(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1568
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

.method private synthetic lambda$initIconColor$9(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 9

    .line 1557
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 1558
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

    .line 1559
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 1560
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

    .line 1561
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_live_photo"

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1562
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1563
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, v1, v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 1566
    :cond_65
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1567
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_13

    :cond_7c
    return-void
.end method

.method private synthetic lambda$onScreenSupply$6(Z)V
    .registers 3

    .line 1532
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_7

    .line 1533
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1535
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1536
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1538
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p0, :cond_15

    .line 1539
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->onScreenSupply(Z)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$setupLottieAnimation$3(ZIZZLcom/airbnb/lottie/LottieComposition;)V
    .registers 7

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_6

    goto/16 :goto_86

    .line 572
    :cond_6
    iput-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p1, :cond_15

    .line 573
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p5

    if-eqz p5, :cond_15

    .line 574
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 576
    :cond_15
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p5, :cond_6e

    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p5}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p5

    if-eqz p5, :cond_23

    if-eqz p1, :cond_6e

    .line 577
    :cond_23
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mComposition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 578
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

    .line 579
    const-string p5, "off"

    goto :goto_42

    :cond_40
    const-string p5, "on"

    .line 580
    :goto_42
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p5}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getLottieAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    goto :goto_67

    .line 581
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

    .line 582
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const-string v0, "images"

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 584
    :cond_67
    :goto_67
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 586
    :cond_6e
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->changeIconColor(IZ)V

    .line 587
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_7b

    if-eqz p1, :cond_86

    :cond_7b
    if-eqz p4, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    if-eqz p1, :cond_86

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_86
    :goto_86
    return-void
.end method

.method private synthetic lambda$setupLottieAnimation$5(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 624
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_live_photo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 625
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

    .line 1310
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

    .line 1407
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setValueByIndex(I)V
    .registers 7

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 1015
    array-length v1, v0

    .line 1016
    rem-int/2addr p1, v1

    .line 1018
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 1019
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1021
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1022
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    .line 1029
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_87

    .line 1030
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1031
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 1032
    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1034
    const-string v3, "key_video_fps2"

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "_60"

    if-eqz v3, :cond_61

    .line 1035
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

    .line 1036
    :cond_5a
    const-string p1, ""

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_82

    .line 1037
    :cond_61
    const-string v0, "key_video_size"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    if-eqz v2, :cond_7d

    .line 1038
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

    .line 1040
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1042
    :goto_82
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1044
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p1, :cond_8e

    .line 1045
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    .line 1047
    :cond_8e
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnValueChanged()V

    return-void
.end method

.method private setupLottieAnimation(IZZ)V
    .registers 13

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_e

    goto :goto_5e

    .line 562
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5e

    .line 563
    array-length v1, v0

    if-lt p1, v1, :cond_1d

    goto :goto_5e

    .line 566
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_live_photo"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 567
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

    .line 568
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda4;-><init>()V

    .line 592
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 593
    iget-object p0, v4, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;

    invoke-direct {p1, v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
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

    .line 1402
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 1403
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

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldUpdateTint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private showSellingPointsIfNeed()V
    .registers 3

    .line 1619
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1620
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-nez v0, :cond_15

    .line 1621
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSellingPointsIfNeed, mEntryRootLayout is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1623
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsLayer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_29

    .line 1625
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, viewStub is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1628
    :cond_29
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1629
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-nez v0, :cond_42

    .line 1631
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showSellingPointsIfNeed, mEntrySellingImg is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 p0, 0x0

    .line 1634
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1636
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntrySellingImg:Landroid/widget/ImageView;

    if-eqz p0, :cond_50

    const/16 v0, 0x8

    .line 1637
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_50
    return-void
.end method

.method private storeKeyStatus(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private translateItem()V
    .registers 10

    .line 356
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

    .line 360
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 364
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

    .line 365
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "6_60"

    .line 366
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 367
    :cond_4a
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 368
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_1080_translate:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 370
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x15a

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto/16 :goto_10e

    .line 371
    :cond_7c
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "8"

    .line 372
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "8_60"

    .line 373
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v6, "11"

    .line 374
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 375
    :cond_a6
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_size_4k_translate:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 378
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v7, 0x15b

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_10e

    .line 379
    :cond_d7
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 380
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_fps:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/transsion/camera/app/common/R$dimen;->top_bar_video_fps:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 382
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

    .line 386
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

    .line 387
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 388
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_143

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 389
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 390
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    :cond_143
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 391
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_anti_video"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15f

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 392
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_super_anti_video"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 393
    :cond_15f
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 395
    :cond_162
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_176
    :goto_176
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateClickEntryView()V
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 1090
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1091
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 1092
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDescription()V

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_27

    .line 1095
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private updateEntryDescription()V
    .registers 5

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v0, :cond_5

    return-void

    .line 1242
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
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

    .line 1244
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 1245
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1246
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1247
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

    .line 1249
    :cond_5a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :goto_65
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 1252
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_b5

    .line 1254
    :cond_74
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_quality"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1255
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 1256
    :cond_8c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_facebeauty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1257
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

    .line 1259
    :cond_ae
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
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

    .line 1314
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1318
    :cond_9
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 1320
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1321
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_1a

    :cond_19
    move-object v0, v1

    .line 1323
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1324
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 1325
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1326
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_34

    .line 1328
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1331
    :goto_34
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_52

    .line 1332
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 1333
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x0

    .line 1334
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    goto :goto_52

    .line 1336
    :cond_4b
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1339
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doUpdateSettingEntryView()V

    return-void
.end method

.method private updateFlipClickEntryView()V
    .registers 2

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 1104
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1105
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1106
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDescription()V

    .line 1108
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryText()V

    .line 1109
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_27

    .line 1110
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private updateFlipEntryDescription()V
    .registers 5

    .line 1266
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    goto/16 :goto_9c

    .line 1269
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1270
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 1272
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_49

    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_93

    .line 1276
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_93

    .line 1278
    :cond_49
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_quality"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getVideoQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 1281
    :cond_64
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_facebeauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
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

    .line 1285
    :cond_89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
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

    .line 1343
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 1347
    :cond_9
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 1348
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 1349
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1350
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1351
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_23
    const/4 v0, 0x0

    .line 1353
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1355
    :goto_27
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2e

    .line 1356
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateFlipEntryText()V
    .registers 3

    .line 1361
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1362
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1364
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

    .line 1391
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result v0

    .line 1392
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 1393
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1395
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_16

    .line 1396
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_16
    return-void
.end method

.method private updateFlipListEntryView()V
    .registers 8

    const/4 v0, 0x0

    .line 1205
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1206
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1209
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldShown()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v1, :cond_25

    .line 1210
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1211
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOP_BAR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1212
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    .line 1216
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 1217
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

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid index, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
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

    .line 1221
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1222
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 1226
    :cond_93
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    if-eqz v4, :cond_9a

    move v0, v2

    :cond_9a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDescription()V

    .line 1228
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryText()V

    .line 1229
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryDrawable(I)V

    .line 1230
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipHighLightShow()V

    return-void
.end method

.method private updateListEntryView()V
    .registers 8

    const/4 v0, 0x0

    .line 1149
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1150
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-nez v1, :cond_8

    goto :goto_24

    .line 1153
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldShown()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-nez v1, :cond_25

    .line 1154
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 1155
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOP_BAR"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1156
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void

    .line 1160
    :cond_25
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 1161
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

    .line 1162
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateSettingName(I)V

    if-gez v1, :cond_96

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid index, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
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

    .line 1166
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1167
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 1171
    :cond_96
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v3, :cond_a2

    .line 1172
    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    if-eqz v4, :cond_9f

    move v0, v2

    :cond_9f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    :cond_a2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDescription()V

    .line 1175
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDrawable(I)V

    .line 1176
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateHighLightShow()V

    return-void
.end method

.method private updateSettingName(I)V
    .registers 8

    .line 1179
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_87

    .line 1182
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 1183
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1184
    const-string v2, "key_supernight_filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "key_filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1185
    :cond_20
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentFilterName(Ljava/lang/String;)V

    .line 1187
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

    .line 1190
    :cond_38
    const-string v2, "key_video_portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1191
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

    .line 1188
    :goto_51
    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setPortraitOpen(Z)V

    .line 1193
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

    .line 1194
    :goto_61
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setFaceBeautyOpen(Z)V

    goto :goto_79

    .line 1196
    :cond_65
    const-string v2, "key_video_facebeauty"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1197
    const-string/jumbo v2, "video_facebeauty_on"

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setFaceBeautyOpen(Z)V

    .line 1199
    :cond_79
    :goto_79
    const-string p0, "key_mu_slimbody"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    if-lez p1, :cond_84

    move v3, v4

    .line 1200
    :cond_84
    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setSlimBodyOpen(Z)V

    :cond_87
    :goto_87
    return-void
.end method

.method private updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1123
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_c

    .line 1124
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_c
    const/4 p0, 0x0

    .line 1126
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 7

    .line 312
    iput p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsImgId:I

    .line 313
    iput p6, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSellingPointsLayer:I

    const/4 p5, 0x0

    .line 314
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    const/4 p6, -0x1

    if-eq p4, p6, :cond_19

    .line 316
    invoke-virtual {p1, p3, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    .line 317
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    goto :goto_21

    .line 319
    :cond_19
    invoke-virtual {p1, p3, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 321
    :goto_21
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, p5}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 323
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->initIconColor(Landroid/view/ViewGroup;)V

    .line 324
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "video_quality_setting_title"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showSellingPointsIfNeed()V

    .line 327
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5a

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 330
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const p3, 0x3f4ccccd    # 0.8f

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 331
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p1, :cond_6b

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationSupport:Z

    if-nez p1, :cond_79

    :cond_6b
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 332
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p3, "key_live_photo"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    :cond_79
    move p5, p2

    :cond_7a
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    if-eqz p1, :cond_90

    return-object p1

    :cond_90
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method public createFlipEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;)Landroid/view/View;
    .registers 5

    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 412
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getEntryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    .line 413
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    .line 414
    invoke-interface {p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;->getTextView()Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipTextView:Landroid/widget/TextView;

    .line 416
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "video_quality_setting_title"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 419
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
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

    .line 284
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 285
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 287
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->initIconColor(Landroid/view/ViewGroup;)V

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSellingPointMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p3, "video_quality_setting_title"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mVideoQualityTitle:Ljava/lang/String;

    .line 290
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLcom/tencent/mmkv/MMKV;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_3f
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 296
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedAnimation()[Ljava/lang/String;

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method protected createSupportEntries()Z
    .registers 7

    .line 974
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_fps2"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 976
    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    const-string v1, "60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/4 v1, 0x0

    if-nez v0, :cond_3a

    .line 980
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

    .line 984
    :cond_3a
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 986
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    if-nez v3, :cond_75

    .line 987
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_camera_zoom"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 988
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v4

    .line 989
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_75

    move-object v2, v4

    .line 994
    :cond_75
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 997
    array-length v0, v0

    if-nez v0, :cond_9e

    .line 998
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

    :cond_9e
    const/4 p0, 0x1

    return p0
.end method

.method public currentModeSupportNewVideoSize(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentModeSupportNewVideoSize:Z

    return-void
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 5

    .line 1485
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1486
    const-string v1, "key_picture_size"

    .line 1487
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1488
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1489
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1491
    :cond_21
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 1493
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

    .line 699
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

    .line 709
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    return-object p0
.end method

.method public getIsShouldGone()Z
    .registers 1

    .line 1136
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 1

    .line 443
    const-string p0, "TOP_BAR"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 232
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

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 1

    .line 730
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .registers 1

    .line 1545
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

    .line 1549
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1552
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTintList()Landroid/content/res/ColorStateList;
    .registers 1

    const/high16 p0, -0x1000000

    .line 1131
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public hintInfo()V
    .registers 1

    return-void
.end method

.method public needAnimation()Z
    .registers 1

    .line 645
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

    .line 1235
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedItemAnimation:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 8

    .line 874
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

    if-eq p1, v0, :cond_b1

    const/16 v0, 0x4a

    const/4 v2, 0x1

    if-eq p1, v0, :cond_ae

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_b1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_aa

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_a7

    const/16 v0, 0x30

    if-eq p1, v0, :cond_a4

    const/16 v0, 0x31

    if-eq p1, v0, :cond_a1

    const/16 v0, 0x76

    if-eq p1, v0, :cond_97

    const/16 v0, 0x77

    if-eq p1, v0, :cond_8d

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_97

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_8d

    const/16 v0, 0x183

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x184

    if-eq p1, v0, :cond_87

    packed-switch p1, :pswitch_data_b4

    packed-switch p1, :pswitch_data_cc

    goto :goto_a0

    .line 912
    :pswitch_57
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    if-nez p1, :cond_a0

    .line 913
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    return-void

    .line 909
    :pswitch_5e
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    return-void

    .line 906
    :pswitch_61
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return-void

    :pswitch_64
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7f

    .line 897
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_a0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v2

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x2

    .line 898
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionTriggerTime(I)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_a0

    .line 899
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 902
    :cond_7f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 887
    :pswitch_83
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    return-void

    .line 944
    :cond_87
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    return-void

    .line 941
    :cond_8a
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    return-void

    .line 927
    :cond_8d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 928
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setEnable(Z)V

    return-void

    .line 921
    :cond_97
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 922
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setEnable(Z)V

    :cond_a0
    :goto_a0
    return-void

    .line 938
    :cond_a1
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    return-void

    .line 935
    :cond_a4
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    return-void

    .line 917
    :cond_a7
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    return-void

    .line 932
    :cond_aa
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->translateItem()V

    return-void

    .line 877
    :cond_ae
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    return-void

    .line 881
    :cond_b1
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    return-void

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_64
        :pswitch_83
        :pswitch_64
        :pswitch_83
        :pswitch_64
        :pswitch_83
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1c
        :pswitch_61
        :pswitch_5e
        :pswitch_57
    .end packed-switch
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 272
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 273
    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 274
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-nez p2, :cond_12

    .line 275
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 277
    :cond_12
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz p2, :cond_1b

    .line 278
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    invoke-interface {p2, p1, p0, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_1b
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;Z)Z
    .registers 8

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_15

    .line 449
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_16e

    .line 453
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

    .line 454
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEntryViewClick, currentUIState is STATE_PROCESSING, not allow click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 458
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

    .line 459
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEntryViewClick, live photo view is animating, not allow click"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 462
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 463
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

    .line 468
    :cond_77
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_90

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_88

    array-length p2, v0

    if-gt p2, v2, :cond_88

    .line 469
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->needAlwaysShowFlashItem()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 470
    :cond_88
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v3, 0xd1

    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_9b

    .line 471
    :cond_90
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_9b

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    if-eqz v3, :cond_9b

    .line 472
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    .line 476
    :cond_9b
    :goto_9b
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-eqz p2, :cond_cd

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-eqz v3, :cond_cd

    .line 477
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

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 479
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 481
    :cond_c6
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    :cond_cd
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    if-eqz p2, :cond_d8

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v3, :cond_d8

    .line 484
    invoke-interface {p2, v3}, Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;->onTopBarItemListClick(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 486
    :cond_d8
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->checkCallUIType()V

    .line 487
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    const/4 v3, 0x1

    if-eqz p2, :cond_ee

    .line 488
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p2, :cond_e7

    .line 489
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 491
    :cond_e7
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_160

    .line 493
    :cond_ee
    array-length p1, v0

    if-gt p1, v2, :cond_f7

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->needAlwaysShowFlashItem()Z

    move-result p1

    if-eqz p1, :cond_13d

    :cond_f7
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz p1, :cond_13d

    .line 495
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_12c

    .line 496
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    if-eqz p2, :cond_11f

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p2, :cond_11f

    .line 497
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->getCurrentPopupWindowKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11f

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 499
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    goto :goto_12f

    .line 501
    :cond_11f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_126

    .line 502
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->doOnDismiss()V

    .line 504
    :cond_126
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    .line 505
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mChangePopWindowHide:Z

    goto :goto_12f

    .line 508
    :cond_12c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    .line 510
    :goto_12f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz p1, :cond_160

    .line 511
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->updateCurrentPopWindowKey(Ljava/lang/String;)V

    goto :goto_160

    .line 514
    :cond_13d
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_15b

    .line 515
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz p2, :cond_158

    .line 516
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopupWithoutAnimation()V

    .line 517
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_15b

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFilterUIShow:Z

    if-nez p2, :cond_154

    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCelebritySceneUIShow:Z

    if-eqz p2, :cond_15b

    .line 518
    :cond_154
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->showPopSettingView()V

    goto :goto_15b

    .line 521
    :cond_158
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 524
    :cond_15b
    :goto_15b
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    .line 528
    :cond_160
    :goto_160
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result p1

    if-eqz p1, :cond_16d

    .line 529
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

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 653
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 654
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

    .line 657
    :cond_2a
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_33

    const/16 v3, 0xd1

    .line 658
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 661
    :cond_33
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointData:Lcom/tencent/mmkv/MMKV;

    if-eqz v2, :cond_65

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-eqz v3, :cond_65

    .line 662
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

    .line 663
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 664
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 666
    :cond_5e
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_65
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_76

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_70

    .line 670
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 672
    :cond_70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_88

    .line 674
    :cond_76
    array-length p1, v0

    const/4 v0, 0x2

    if-le p1, v0, :cond_7e

    .line 675
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    goto :goto_88

    .line 677
    :cond_7e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_85

    .line 678
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 680
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

    .line 197
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenType:I

    return-void
.end method

.method public onScreenSupply(Z)V
    .registers 4

    .line 1530
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    .line 1531
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStatusChangedOnCalledThread(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public optionBarFastDoubleClick(I)Z
    .registers 6

    .line 434
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

    .line 437
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p0

    .line 438
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, v1

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 745
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected processAnimationIfNeed()Z
    .registers 4

    .line 1643
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsLottieAnimationSupport:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1644
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

    .line 1645
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

    .line 637
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupLottieAnimation(IZZ)V

    return-void
.end method

.method public setAnimation(Z)V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 632
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

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 777
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_25

    .line 779
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

    .line 783
    :cond_25
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 784
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_live_photo"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 788
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_aa

    .line 793
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v1, "60"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 795
    const-string v2, "key_video_fps2"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    if-eqz p1, :cond_57

    goto :goto_59

    .line 796
    :cond_57
    const-string v1, "30"

    :goto_59
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    goto :goto_75

    .line 797
    :cond_5c
    const-string v1, "key_video_size"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    if-eqz p1, :cond_71

    .line 798
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

    .line 800
    :cond_75
    :goto_75
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_92

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 803
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 804
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_92

    .line 805
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 809
    :cond_92
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_ab

    .line 810
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 811
    const-string p1, "key_video_asd"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_video_asd_recognize_result"

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_aa
    :goto_aa
    return-void

    .line 815
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

    .line 694
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDirection:I

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_7

    .line 736
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 738
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz p0, :cond_e

    .line 739
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

    .line 826
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .registers 2

    .line 1520
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setItemClickDisable(Z)V
    .registers 5

    .line 688
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemClickDisable  disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return-void
.end method

.method public setItemDisable(Z)V
    .registers 4

    .line 1649
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemDisable:Z

    .line 1650
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

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V
    .registers 2

    .line 770
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    return-void
.end method

.method public setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1525
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPopOptionSettingControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
    .registers 2

    .line 750
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    return-void
.end method

.method public setPositionInTopBar(I)V
    .registers 2

    .line 760
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPositionInTopBar:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    return-void
.end method

.method protected setToNextIndex()V
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 1064
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

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_13

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 717
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    return-void
.end method

.method public setupFlipEntryView()V
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_13

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 725
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    return-void
.end method

.method protected showPopupIfNeed()V
    .registers 8

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-nez v1, :cond_9

    goto :goto_28

    .line 1057
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

    .line 1058
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

    .line 242
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setItemDisable(Z)V

    .line 243
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_24

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 247
    const-string v2, "key_video_asd"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_video_asd_recognize_result"

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingStateChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 251
    :cond_24
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 252
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 253
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 255
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_3a

    .line 257
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_3a
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 260
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryRootLayout:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_4c

    .line 265
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    .line 267
    :cond_4c
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mFlipEntryView:Landroid/view/View;

    return-void
.end method

.method protected updateEntryForStatusChanged()V
    .registers 4

    .line 1498
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1499
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1500
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    .line 1501
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->processAnimationIfNeed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1502
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_live_photo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    .line 1503
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 1504
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    .line 1505
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    return-void

    .line 1507
    :cond_29
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    return-void

    .line 1510
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setAnimation(Z)V

    :cond_30
    return-void
.end method

.method protected updateEntryView()V
    .registers 3

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1070
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateClickEntryView()V

    goto :goto_10

    .line 1072
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateListEntryView()V

    .line 1074
    :goto_10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->translateItem()V

    return-void
.end method

.method protected updateFlipEntryView()V
    .registers 3

    .line 1078
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1079
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipClickEntryView()V

    return-void

    .line 1081
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipListEntryView()V

    return-void
.end method

.method protected updateHighLightShow()V
    .registers 3

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz v0, :cond_f

    .line 1385
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 1386
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    .line 1385
    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_f
    return-void
.end method

.method protected updateShouldGone(Z)V
    .registers 5

    .line 1144
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShouldGone shouldGone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1145
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void
.end method

.method public updateSupportEntries()V
    .registers 1

    .line 1478
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 1479
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 1480
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryView()V

    return-void
.end method
