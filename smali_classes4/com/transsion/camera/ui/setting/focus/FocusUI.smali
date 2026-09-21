.class public Lcom/transsion/camera/ui/setting/focus/FocusUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final AF_REGION_BOX:F = 0.2f

.field private static final FLIP_DIMEN_COEFFICIENT:F = 1.3333334f

.field private static final FLIP_SCALE_COEFFICIENT:F = 0.9f

.field private static final FLIP_SCREEN_DENSITY:F = 2.25f

.field private static final MSG_UPDATE_FOCUS_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAFRestrictRect:Landroid/graphics/Rect;

.field private mAIGCCapturing:Z

.field private mActiveFocusEnable:Z

.field private mActiveResulted:Z

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mAutoFocused:Z

.field private mCancelLock:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDisableUI:Z

.field private mDownCropOffset:I

.field private mEnable:Z

.field private mFocusAnimateEnd:Z

.field private final mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

.field private mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

.field private final mHalfFocusSize:F

.field mHideView:Z

.field private mIsAutoFocusSupported:Z

.field private mIsFaceViewShowing:Z

.field private mIsLaserFocusViewNeedShow:Z

.field private final mIsLaserFocusViewSupport:Z

.field private mIsPassiveFocusViewNeedShow:Z

.field private mIsPassiveFocusViewShow:Z

.field private mIsRecognizeQrCode:Z

.field private mIsSmartFocusShowing:Z

.field private mIsTimeLapseRecording:Z

.field private mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

.field private mLockAnimateEnd:Z

.field private mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mLongPressing:Z

.field private mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mOriginPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRoot:Landroid/view/View;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mSplitScreen:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStoreAFRestrictRect:Landroid/graphics/Rect;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private mUpCropOffset:I

.field private mUpScreenHeight:I


# direct methods
.method public static synthetic $r8$lambda$f3GTXlsxG9fzvdEayHochcD1Ag0(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updatePreviewRootRect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveFocusEnable(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActiveFocusEnable(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCancelLock(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFocusAnimateEnd(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFaceViewShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPassiveFocusViewNeedShow(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSmartFocusShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLockAnimateEnd(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPressing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSplitScreen(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStoreAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertStringToRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoUpdateFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->doUpdateFocusView(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideLaserFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyExposureChange(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyExposureChange(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFocused(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyFocused()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyLocked(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munLockAeAf(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocusUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewShow:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    .line 137
    new-instance v2, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    .line 138
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    .line 140
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 142
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    .line 143
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    const/4 v2, -0x1

    .line 144
    iput v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    .line 145
    iput v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    .line 146
    iput v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsRecognizeQrCode:Z

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsTimeLapseRecording:Z

    .line 170
    sget v0, Lcom/transsion/camera/R$bool;->show_laser_focus_view:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    .line 171
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 172
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    invoke-direct {v0, p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    .line 173
    sget v0, Lcom/transsion/camera/R$dimen;->focus_view_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    .line 174
    new-instance p1, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    return-void
.end method

.method private aeAfLocked()Z
    .registers 2

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz p0, :cond_a

    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private autoFocusSupport()Z
    .registers 2

    .line 500
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_focus"

    .line 501
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private calculateFocusCoordinate(FF)Landroid/graphics/Point;
    .registers 10

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 506
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 511
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_ec

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_ec

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_ec

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2d

    goto/16 :goto_ec

    .line 516
    :cond_2d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    if-eqz v0, :cond_39

    .line 517
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, disableUI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 522
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7f

    const/4 v0, 0x7

    .line 523
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v3, :cond_6e

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40100000    # 2.25f

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6a

    const v2, 0x3f99999a    # 1.2f

    goto :goto_7f

    :cond_6a
    const v2, 0x3f666666    # 0.9f

    goto :goto_7f

    .line 530
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 531
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v0, v0

    div-float v2, v3, v0

    .line 536
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 538
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 539
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    int-to-float v5, v3

    cmpg-float v5, p2, v5

    if-lez v5, :cond_ec

    sub-int/2addr v0, v4

    int-to-float v4, v0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_9f

    goto :goto_ec

    .line 544
    :cond_9f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float v6, v5, v2

    add-float/2addr v4, v6

    .line 545
    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v5, v2

    sub-float/2addr v6, v5

    .line 546
    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 547
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHalfFocusSize:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    cmpg-float v2, p1, v4

    if-gez v2, :cond_cb

    move p1, v4

    :cond_cb
    cmpl-float v2, p1, v6

    if-lez v2, :cond_d0

    goto :goto_d1

    :cond_d0
    move v6, p1

    :goto_d1
    cmpl-float p1, p2, v0

    if-lez p1, :cond_d6

    move p2, v0

    :cond_d6
    cmpg-float p1, p2, v1

    if-gez p1, :cond_db

    goto :goto_dc

    :cond_db
    move v1, p2

    :goto_dc
    float-to-int p1, v6

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    float-to-int p2, v1

    .line 566
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    .line 567
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_ec
    :goto_ec
    return-object v1
.end method

.method private convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 8

    const/4 p0, 0x4

    .line 1173
    new-array p0, p0, [Ljava/lang/String;

    .line 1175
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_d
    const/4 v4, 0x1

    if-ge v2, v0, :cond_18

    aget-object v5, p1, v2

    .line 1176
    aput-object v5, p0, v3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1179
    :cond_18
    new-instance p1, Landroid/graphics/Rect;

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, p0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 1180
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private doUpdateFocusView(Ljava/lang/String;)V
    .registers 8

    .line 747
    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ACTIVE_UNFOCUSED"

    const/4 v3, 0x1

    if-nez v1, :cond_11

    .line 748
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 749
    :cond_11
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    if-nez v1, :cond_1c

    .line 750
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 751
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    .line 752
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyFocused()V

    .line 755
    :cond_1c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->aeAfLocked()Z

    move-result v1

    if-eqz v1, :cond_24

    goto/16 :goto_103

    .line 758
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_104

    goto/16 :goto_85

    :sswitch_32
    const-string v0, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_85

    :cond_3b
    const/4 v5, 0x7

    goto :goto_85

    :sswitch_3d
    const-string v0, "PASSIVE_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_85

    :cond_46
    const/4 v5, 0x6

    goto :goto_85

    :sswitch_48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_85

    :cond_4f
    const/4 v5, 0x5

    goto :goto_85

    :sswitch_51
    const-string v0, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto :goto_85

    :cond_5a
    const/4 v5, 0x4

    goto :goto_85

    :sswitch_5c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_85

    :cond_63
    const/4 v5, 0x3

    goto :goto_85

    :sswitch_65
    const-string v0, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto :goto_85

    :cond_6e
    const/4 v5, 0x2

    goto :goto_85

    :sswitch_70
    const-string v0, "LASER_FOCUSEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_85

    :cond_79
    move v5, v3

    goto :goto_85

    :sswitch_7b
    const-string v0, "LASER_SCAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_85

    :cond_84
    move v5, v4

    :goto_85
    packed-switch v5, :pswitch_data_126

    goto/16 :goto_103

    .line 805
    :pswitch_8a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void

    .line 766
    :pswitch_8e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    if-eqz p1, :cond_103

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    .line 768
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result p1

    if-nez p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    if-eqz p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    if-nez p1, :cond_103

    .line 772
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_c0

    .line 773
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_c3

    .line 774
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 775
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    goto :goto_c3

    .line 778
    :cond_c0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAtCenter()V

    .line 780
    :cond_c3
    :goto_c3
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 781
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewShow:Z

    return-void

    .line 761
    :pswitch_c8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 762
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 763
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    return-void

    .line 799
    :pswitch_d1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void

    .line 802
    :pswitch_d5
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    return-void

    .line 785
    :pswitch_d8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    if-eqz p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    if-eqz p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsFaceViewShowing:Z

    if-nez p1, :cond_103

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsSmartFocusShowing:Z

    if-nez p1, :cond_103

    .line 790
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz p1, :cond_103

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p1, :cond_103

    .line 791
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->needShowFocusView()Z

    move-result p1

    if-eqz p1, :cond_103

    .line 792
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showLaserFocusViewAtCenter()V

    .line 793
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewNeedShow:Z

    :cond_103
    :goto_103
    return-void

    :sswitch_data_104
    .sparse-switch
        -0x5373dc6f -> :sswitch_7b
        -0x4bf36fe9 -> :sswitch_70
        0x1d09b766 -> :sswitch_65
        0x2c1b7ca5 -> :sswitch_5c
        0x4b74c21f -> :sswitch_51
        0x5664cb1e -> :sswitch_48
        0x5b4248b5 -> :sswitch_3d
        0x76eb3db3 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_c8
        :pswitch_d1
        :pswitch_c8
        :pswitch_8e
        :pswitch_8a
    .end packed-switch
.end method

.method private handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 4

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "off"

    .line 477
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_reset_exposure"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hasBeenFocused()Z
    .registers 2

    .line 948
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private hasBeenLocked()Z
    .registers 4

    .line 682
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 685
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 686
    sget-object v2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v0, v2, :cond_11

    goto :goto_1b

    .line 689
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    if-nez v0, :cond_1b

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v1
.end method

.method private hideFocusView()V
    .registers 3

    .line 1044
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 1046
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    .line 1047
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 1048
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 1049
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewShow:Z

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->stopAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-void
.end method

.method private hideLaserFocusView()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_10

    .line 1062
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLaserFocusView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    :cond_10
    return-void
.end method

.method private isExceedCurvedScreenArea(FF)Z
    .registers 7

    .line 1184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEdgeDistance:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    .line 1188
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 1189
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    .line 1190
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1191
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2d

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2d

    cmpg-float p1, p2, v3

    if-ltz p1, :cond_2d

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v2

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method

.method private loadDividerScreenInfo()V
    .registers 5

    .line 1196
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1197
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 1196
    const-string v2, "divider_up_screen_height"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1201
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 1200
    const-string v2, "divider_up_crop_offset"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1205
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 1204
    const-string v2, "divider_down_crop_offset"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    .line 1208
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDividerScreenInfo, upScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upScreenCropOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downScreenCropOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private notifyExposureChange(Z)V
    .registers 3

    .line 1213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_14

    .line 1214
    const-string v0, "focus_ui_active"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_f

    const-string p1, "1"

    goto :goto_11

    :cond_f
    const-string p1, "0"

    :goto_11
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method private notifyFocused()V
    .registers 4

    .line 952
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFocused mFocusAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mActiveFocused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCancelLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 956
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_41

    .line 957
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 958
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    .line 961
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hasBeenFocused()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    if-nez v0, :cond_59

    const/4 v0, 0x0

    .line 962
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 963
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 967
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockFlow(Z)V

    :cond_59
    return-void
.end method

.method private notifyLocked()V
    .registers 4

    .line 693
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLocked mLongPressing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mLockAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 696
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_37

    .line 697
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 698
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    .line 701
    :cond_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hasBeenLocked()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_ae_af_lock_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 705
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    :cond_53
    return-void
.end method

.method private performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-nez v1, :cond_9

    goto :goto_18

    .line 403
    :cond_9
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_13

    const/16 p1, 0x6e

    goto :goto_15

    :cond_13
    const/16 p1, 0x6f

    :goto_15
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method private performAutoFocus(Landroid/graphics/Point;Z)V
    .registers 5

    .line 571
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    if-eqz v0, :cond_19

    .line 572
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->loadDividerScreenInfo()V

    .line 573
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpScreenHeight:I

    if-ge v0, v1, :cond_13

    .line 574
    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUpCropOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_19

    :cond_13
    sub-int/2addr v0, v1

    .line 576
    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDownCropOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 580
    :cond_19
    :goto_19
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->focus()V

    return-void
.end method

.method private pointToRect(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 718
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 719
    div-int/lit8 v0, p0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    sub-int/2addr p2, v0

    .line 720
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p0

    invoke-static {p2, v2, v0}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p2

    add-int v0, p1, p0

    add-int/2addr p0, p2

    .line 724
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 725
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p0, p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->viewToReferenceSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_9

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_9
    return-void
.end method

.method private resetUI()V
    .registers 2

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private showFocusViewAt(II)V
    .registers 4

    .line 940
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    return-void
.end method

.method private showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 8

    .line 973
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFocusViewAt mHideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 975
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    if-eqz v0, :cond_35

    goto :goto_6a

    .line 979
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 981
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x2

    .line 982
    div-int/2addr v0, v3

    sub-int/2addr p1, v0

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    sget-object p1, Lcom/transsion/camera/ui/setting/focus/FocusUI$3;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6f

    if-eq p1, v3, :cond_6b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6b

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6b

    :goto_6a
    return-void

    .line 997
    :cond_6b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLockFlow()V

    return-void

    .line 987
    :cond_6f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 988
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLockFlow()V

    return-void

    .line 990
    :cond_79
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockFlow(Z)V

    return-void
.end method

.method private showFocusViewAt(Landroid/graphics/Point;)V
    .registers 3

    .line 944
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    return-void
.end method

.method private showFocusViewAtCenter()V
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1038
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1039
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(II)V

    return-void
.end method

.method private showLaserFocusViewAtCenter()V
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz p0, :cond_7

    .line 1056
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->show()V

    :cond_7
    return-void
.end method

.method private triggerAutoFocus(FF)V
    .registers 4

    .line 483
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    .line 487
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_e

    :goto_d
    return-void

    .line 492
    :cond_e
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(Landroid/graphics/Point;)V

    .line 493
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_1a

    const/16 v0, 0x99

    .line 494
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1a
    const/4 p2, 0x0

    .line 496
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAutoFocus(Landroid/graphics/Point;Z)V

    return-void
.end method

.method private triggerFocusLock(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 6

    .line 633
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "triggerFocusLock"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 639
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1a

    .line 644
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1b

    :goto_1a
    return-void

    .line 650
    :cond_1b
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, v0, p3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    const/4 p2, 0x0

    .line 652
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAutoFocused:Z

    .line 653
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveResulted:Z

    const/4 p2, 0x1

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAutoFocus(Landroid/graphics/Point;Z)V

    return-void
.end method

.method private triggerFocusLockFlow()V
    .registers 4

    const/4 v0, 0x0

    .line 1022
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimateEnd:Z

    .line 1023
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    sget v1, Lcom/transsion/camera/R$drawable;->ic_focus_lock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    new-instance v2, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$2;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private triggerLockDirectly(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 6

    .line 666
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "triggerLockDirectly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 669
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->calculateFocusCoordinate(FF)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    .line 676
    :cond_14
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 678
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->showFocusViewAt(IILcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    return-void
.end method

.method private triggerLockFlow(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockAnimateEnd:Z

    .line 1009
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    sget v1, Lcom/transsion/camera/R$drawable;->ic_focus_lock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    new-instance v2, Lcom/transsion/camera/ui/setting/focus/FocusUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$1;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-interface {v0, v1, v2, p1}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

.method private unLockAeAf()V
    .registers 4

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-nez v0, :cond_5

    goto :goto_22

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_22

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v1, v0, :cond_e

    goto :goto_22

    .line 466
    :cond_e
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsTimeLapseRecording:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v2, v0, :cond_1d

    .line 467
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    return-void

    .line 470
    :cond_1d
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 471
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    :cond_22
    :goto_22
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_9

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_9
    return-void
.end method

.method private updateEnableState(I)V
    .registers 4

    .line 820
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_10

    .line 823
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    .line 822
    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_10
    const/4 p1, 0x1

    if-ne v0, p1, :cond_18

    const/4 p1, 0x0

    .line 826
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->setEnable(Z)V

    return-void

    :cond_18
    if-nez v0, :cond_1d

    .line 828
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->setEnable(Z)V

    :cond_1d
    return-void
.end method

.method private updatePreviewRootRect()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_95

    .line 237
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 241
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsLaserFocusViewSupport:Z

    if-eqz v0, :cond_41

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    if-eqz v0, :cond_36

    .line 244
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->hide()V

    .line 246
    :cond_36
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLaserFocusView:Lcom/transsion/camera/ui/setting/focus/LaserFocusView;

    .line 249
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v0, 0x7

    .line 250
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_7e

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40100000    # 2.25f

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_75

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    const v0, 0x3f99999a    # 1.2f

    invoke-interface {p0, v0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->updateScale(F)V

    return-void

    .line 254
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    const v0, 0x3f666666    # 0.9f

    invoke-interface {p0, v0}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->updateScale(F)V

    return-void

    .line 257
    :cond_7e
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusAnimator:Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;->updateScale(F)V

    :cond_95
    :goto_95
    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 219
    sget v0, Lcom/transsion/camera/R$layout;->focus_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 220
    sget p2, Lcom/transsion/camera/R$id;->focus_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 221
    sget p2, Lcom/transsion/camera/R$id;->focus_preview_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    return-object p1
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

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 834
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateEnableState(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_c1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_be

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_be

    const/4 v2, 0x4

    if-eq p1, v2, :cond_c1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_be

    const/4 v2, 0x6

    if-eq p1, v2, :cond_c1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_be

    const/16 v2, 0x28

    if-eq p1, v2, :cond_c1

    const/16 v2, 0x29

    if-eq p1, v2, :cond_be

    const/16 v2, 0x52

    if-eq p1, v2, :cond_bb

    const/16 v2, 0x53

    if-eq p1, v2, :cond_b8

    const/16 v2, 0x5f

    if-eq p1, v2, :cond_b2

    const/16 v2, 0x60

    if-eq p1, v2, :cond_ac

    const/16 v2, 0x74

    if-eq p1, v2, :cond_a9

    const/16 v2, 0x75

    if-eq p1, v2, :cond_a6

    const/16 v2, 0xd2

    if-eq p1, v2, :cond_c1

    const/16 v2, 0xd3

    if-eq p1, v2, :cond_be

    const/16 v2, 0xe9

    if-eq p1, v2, :cond_c1

    const/16 v2, 0xea

    if-eq p1, v2, :cond_be

    const/16 v2, 0x101

    if-eq p1, v2, :cond_99

    const/16 v2, 0x102

    if-eq p1, v2, :cond_92

    sparse-switch p1, :sswitch_data_ca

    packed-switch p1, :pswitch_data_104

    packed-switch p1, :pswitch_data_110

    goto :goto_91

    .line 879
    :pswitch_5d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    return-void

    .line 876
    :pswitch_61
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    return-void

    .line 873
    :pswitch_64
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    return-void

    .line 919
    :sswitch_67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->resetUI()V

    return-void

    .line 915
    :sswitch_6b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsRecognizeQrCode:Z

    return-void

    .line 912
    :sswitch_6e
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsRecognizeQrCode:Z

    return-void

    .line 928
    :sswitch_71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    return-void

    .line 864
    :sswitch_77
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 865
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAIGCCapturing:Z

    if-eqz p1, :cond_81

    .line 866
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAIGCCapturing:Z

    .line 867
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    .line 869
    :cond_81
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 870
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsTimeLapseRecording:Z

    return-void

    .line 922
    :sswitch_87
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewShow:Z

    if-eqz p1, :cond_91

    .line 923
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 924
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    :cond_91
    :goto_91
    return-void

    .line 907
    :cond_92
    :sswitch_92
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAIGCCapturing:Z

    .line 908
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 909
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    return-void

    .line 899
    :cond_99
    :sswitch_99
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAIGCCapturing:Z

    .line 900
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 901
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    .line 902
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 903
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    .line 885
    :cond_a6
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    return-void

    .line 882
    :cond_a9
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mSplitScreen:Z

    return-void

    .line 894
    :cond_ac
    :sswitch_ac
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    .line 895
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyExposureChange(Z)V

    return-void

    .line 889
    :cond_b2
    :sswitch_b2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    .line 890
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyExposureChange(Z)V

    return-void

    .line 934
    :cond_b8
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsTimeLapseRecording:Z

    return-void

    .line 931
    :cond_bb
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsTimeLapseRecording:Z

    return-void

    .line 861
    :cond_be
    :pswitch_be
    :sswitch_be
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    return-void

    .line 847
    :cond_c1
    :pswitch_c1
    :sswitch_c1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mHideView:Z

    .line 848
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 849
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    return-void

    :sswitch_data_ca
    .sparse-switch
        0x7 -> :sswitch_be
        0x9 -> :sswitch_be
        0xf -> :sswitch_87
        0x1c -> :sswitch_77
        0xd5 -> :sswitch_71
        0xfb -> :sswitch_c1
        0x107 -> :sswitch_6e
        0x108 -> :sswitch_6b
        0x119 -> :sswitch_b2
        0x11a -> :sswitch_ac
        0x137 -> :sswitch_67
        0x139 -> :sswitch_67
        0x18b -> :sswitch_99
        0x18c -> :sswitch_92
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x22
        :pswitch_c1
        :pswitch_be
        :pswitch_c1
        :pswitch_be
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x70
        :pswitch_64
        :pswitch_61
        :pswitch_5d
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_65

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_65

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_65

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    goto :goto_65

    .line 414
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 416
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v2

    .line 417
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-lez v2, :cond_65

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5e

    goto :goto_65

    .line 421
    :cond_5e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_65
    :goto_65
    return v1
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 6

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    if-nez v0, :cond_a

    goto :goto_41

    .line 592
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->isExceedCurvedScreenArea(FF)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 593
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "LongPress point is out of Curved Screen Area!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 597
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsRecognizeQrCode:Z

    if-eqz v0, :cond_1d

    return v1

    .line 601
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 602
    sget-object v2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v2, v0, :cond_2a

    goto :goto_41

    .line 606
    :cond_2a
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    .line 609
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->handleAeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 611
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->autoFocusSupport()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 614
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerFocusLock(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    goto :goto_3e

    .line 616
    :cond_3b
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerLockDirectly(FFLcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    :goto_3e
    const/4 p1, 0x1

    .line 619
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    :cond_41
    :goto_41
    return v1
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 386
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->resetUI()V

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .registers 6

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 430
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_6f

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_6f

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_6f

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    goto :goto_6f

    .line 436
    :cond_29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->isExceedCurvedScreenArea(FF)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 437
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp point is out of Curved Screen Area! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 442
    :cond_46
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mActiveFocusEnable:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    if-nez v0, :cond_55

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_67

    :cond_55
    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mCancelLock:Z

    .line 447
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 449
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    .line 452
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unLockAeAf()V

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->triggerAutoFocus(FF)V

    return v1

    .line 443
    :cond_67
    :goto_67
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is disable!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 432
    :cond_6f
    :goto_6f
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 712
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 713
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    .line 714
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 213
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 214
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 12

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 346
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1d

    .line 351
    const-string v1, "auto"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move p1, v0

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    .line 352
    const-string v1, "key_long_exposure_scene"

    const-string v2, "key_long_exposure_capture_state"

    const-string v3, "key_restrict_area"

    const-string v4, "key_video_frame"

    const-string v5, "key_dual_cam_split_style"

    const-string v6, "key_animal_eye_view_state"

    const-string v7, "key_human_view_state"

    const-string v8, "key_eye_view_state"

    const-string v9, "key_face_view_state"

    if-eqz p1, :cond_50

    .line 353
    invoke-direct {p0, v9}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, v8}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_6b

    .line 363
    :cond_50
    invoke-direct {p0, v9}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v8}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 373
    :goto_6b
    const-string p1, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 374
    const-string p1, "key_fold_switch_preview"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v1, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI-IA;)V

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 293
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mEnable:Z

    .line 295
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 296
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLongPressing:Z

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->notifyLocked()V

    :cond_e
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

    .line 381
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 279
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 228
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mFocusView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mDisableUI:Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 317
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsAutoFocusSupported:Z

    if-eqz v0, :cond_3d

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_36

    .line 319
    const-string v0, "key_face_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 320
    const-string v0, "key_eye_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 321
    const-string v0, "key_human_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 322
    const-string v0, "key_animal_eye_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 323
    const-string v0, "key_dual_cam_split_style"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 324
    const-string v0, "key_video_frame"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 325
    const-string v0, "key_restrict_area"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 326
    const-string v0, "key_long_exposure_capture_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 327
    const-string v0, "key_long_exposure_scene"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    goto :goto_3d

    .line 329
    :cond_36
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    :cond_3d
    :goto_3d
    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 333
    const-string v0, "key_fold_switch_preview"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideFocusView()V

    .line 335
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->hideLaserFocusView()V

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mIsPassiveFocusViewNeedShow:Z

    .line 337
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mAFRestrictRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mStoreAFRestrictRect:Landroid/graphics/Rect;

    .line 272
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updatePreviewRootRect()V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewRoot:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    return-void
.end method

.method public updateRestrictRect(Landroid/graphics/Rect;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI;->mUIHandler:Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
