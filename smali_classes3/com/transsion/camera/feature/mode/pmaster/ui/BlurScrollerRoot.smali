.class public Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;
    }
.end annotation


# static fields
.field private static final CONFLICT_WITH_MAKEUP:Z

.field private static final MSG_CLOSE_BLUR:I = 0x65

.field private static final MSG_CLOSE_BLUR_BY_FLARE:I = 0x66

.field private static final MSG_SHOW_GUIDE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_FLASH_DELAY_TIME:I = 0x32

.field private static sBlurHasChanged:Z

.field private static sChangeZoomCount:I


# instance fields
.field private mBlurIcon:Landroid/widget/ImageView;

.field private mBlurScrollerRoot:Landroid/widget/FrameLayout;

.field private mBlurScrollerRootCallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;

.field private mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mCameraChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBlurValue:Ljava/lang/String;

.field private final mCustomizedFocalLengthSupport:Z

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

.field private mFaceBeautyValue:Ljava/lang/String;

.field private mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

.field private mIsBlurOn:Z

.field private mIsModeSwitching:Z

.field private mLowLight:Z

.field private mMakeupValue:Ljava/lang/String;

.field private final mMumonomerSupportFlash:Z

.field public mPMasterZoomLens:[Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

.field private mScreenFormType:I

.field private mScrollerDurationRoot:Landroid/widget/RelativeLayout;

.field private mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mSingleBlurForBackCamera:Z

.field private mSlimBodyValue:Ljava/lang/String;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mStereoSupportFlash:Z

.field private final mSupportPortraitFlare:Z

.field private mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

.field private mWarningType:I


# direct methods
.method public static synthetic $r8$lambda$FPFQ-Fls-sIDGi2YuFX_NDXh1cE(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->lambda$updateLayout$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YgRczffUQU-TonE7A6qHG26Gz1c(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->lambda$updateLayout$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rKZIBKzgECDZ5fXhkQteMoW-56M(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->lambda$updateLayout$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryDWaRzjOnbzzo82cdNLlrGqWT0(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->lambda$initBlurUI$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ty8qhYNmKauz6tbLVekTj_f-YvE(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->lambda$updateLayout$1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlurIcon(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCurrentBlurValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomizedFocalLengthSupport(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceBeautyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mFaceBeautyValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHideBottomPanelListener(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBlurOn(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsModeSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMumonomerSupportFlash(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMumonomerSupportFlash:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleBlurForBackCamera(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCurrentBlurValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFaceBeautyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMakeupValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMakeupValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlimBodyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSlimBodyValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCameraFacingScope(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getCameraFacingScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetClosedReason(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReason()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetClosedReasonKey(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReasonKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDurationDataList(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getDurationDataList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFocalLength(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFocalLength(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAllConflictFeatureClosed(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isAllConflictFeatureClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCameraFacingBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMainThread(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueryDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;IZ)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestoreBlurForConflictOff(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->restoreBlurForConflictOff(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGuide(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->showGuide(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsBlurHasChanged()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sBlurHasChanged:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsChangeZoomCount()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsBlurHasChanged(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sBlurHasChanged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsChangeZoomCount(I)V
    .registers 1

    .line 0
    sput p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BlurScrollerRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPortraitBlurConflictWithMakeUp:Z

    sput-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->CONFLICT_WITH_MAKEUP:Z

    const/4 v0, 0x0

    .line 130
    sput v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 110
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScreenFormType:I

    const/4 p2, -0x1

    .line 119
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mLowLight:Z

    .line 1190
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mResources:Landroid/content/res/Resources;

    .line 137
    sget v0, Lcom/transsion/camera/feature/pmaster/R$bool;->is_algo_support_for_back_camera:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    .line 138
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoSupportFlash:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStereoSupportFlash:Z

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMumonomerSupportFlash:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMumonomerSupportFlash:Z

    .line 140
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getPortraitFlareSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSupportPortraitFlare:Z

    .line 141
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedFocalLengthSupport:Z

    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_zoom_lens:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mPMasterZoomLens:[Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_64

    if-nez v1, :cond_64

    if-eqz v0, :cond_64

    .line 143
    sget-boolean p2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->CONFLICT_WITH_MAKEUP:Z

    if-nez p2, :cond_64

    if-eqz v2, :cond_6b

    .line 144
    :cond_64
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    .line 146
    :cond_6b
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    return-void
.end method

.method private convertZoomToFocal(I)I
    .registers 3

    .line 456
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBaseFocalLength()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 457
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_1b

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p1, p0

    .line 458
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_1b
    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    .line 460
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private doCameraChange(Z)V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 625
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    if-eqz v0, :cond_18

    .line 626
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "single blur,switch camera is unnecessary."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 629
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCameraChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    if-eqz p1, :cond_1f

    const-string p1, "on"

    goto :goto_21

    :cond_1f
    const-string p1, "off"

    :goto_21
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;->onSwitchDualAndMainCamera(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private getCameraFacingScope()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getClosedReason()Ljava/lang/String;
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReasonKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "closed_reason_default_value"

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getCameraFacingScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1021
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosedReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private getClosedReasonKey()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_mu_stereo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "key_mu_monomer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 618
    const-string p0, ""

    return-object p0

    .line 616
    :cond_1c
    const-string p0, "key_mu_monomer_closed_reason"

    return-object p0

    .line 614
    :cond_1f
    const-string p0, "key_mu_stereo_closed_reason"

    return-object p0
.end method

.method private getDurationDataList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 293
    new-instance v4, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    invoke-direct {v4, v3, v3}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object p0
.end method

.method private getFeatureKey()Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 532
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 533
    const-string p0, "key_vip_stereo_feature"

    return-object p0

    :cond_17
    if-eqz v0, :cond_20

    .line 536
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    if-nez p0, :cond_20

    .line 537
    const-string p0, "key_mu_stereo_feature"

    return-object p0

    .line 539
    :cond_20
    const-string p0, "key_mu_monomer_feature"

    return-object p0
.end method

.method private getFirstOrLastFeatureValue()Ljava/lang/String;
    .registers 2

    .line 604
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sBlurHasChanged:Z

    if-nez v0, :cond_1f

    sget v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_1f

    .line 605
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 606
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryFirstEnterValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getLastFeatureValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFocalLength(I)I
    .registers 8

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    move v3, v2

    .line 434
    :goto_7
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mPMasterZoomLens:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1f

    .line 435
    aget-object v4, v4, v3

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 436
    aget-object v4, v4, v2

    .line 437
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 439
    :cond_1f
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->convertZoomToFocal(I)I

    move-result v3

    .line 440
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->convertZoomToFocal(I)I

    move-result p0

    move p1, v2

    :goto_28
    if-ge p1, v0, :cond_37

    .line 442
    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p0, v4, :cond_34

    move v3, v4

    goto :goto_37

    :cond_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    .line 448
    :cond_37
    :goto_37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_47

    .line 449
    aget-object p0, v1, v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 451
    :cond_47
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the current focalLength is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method private getLastFeatureValue()Ljava/lang/String;
    .registers 5

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFeatureKey()Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 515
    const-string v1, "key_mu_monomer_feature"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 516
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 518
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 521
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    if-nez v0, :cond_36

    goto :goto_3f

    .line 524
    :cond_36
    const-string v1, "\\+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    :goto_3f
    if-eqz v2, :cond_49

    .line 525
    const-string v1, "null"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryFirstEnterValue()Ljava/lang/String;

    move-result-object v2

    .line 526
    :cond_4d
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastFeatureValue,value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private inflateScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
    .registers 5

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    .line 204
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_14

    .line 205
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMScrollerRulerViewUI5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMScrollerRulerViewUI5;-><init>(Landroid/content/Context;)V

    goto :goto_1d

    .line 207
    :cond_14
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMScrollerRulerView;-><init>(Landroid/content/Context;)V

    .line 209
    :goto_1d
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x10e

    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private initBlurUI()V
    .registers 7

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string v1, "f0.0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReason()Ljava/lang/String;

    move-result-object v1

    .line 579
    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initBlurUI, closedReason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-nez v4, :cond_3a

    const-string v4, "closed_reason_user"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 581
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->onBlurButtonSwitch(Z)V

    return-void

    .line 585
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_44

    .line 586
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    xor-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 588
    :cond_44
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 590
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_6e

    .line 591
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    .line 594
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-eqz v2, :cond_66

    move-object v2, v0

    goto :goto_6a

    :cond_66
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFirstOrLastFeatureValue()Ljava/lang/String;

    move-result-object v2

    :goto_6a
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    goto :goto_7d

    .line 596
    :cond_6e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-eqz v2, :cond_76

    move-object v2, v0

    goto :goto_7a

    :cond_76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getLastFeatureValue()Ljava/lang/String;

    move-result-object v2

    :goto_7a
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 598
    :goto_7d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 599
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCurrentBlurValue:Ljava/lang/String;

    .line 600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBlurUI,blurValue: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initDurationData(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_81

    .line 545
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryFirstEnterValue()Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    .line 549
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSingleBlurForBackCamera:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 550
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFeatureKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 552
    :cond_2d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFeatureKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3d
    if-nez v3, :cond_45

    if-eqz v1, :cond_45

    .line 555
    sput v2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    .line 556
    sput-boolean v2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sBlurHasChanged:Z

    :cond_45
    if-eqz v1, :cond_67

    .line 558
    sget v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sChangeZoomCount:I

    if-nez v1, :cond_67

    sget-boolean v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->sBlurHasChanged:Z

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 559
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "f0.0"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 564
    :cond_67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v1, :cond_7b

    .line 565
    new-instance v1, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    return-void

    .line 569
    :cond_7b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;I)V

    :cond_81
    return-void
.end method

.method private isAllConflictFeatureClosed()Z
    .registers 5

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 997
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mFaceBeautyValue:Ljava/lang/String;

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSlimBodyValue:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1001
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    if-nez p0, :cond_25

    :cond_22
    if-eqz v1, :cond_25

    return v3

    :cond_25
    return v2

    .line 1005
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMakeupValue:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1006
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-nez p0, :cond_35

    :cond_32
    if-eqz v1, :cond_35

    return v3

    :cond_35
    return v2
.end method

.method private isCameraFacingBack(Ljava/lang/String;)Z
    .registers 2

    .line 643
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 644
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private isDualCameraSupport()Z
    .registers 1

    .line 634
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isMainThread()Z
    .registers 2

    .line 1026
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initBlurUI$0()V
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToCurrentItem()V

    return-void
.end method

.method private synthetic lambda$updateLayout$1(II)V
    .registers 4

    .line 1075
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    const/16 p1, 0x5a

    if-ne p2, p1, :cond_f

    const/16 p2, -0x5a

    goto :goto_16

    :cond_f
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_16

    move p2, p1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    .line 1083
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateLayout$2()V
    .registers 2

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateLayout$3(I)V
    .registers 2

    .line 1138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    rsub-int p1, p1, 0xb4

    :goto_8
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateLayout$4(II)V
    .registers 4

    .line 1160
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    const/16 p1, 0x5a

    if-ne p2, p1, :cond_f

    const/16 p2, -0x5a

    goto :goto_16

    :cond_f
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_16

    move p2, p1

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    .line 1168
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private queryDefaultValue(IZ)Ljava/lang/String;
    .registers 7

    .line 464
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    .line 466
    const-string v0, "f5.6"

    const-string v1, "f4.0"

    const/4 v2, 0x3

    if-eqz p2, :cond_34

    const/16 p2, 0x18

    .line 467
    const-string v3, "f2.8"

    if-eq p1, p2, :cond_30

    const/16 p2, 0x23

    if-eq p1, p2, :cond_30

    const/16 p2, 0x32

    if-eq p1, p2, :cond_24

    const/16 p2, 0x46

    if-eq p1, p2, :cond_20

    const/16 p2, 0x55

    if-eq p1, p2, :cond_20

    return-object v3

    :cond_20
    if-ne p0, v2, :cond_23

    return-object v0

    :cond_23
    return-object v1

    :cond_24
    if-ne p0, v2, :cond_27

    return-object v0

    :cond_27
    const/4 p1, 0x1

    if-eq p0, p1, :cond_2f

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return-object v1

    :cond_2f
    :goto_2f
    return-object v3

    :cond_30
    if-ne p0, v2, :cond_33

    return-object v1

    :cond_33
    return-object v3

    :cond_34
    if-ne p0, v2, :cond_37

    return-object v0

    :cond_37
    return-object v1
.end method

.method private queryFirstEnterValue()Ljava/lang/String;
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 414
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    if-eqz v1, :cond_23

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFocalLength(I)I

    move-result v1

    goto :goto_29

    .line 417
    :cond_23
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalDistance:I

    :goto_29
    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 423
    :cond_31
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    if-nez v0, :cond_3a

    if-nez v1, :cond_3a

    .line 424
    const-string p0, "f4.0"

    return-object p0

    :cond_3a
    const/16 v0, 0x1c

    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->queryDefaultValue(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreBlurForConflictOff(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReasonKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "closed_reason_default_value"

    .line 1012
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getCameraFacingScope()Ljava/lang/String;

    move-result-object v3

    .line 1011
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "closed_reason_user"

    .line 1014
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    .line 1015
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->onBlurButtonSwitch(Z)V

    :cond_22
    return-void
.end method

.method private showDualLensGuide(I)V
    .registers 10

    .line 741
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-nez v0, :cond_c

    .line 742
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showDualLensGuide,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 745
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showDualLensGuide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 746
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    .line 748
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 749
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 750
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 751
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_dual_cam_bw"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 752
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v7, "key_periscope_camera"

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBWCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isBlurCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",is2XBlurCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isDualCamBW: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isPeriscopeCamOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz p1, :cond_b6

    const/4 v7, 0x1

    if-eq p1, v7, :cond_be

    const/4 v7, 0x2

    if-eq p1, v7, :cond_bb

    const/4 v7, 0x4

    if-eq p1, v7, :cond_b8

    .line 769
    const-string p1, "Warning message don\'t need to show"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b6
    move p1, v6

    goto :goto_c8

    .line 763
    :cond_b8
    sget p1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_too_close_toast:I

    goto :goto_c8

    .line 757
    :cond_bb
    sget p1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_lowlight_toast:I

    goto :goto_c8

    :cond_be
    if-nez v1, :cond_c6

    if-eqz v4, :cond_c3

    goto :goto_c6

    .line 766
    :cond_c3
    sget p1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_lens_covered_toast:I

    goto :goto_c8

    :cond_c6
    :goto_c6
    sget p1, Lcom/transsion/camera/feature/pmaster/R$string;->bw_camera_lens_covered_toast:I

    :goto_c8
    if-eqz p1, :cond_e1

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_11f

    .line 774
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_11f

    .line 777
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_e1
    if-nez v1, :cond_10f

    if-nez v2, :cond_e9

    if-nez v3, :cond_e9

    if-eqz p1, :cond_10f

    :cond_e9
    if-nez v4, :cond_10f

    if-nez v5, :cond_10f

    const/4 p1, 0x7

    .line 780
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScreenFormType:I

    if-ne p1, v0, :cond_f3

    goto :goto_10f

    .line 787
    :cond_f3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    .line 788
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_always_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 789
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_11f

    .line 790
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 782
    :cond_10f
    :goto_10f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    .line 783
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_11f

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_11f
    return-void
.end method

.method private showGuide(I)V
    .registers 6

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 732
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showGuide,type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    const-string v1, "key_mu_stereo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 734
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->showDualLensGuide(I)V

    return-void

    .line 735
    :cond_30
    const-string v1, "key_mu_monomer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 736
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->showSingleLensGuide(I)V

    :cond_3b
    return-void
.end method

.method private showSingleLensGuide(I)V
    .registers 6

    .line 795
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-nez v0, :cond_c

    .line 796
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showSingleLensGuide,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 799
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSingleLensGuide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 800
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_4f

    if-eq p1, v0, :cond_4c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_49

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2d

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2a

    goto :goto_51

    .line 811
    :cond_2a
    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_too_close_toast:I

    goto :goto_51

    .line 814
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mContext:Landroid/content/Context;

    .line 815
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fake_dual_camera_lens_covered_toast"

    const-string v3, "string"

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    goto :goto_51

    .line 805
    :cond_49
    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_lowlight_toast:I

    goto :goto_51

    .line 819
    :cond_4c
    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->dual_camera_lens_covered_toast:I

    goto :goto_51

    .line 808
    :cond_4f
    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->fake_dual_camera_always_info:I

    :goto_51
    if-eqz v1, :cond_5e

    .line 825
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 827
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_81

    .line 828
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 829
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 831
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_81
    return-void
.end method

.method private updateUI()V
    .registers 3

    .line 677
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->initBlurUI()V

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    if-eqz p0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 679
    invoke-interface {p0, v1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;->notifyState(IIZ)V

    :cond_c
    return-void
.end method


# virtual methods
.method public closeBlurByConflict(Ljava/lang/String;)V
    .registers 7

    .line 351
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBlurByConflict, mIsBlurOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-nez v0, :cond_25

    return-void

    .line 355
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    const/4 v1, -0x1

    .line 357
    iput v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const-string v2, "f0.0"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 363
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->doCameraChange(Z)V

    .line 365
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCurrentBlurValue:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getClosedReasonKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getCameraFacingScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p1, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1031
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableUIStatus(Z)V
    .registers 5

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    .line 230
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2a
    return-void
.end method

.method public hideHint()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method public onBlurButtonSwitch(Z)V
    .registers 5

    .line 371
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBlurButtonSwitch, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", turnOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-ne v0, p1, :cond_33

    goto :goto_79

    .line 375
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    if-eqz p1, :cond_3c

    .line 378
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getFirstOrLastFeatureValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 381
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_45

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_45
    const/4 v0, -0x1

    .line 384
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    const-string v0, "f0.0"

    .line 386
    :goto_4a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 387
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 388
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 391
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->doCameraChange(Z)V

    .line 392
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCurrentBlurValue:Ljava/lang/String;

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_79

    .line 395
    const-string p1, "key_pmaster_blur_change"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79
    :goto_79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 1036
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 160
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 161
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->blur_scroller_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    .line 162
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->pm_scroller_duration_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->inflateScrollerRulerView()Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 164
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->blur_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    goto :goto_4a

    .line 168
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_fading_edge_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 172
    :goto_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDurationChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 854
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setScreenFormType(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchMoveStart()V
    .registers 1

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRootCallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;->onScrollerRulerViewMoveStart()V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 1

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRootCallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;->onScrollerRulerViewMoveStop()V

    return-void
.end method

.method public openBlurBySeekBar(Ljava/lang/String;)V
    .registers 5

    .line 400
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openBlurBySeekBar, mIsBlurOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    return-void

    .line 404
    :cond_1e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->doCameraChange(Z)V

    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;Z)V
    .registers 8

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_portrait_flare"

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v2, :cond_11

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSupportPortraitFlare:Z

    if-eqz v3, :cond_11

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 249
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v2, :cond_1e

    .line 250
    const-string v3, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 253
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v2, :cond_2f

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCustomizedFocalLengthSupport:Z

    if-eqz v3, :cond_2f

    .line 254
    const-string v3, "key_camera_zoom"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2f
    if-nez p2, :cond_3a

    .line 258
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V

    .line 259
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 261
    :cond_3a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p2, :cond_58

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v0, :cond_58

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStereoSupportFlash:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMumonomerSupportFlash:Z

    if-nez v2, :cond_58

    .line 262
    :cond_4a
    const-string v2, "key_flash_facade"

    invoke-virtual {p2, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 263
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_flash"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p2, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 266
    :cond_58
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p2, :cond_8d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v0, :cond_8d

    sget-boolean v2, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->CONFLICT_WITH_MAKEUP:Z

    if-eqz v2, :cond_8d

    .line 267
    const-string v2, "key_mu_slimbody"

    invoke-virtual {p2, v2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 268
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    const-string v3, "key_makeup_feature"

    invoke-virtual {p2, v3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 269
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    const-string v4, "key_mu_face_beauty"

    invoke-virtual {p2, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 270
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mSlimBodyValue:Ljava/lang/String;

    .line 271
    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mMakeupValue:Ljava/lang/String;

    .line 272
    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mFaceBeautyValue:Ljava/lang/String;

    .line 275
    :cond_8d
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 276
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 278
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p2

    .line 279
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "f0.0"

    if-eqz p1, :cond_ad

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    move-object p2, v0

    .line 283
    :cond_ad
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsBlurOn:Z

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->getDurationDataList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->initDurationData(Ljava/util/List;)V

    return-void
.end method

.method public setBlurScrollerRootCallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRootCallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;

    return-void
.end method

.method public setCameraChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mCameraChangeListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V
    .registers 2

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHideBottomPanelListener:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    return-void
.end method

.method public setModeSwitching(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mIsModeSwitching:Z

    return-void
.end method

.method public setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    return-void
.end method

.method public setScreenFormType(I)V
    .registers 2

    .line 850
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScreenFormType:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 4

    .line 240
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mITopUI:Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;

    .line 241
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->destroy()V

    const/4 v0, 0x0

    .line 300
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mUIHandler:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    if-eqz p1, :cond_10

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 304
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->hideHint()V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    if-eqz v0, :cond_63

    .line 306
    const-string v1, "key_portrait_flare"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_flash_facade"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_flash"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_restore_settings_notify_ui"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 311
    sget-boolean p1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->CONFLICT_WITH_MAKEUP:Z

    if-eqz p1, :cond_63

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_mu_slimbody"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_makeup_feature"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_mu_face_beauty"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mStatusChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_63
    return-void
.end method

.method public updateBlurIconImgResource()V
    .registers 6

    .line 1176
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mLowLight:Z

    if-nez v0, :cond_4f

    .line 1177
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1178
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBlurIconImgResource: ratio = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1181
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "1:1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_48

    .line 1184
    :cond_45
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch_light:I

    goto :goto_4a

    .line 1182
    :cond_48
    :goto_48
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch:I

    .line 1186
    :goto_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4f
    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 343
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateUI()V

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 346
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateHintVisible()V
    .registers 3

    .line 1222
    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mWarningType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 1225
    :cond_6
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->showGuide(I)V

    return-void
.end method

.method public updateLayout(II)V
    .registers 10

    .line 1040
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScreenFormType:I

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f6

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2f6

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2f6

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez v1, :cond_14

    goto/16 :goto_2f6

    .line 1044
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1045
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1046
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1047
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_e0

    .line 1048
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1049
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1050
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1051
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1054
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1057
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_ruler_view_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1061
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1062
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x50

    .line 1063
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1064
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_root_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1065
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_root_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1066
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateBlurIconImgResource()V

    .line 1070
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1086
    :cond_e0
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-ne p1, v4, :cond_196

    const/16 v3, 0x33

    .line 1088
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1089
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1090
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_116

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_116

    .line 1099
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_expand_0_margin_left:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_122

    .line 1094
    :cond_116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_expand_90_margin_left:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1102
    :goto_122
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1103
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_width:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_margin_left:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_icon_margin_left:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1106
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_view_expand_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setAdjustLeftMargin(I)V

    .line 1107
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_height_expand:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1110
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2f1

    :cond_196
    const/4 v3, 0x7

    const/16 v6, 0x11

    if-ne v3, p1, :cond_25f

    .line 1115
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1116
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_blur_scroller_root_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0xb4

    if-ne p2, v3, :cond_1bc

    .line 1119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_scroller_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1e3

    :cond_1bc
    if-nez p2, :cond_1cb

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_scroller_margin_top_0_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1e3

    .line 1123
    :cond_1cb
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_scroller_margin_top_90_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_icon_margin_top_90_degree:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1126
    :goto_1e3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_scroller_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_icon_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1132
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_pm_portrait_scroller_ruler_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1137
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2f1

    .line 1140
    :cond_25f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_268

    .line 1141
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_276

    .line 1143
    :cond_268
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1144
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->blur_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1146
    :goto_276
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_scroller_root_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1148
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_level_bar_padding_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1149
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1151
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_blur_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_portrait_scroller_icon_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1155
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerDurationRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurScrollerRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1171
    :goto_2f1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->update(I)V

    :cond_2f6
    :goto_2f6
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 837
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mLowLight:Z

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mBlurIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_b

    .line 840
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch_lowlight:I

    goto :goto_d

    .line 841
    :cond_b
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_pm_portrait_scroller_switch:I

    .line 842
    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 843
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateBlurIconImgResource()V

    .line 846
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    return-void
.end method

.method public updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 670
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUIWhenSettingChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
