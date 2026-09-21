.class public Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DARKEN_EXPOSURE_DELAY:J = 0x7d0L

.field private static final FLIP_DIMEN_COEFFICIENT:F = 1.3333334f

.field private static final FLIP_SCALE_COEFFICIENT:F = 0.9f

.field private static final FLIP_SCREEN_DENSITY:F = 2.25f

.field private static final LOCK_DARKEN_EXPOSURE_DELAY:J = 0xbb8L

.field private static final MSG_HIDE_EXPOSURE_UI:I = 0x64

.field private static final MSG_HIDE_EXPOSURE_UI_IMMEDIATE:I = 0x66

.field private static final MSG_SHOW_EXPOSURE_UI:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAERestrictRect:Landroid/graphics/Rect;

.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private final mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDisableUI:Z

.field private mEnable:Z

.field private final mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

.field private mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

.field private final mHalfSize:F

.field private mHasDarken:Z

.field private mHideExposureDelayTime:J

.field mHideView:Z

.field private final mHotSpotRect:Landroid/graphics/Rect;

.field private mIndicatorView:Landroid/view/View;

.field private mIsContinuousShooting:Z

.field private mIsEvChanging:Z

.field private mIsPopSettingShow:Z

.field private mIsSupported:Z

.field private mIsVideoRecording:Z

.field private mLineView:Lcom/transsion/camera/ui/setting/exposure/LineView;

.field private mLockIndicatorView:Landroid/view/View;

.field private mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mOrientation:I

.field private mOriginPreviewRect:Landroid/graphics/Rect;

.field private mPopSettingSupport:Z

.field private mPreviewRoot:Landroid/view/View;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mRationalSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mScrollTriggered:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStoreAERestrictRect:Landroid/graphics/Rect;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

.field private sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;


# direct methods
.method public static synthetic $r8$lambda$IkOdGT6MrkgUIm3phrIaqlgtX1s(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updatePreviewRootRect()V

    return-void
.end method

.method public static synthetic $r8$lambda$ol84GG3ZbCzmKcTuruQHy8TwOgI(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->lambda$notifyCameraOperateAction$0(Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sLtFhS4HV6VKDYHD7BiQNOgRJvI(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->lambda$notifyCameraOperateAction$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHideExposureDelayTime(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEvChanging(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockState(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollTriggered(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsOperationControl(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisableUI(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasDarken(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLockState(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScrollTriggered(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStoreAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$maeAfLocked(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mconvertStringToRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLockHintMsg(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showExposureView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLockExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLockedHint(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDarkenAnimate(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRationalList(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRationalList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smpicTraceMode(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->picTraceMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 108
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 113
    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    .line 126
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mResources:Landroid/content/res/Resources;

    .line 143
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    .line 144
    sget v0, Lcom/transsion/camera/R$dimen;->focus_ev_indicator_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    .line 145
    new-instance p1, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    return-void
.end method

.method private aeAfLocked()Z
    .registers 2

    .line 1186
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

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
    .registers 5

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1214
    :cond_6
    const-string v2, "key_focus"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1215
    const-string v3, "auto"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1216
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method private convertStringToRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 8

    const/4 p0, 0x4

    .line 1068
    new-array p0, p0, [Ljava/lang/String;

    .line 1070
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

    .line 1071
    aput-object v5, p0, v3

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1074
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

    .line 1075
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private static findNearestRational(Ljava/util/List;F)Landroid/util/Rational;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Rational;",
            ">;F)",
            "Landroid/util/Rational;"
        }
    .end annotation

    .line 1266
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    .line 1267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    .line 1268
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_9

    .line 1270
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v1, v0

    move-object v0, v2

    goto :goto_9

    :cond_2e
    return-object v0
.end method

.method private getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;
    .registers 3

    .line 660
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$1;->$SwitchMap$com$transsion$camera$app$common$mode$IAeAfLock$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    const/4 p1, 0x0

    goto :goto_1e

    .line 669
    :cond_16
    sget p1, Lcom/transsion/camera/R$string;->ae_af_locked_hint:I

    goto :goto_1e

    .line 665
    :cond_19
    sget p1, Lcom/transsion/camera/R$string;->af_locked_hint:I

    goto :goto_1e

    .line 662
    :cond_1c
    sget p1, Lcom/transsion/camera/R$string;->ae_locked_hint:I

    :goto_1e
    if-gtz p1, :cond_22

    const/4 p0, 0x0

    return-object p0

    .line 675
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasBeenLocked()Z
    .registers 3

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 454
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 455
    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method private hideExposureView()V
    .registers 5

    .line 1191
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1192
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 1193
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1194
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2c

    .line 1197
    const-string v2, "key_exposure_view"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    .line 1198
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1200
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onTrackingTouch(ZZ)V

    return-void
.end method

.method private hideExposureView(FF)V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-nez v0, :cond_5

    return-void

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    float-to-int p1, p1

    int-to-float p1, p1

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setFocusLocation(FF)V

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->resetExposureView()V

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    return-void
.end method

.method private isExceedCurvedScreenArea(FF)Z
    .registers 7

    .line 1243
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEdgeDistance:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    .line 1247
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 1248
    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    .line 1249
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1250
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

.method private isExceedTouchArea(FF)Z
    .registers 4

    .line 1238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_21

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_21

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method private isReachPreviewBoundary(FF)Z
    .registers 4

    .line 1220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_21

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_21

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method private isScreenPortrait()Z
    .registers 2

    .line 853
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_d

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$notifyCameraOperateAction$0(Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;)V
    .registers 2

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->clearAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$notifyCameraOperateAction$1()V
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_41

    .line 585
    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-ne v1, v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 587
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 588
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 589
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "return because support only AE lock."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 592
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_41

    .line 593
    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne v1, v0, :cond_41

    .line 594
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private needUpdateExposureView()Z
    .registers 2

    .line 1204
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_18

    .line 1206
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 1207
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static picTraceMode(Ljava/lang/String;)Z
    .registers 2

    .line 1255
    const-string v0, "traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "flowingwater"

    .line 1256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "lightpainting"

    .line 1257
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_9

    .line 923
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_9
    return-void
.end method

.method private setShowArea()V
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_41

    .line 824
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v0, :cond_15

    .line 825
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setShowArea return, mAppUIRect is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 829
    :cond_15
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    .line 831
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 832
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 833
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 834
    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    .line 835
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setShowArea(IIII)V

    :cond_41
    :goto_41
    return-void
.end method

.method private shouldShowSeekBar()Z
    .registers 2

    .line 1181
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eq v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private showExposureView()V
    .registers 12

    .line 717
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showExposureView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    if-nez v1, :cond_197

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->autoFocusSupport()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_197

    .line 723
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-nez v1, :cond_1d

    .line 724
    const-string p0, "showExposureView mExposureView == null!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 728
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 729
    const-string p0, "showExposureView mDeviceSetting.getSupport() isEmpty!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 733
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_touch_capture"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 734
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_49

    if-nez v1, :cond_49

    move v3, v5

    goto :goto_4a

    :cond_49
    move v3, v4

    :goto_4a
    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showExposureView mIsSupported = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTouchCapture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewX()I

    move-result v1

    int-to-float v1, v1

    .line 742
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewY()I

    move-result v2

    int-to-float v2, v2

    .line 744
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 745
    const-string p0, "showExposureView point is out of preview rect!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 749
    :cond_85
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v3, :cond_8f

    .line 750
    const-string p0, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 754
    :cond_8f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9b

    .line 756
    const-string p0, "entryView is null,return."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 761
    :cond_9b
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_e1

    const/4 v6, 0x7

    .line 762
    iget v8, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v6, v8, :cond_d0

    .line 763
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x40100000    # 2.25f

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_cc

    const v7, 0x3f99999a    # 1.2f

    goto :goto_e1

    :cond_cc
    const v7, 0x3f666666    # 0.9f

    goto :goto_e1

    .line 769
    :cond_d0
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 770
    iget-object v8, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    int-to-float v6, v6

    div-float v7, v8, v6

    .line 775
    :cond_e1
    :goto_e1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 776
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v6

    .line 777
    iget-object v8, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v8

    int-to-float v9, v6

    cmpg-float v9, v2, v9

    if-lez v9, :cond_16a

    sub-int v9, v3, v8

    int-to-float v10, v9

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_fe

    goto :goto_16a

    .line 783
    :cond_fe
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v8, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float v10, v8, v7

    add-float/2addr v3, v10

    .line 784
    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v8, v7

    sub-float/2addr v10, v8

    .line 785
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    .line 786
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v8, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    cmpg-float v7, v1, v3

    if-gez v7, :cond_12a

    move v1, v3

    :cond_12a
    cmpl-float v3, v1, v10

    if-lez v3, :cond_12f

    goto :goto_130

    :cond_12f
    move v10, v1

    :goto_130
    cmpl-float v1, v2, v6

    if-lez v1, :cond_135

    move v2, v6

    :cond_135
    cmpg-float v1, v2, v0

    if-gez v1, :cond_13a

    goto :goto_13b

    :cond_13a
    move v0, v2

    :goto_13b
    float-to-int v1, v10

    .line 803
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    float-to-int v0, v0

    .line 804
    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 805
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setShowArea()V

    .line 806
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showFocusViewAt(II)V

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_view"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateIndicatorVisibility(Z)V

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startShowAnimate(Landroid/view/View;)V

    const-wide/16 v0, 0x7d0

    .line 811
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    return-void

    .line 779
    :cond_16a
    :goto_16a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showExposureView y = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", edgeTop = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", absoluteH = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", edgeBottom = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 719
    :cond_197
    :goto_197
    const-string p0, "showExposureView mHideView is true!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showFocusViewAt(II)V
    .registers 6

    .line 841
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFocusViewAt() called with: x = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], y = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateReadCenterCoordinate(II)V

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 844
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 845
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 846
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLockExposureView(Z)V
    .registers 12

    .line 1079
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLockExposureView withAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasDarken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1081
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    if-eqz v1, :cond_2a

    .line 1082
    const-string p0, "showLockExposureView mHideView is true!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1086
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-nez v1, :cond_34

    .line 1087
    const-string p0, "showLockExposureView mExposureView == null!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1091
    :cond_34
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1092
    const-string p0, "showLockExposureView mDeviceSetting.getSupport() isEmpty!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1096
    :cond_46
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewX()I

    move-result v1

    int-to-float v1, v1

    .line 1097
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->getFocusViewY()I

    move-result v2

    int-to-float v2, v2

    .line 1099
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1100
    const-string p0, "showLockExposureView point is out of preview rect!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_60
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v3, :cond_6a

    .line 1105
    const-string p0, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1109
    :cond_6a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_76

    .line 1111
    const-string p0, "entryView is null,return."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1116
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_bc

    const/4 v0, 0x7

    .line 1117
    iget v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v5, :cond_ab

    .line 1118
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40100000    # 2.25f

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_a7

    const v4, 0x3f99999a    # 1.2f

    goto :goto_bc

    :cond_a7
    const v4, 0x3f666666    # 0.9f

    goto :goto_bc

    .line 1124
    :cond_ab
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1125
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v0, v0

    div-float v4, v5, v0

    .line 1129
    :cond_bc
    :goto_bc
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1130
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 1131
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    .line 1133
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float v9, v8, v4

    add-float/2addr v7, v9

    .line 1134
    iget v9, v6, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v8, v4

    sub-float/2addr v9, v8

    .line 1135
    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    sub-int/2addr v0, v5

    .line 1136
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHalfSize:F

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    cmpg-float v4, v1, v7

    if-gez v4, :cond_f9

    move v1, v7

    :cond_f9
    cmpl-float v4, v1, v9

    if-lez v4, :cond_fe

    goto :goto_ff

    :cond_fe
    move v9, v1

    :goto_ff
    cmpl-float v1, v2, v0

    if-lez v1, :cond_104

    move v2, v0

    :cond_104
    cmpg-float v0, v2, v3

    if-gez v0, :cond_109

    goto :goto_10a

    :cond_109
    move v3, v2

    :goto_10a
    float-to-int v0, v9

    .line 1154
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    float-to-int v2, v3

    .line 1155
    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 1156
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setShowArea()V

    .line 1157
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showFocusViewAt(II)V

    .line 1158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_exposure_view"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1160
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateIndicatorVisibility(Z)V

    const-wide/16 v0, 0xbb8

    if-eqz p1, :cond_148

    .line 1162
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 1163
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->shouldShowSeekBar()Z

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startShowLockAnimate(Landroid/view/View;Z)V

    .line 1164
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    .line 1165
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    return-void

    .line 1167
    :cond_148
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->shouldShowSeekBar()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateSeekBarVisibility(Z)V

    .line 1168
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    if-nez p1, :cond_15a

    .line 1169
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    .line 1170
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    :cond_15a
    return-void
.end method

.method private showLockedHint(Ljava/lang/String;)V
    .registers 5

    .line 648
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLockedHint msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 652
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock(Z)V

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 655
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private startDarkenAnimate(J)V
    .registers 5

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->startDarkenAnimate(Landroid/view/View;J)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_9

    .line 929
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_9
    return-void
.end method

.method private updateEnableState(I)V
    .registers 5

    .line 202
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_10

    .line 205
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    .line 204
    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_10
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_18

    .line 209
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    return-void

    :cond_18
    if-ne v0, v2, :cond_1f

    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    return-void

    :cond_1f
    if-nez v0, :cond_24

    .line 214
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    :cond_24
    return-void
.end method

.method private updateIndicatorVisibility(Z)V
    .registers 6

    .line 1176
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIndicatorView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockIndicatorView:Landroid/view/View;

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePreviewRootRect()V
    .registers 5

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_8e

    .line 254
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 258
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const/4 v0, 0x7

    .line 261
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_72

    .line 262
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

    if-gez v0, :cond_64

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 266
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 270
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method private updateRationalList(Z)V
    .registers 5

    .line 1048
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRationalList isNeedUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_1b

    goto :goto_4f

    .line 1052
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_50

    if-eqz v0, :cond_50

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_50

    .line 1055
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1057
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1059
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    const/4 p1, 0x0

    .line 1063
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsSupported:Z

    return-void
.end method

.method private updateReadCenterCoordinate(II)V
    .registers 8

    .line 1225
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1226
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1227
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    sub-int v3, p1, v0

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1228
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    sub-int v3, p2, v1

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1229
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 1230
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1231
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isExposureTouchLineSupport()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 1232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLineView:Lcom/transsion/camera/ui/setting/exposure/LineView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLineView:Lcom/transsion/camera/ui/setting/exposure/LineView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHotSpotRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/ui/setting/exposure/LineView;->setRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_5f
    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 221
    sget v0, Lcom/transsion/camera/R$layout;->exposure_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$integer;->hide_exposure_ui_delay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    .line 223
    sget p2, Lcom/transsion/camera/R$id;->exposure_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 224
    sget p2, Lcom/transsion/camera/R$id;->exposure_preview_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    .line 225
    sget p2, Lcom/transsion/camera/R$id;->ev_indicator_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIndicatorView:Landroid/view/View;

    .line 226
    sget p2, Lcom/transsion/camera/R$id;->ev_lock_indicator_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockIndicatorView:Landroid/view/View;

    .line 227
    sget p2, Lcom/transsion/camera/R$id;->hotSpot_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/exposure/LineView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLineView:Lcom/transsion/camera/ui/setting/exposure/LineView;

    .line 228
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;)V

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPopSettingSupport:Z

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

    .line 306
    const-string p0, "key_exposure"

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 1261
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    return p0
.end method

.method public getPreviewRoot()Landroid/view/View;
    .registers 1

    .line 1282
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewRoot:Landroid/view/View;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideLockedHint()V
    .registers 3

    .line 679
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideLockedHint"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock(Z)V

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLockHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
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
    .registers 7

    .line 460
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateEnableState(I)V

    .line 461
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    :cond_13
    if-eqz p1, :cond_1a4

    const/4 v0, 0x0

    if-eq p1, v1, :cond_1a1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1a4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1a1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1a4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1a1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1a4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1a1

    const/16 v2, 0x28

    if-eq p1, v2, :cond_198

    const/16 v2, 0x29

    if-eq p1, v2, :cond_17b

    const/16 v2, 0x3a

    if-eq p1, v2, :cond_175

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_16f

    const/16 v2, 0x85

    if-eq p1, v2, :cond_17b

    const/16 v2, 0x86

    if-eq p1, v2, :cond_17b

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_16c

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_169

    const/16 v2, 0xd2

    if-eq p1, v2, :cond_198

    const/16 v2, 0xd3

    if-eq p1, v2, :cond_147

    const/16 v2, 0xe9

    if-eq p1, v2, :cond_198

    const/16 v2, 0xea

    if-eq p1, v2, :cond_17b

    sparse-switch p1, :sswitch_data_1d6

    packed-switch p1, :pswitch_data_224

    packed-switch p1, :pswitch_data_230

    packed-switch p1, :pswitch_data_23c

    goto/16 :goto_1b0

    .line 606
    :pswitch_68
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    goto/16 :goto_1b0

    .line 612
    :pswitch_6d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1b0

    .line 609
    :pswitch_71
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1b0

    .line 511
    :pswitch_75
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsContinuousShooting:Z

    .line 512
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hasBeenLocked()Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 514
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_1b0

    .line 516
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 517
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto/16 :goto_1b0

    .line 493
    :pswitch_95
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsContinuousShooting:Z

    .line 494
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 496
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto/16 :goto_1b0

    .line 636
    :pswitch_a1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsVideoRecording:Z

    goto/16 :goto_1b0

    .line 633
    :pswitch_a5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsVideoRecording:Z

    goto/16 :goto_1b0

    .line 615
    :pswitch_a9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto/16 :goto_1b0

    .line 639
    :sswitch_ae
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 640
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 641
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto/16 :goto_1b0

    .line 478
    :sswitch_ba
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1a1

    .line 467
    :sswitch_be
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    goto/16 :goto_1a4

    .line 574
    :pswitch_c2
    :sswitch_c2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_1b0

    .line 575
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-eqz v0, :cond_1b0

    .line 577
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto/16 :goto_1b0

    .line 618
    :sswitch_d7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 619
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto/16 :goto_1b0

    .line 553
    :sswitch_e6
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsVideoRecording:Z

    .line 554
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 555
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsContinuousShooting:Z

    .line 556
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    .line 557
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 558
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1b0

    .line 582
    :sswitch_105
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11b

    const/16 v0, 0x32

    .line 583
    :cond_11b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    new-instance v2, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1b0

    .line 601
    :pswitch_128
    :sswitch_128
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 602
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 603
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto/16 :goto_1b0

    .line 624
    :pswitch_134
    :sswitch_134
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto/16 :goto_1b0

    .line 487
    :sswitch_139
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_1b0

    .line 489
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    goto/16 :goto_1b0

    .line 540
    :cond_147
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 541
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsContinuousShooting:Z

    if-eqz v1, :cond_14e

    return-void

    .line 544
    :cond_14e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hasBeenLocked()Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 545
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_1b0

    .line 547
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 548
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto :goto_1b0

    .line 630
    :cond_169
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsPopSettingShow:Z

    goto :goto_1b0

    .line 627
    :cond_16c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsPopSettingShow:Z

    goto :goto_1b0

    .line 569
    :cond_16f
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 570
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1b0

    .line 565
    :cond_175
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 566
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->setEnable(Z)V

    goto :goto_1b0

    .line 530
    :cond_17b
    :pswitch_17b
    :sswitch_17b
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hasBeenLocked()Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 532
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockExposureView(Z)V

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_1b0

    .line 534
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 535
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->getLockHintMsg(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showLockedHint(Ljava/lang/String;)V

    goto :goto_1b0

    .line 506
    :cond_198
    :pswitch_198
    :sswitch_198
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 507
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 508
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    goto :goto_1b0

    .line 483
    :cond_1a1
    :goto_1a1
    :sswitch_1a1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    goto :goto_1b0

    .line 472
    :cond_1a4
    :goto_1a4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 474
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 475
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 644
    :cond_1b0
    :goto_1b0
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mHideView = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideView:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_1d6
    .sparse-switch
        0x7 -> :sswitch_1a1
        0x9 -> :sswitch_139
        0xb -> :sswitch_134
        0x13 -> :sswitch_128
        0x18 -> :sswitch_105
        0x1c -> :sswitch_e6
        0x9c -> :sswitch_d7
        0xee -> :sswitch_c2
        0x101 -> :sswitch_198
        0x102 -> :sswitch_17b
        0x111 -> :sswitch_198
        0x112 -> :sswitch_17b
        0x119 -> :sswitch_be
        0x11a -> :sswitch_ba
        0x137 -> :sswitch_ae
        0x16b -> :sswitch_198
        0x16c -> :sswitch_17b
        0x18b -> :sswitch_198
        0x18c -> :sswitch_17b
    .end sparse-switch

    :pswitch_data_224
    .packed-switch 0xd
        :pswitch_a9
        :pswitch_134
        :pswitch_a5
        :pswitch_a1
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x22
        :pswitch_198
        :pswitch_17b
        :pswitch_95
        :pswitch_75
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x6e
        :pswitch_c2
        :pswitch_128
        :pswitch_71
        :pswitch_6d
        :pswitch_68
    .end packed-switch
.end method

.method public onExposureViewChanged(F)V
    .registers 6

    .line 886
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4a

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mRationalSupport:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->findNearestRational(Ljava/util/List;F)Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 889
    sget-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExposureViewChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 890
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 892
    :cond_34
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExposureViewChanged ignore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 5

    .line 424
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 428
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 429
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onLongPress point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 433
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isExceedCurvedScreenArea(FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 434
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "LongPress point is out of Curved Screen Area!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 438
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-nez v0, :cond_27

    return v1

    .line 441
    :cond_27
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-nez v0, :cond_34

    return v1

    .line 445
    :cond_34
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHasDarken:Z

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView(FF)V

    return v1
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 861
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 862
    rem-int/lit16 p1, p1, 0x168

    .line 863
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    if-ne v0, p1, :cond_a

    goto :goto_14

    .line 866
    :cond_a
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOrientation:I

    .line 867
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    .line 868
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setOrientation(IZ)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 874
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 877
    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 878
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 879
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_17

    .line 880
    sget-object p1, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_52

    .line 687
    sget-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll, dx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " , dy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,e1=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 690
    const-string p0, "onScroll point is out of preview rect!"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 695
    :cond_52
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isExceedTouchArea(FF)Z

    move-result p1

    if-eqz p1, :cond_71

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsVideoRecording:Z

    if-nez p1, :cond_71

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPopSettingSupport:Z

    if-nez p1, :cond_a8

    :cond_71
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsPopSettingShow:Z

    if-eqz p1, :cond_76

    goto :goto_a8

    .line 700
    :cond_76
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isScreenPortrait()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_96

    .line 701
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_a8

    .line 702
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p3, 0xd9

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p4}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v1

    .line 707
    :cond_96
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p1, p1, p4

    if-gez p1, :cond_a8

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v1

    :cond_a8
    :goto_a8
    return v0
.end method

.method public onSingleTapUp(FF)Z
    .registers 5

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 390
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 394
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->isExceedCurvedScreenArea(FF)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 395
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSingleTapUp point is out of Curved Screen Area! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 399
    :cond_2c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDisableUI:Z

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mEnable:Z

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_49

    .line 403
    :cond_3b
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView(FF)V

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 407
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->showExposureView()V

    return v1

    .line 400
    :cond_49
    :goto_49
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, disableUI"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onTrackingTouchStatusChanged(Z)V
    .registers 6

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5f

    .line 900
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackingTouchStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 901
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureAnimator:Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-interface {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mIsEvChanging:Z

    if-nez v0, :cond_4d

    .line 906
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->aeAfLocked()Z

    move-result v0

    if-eqz v0, :cond_41

    const-wide/16 v0, 0xbb8

    .line 907
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    goto :goto_4d

    :cond_41
    const-wide/16 v2, 0x7d0

    .line 909
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->startDarkenAnimate(J)V

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mHideExposureDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4d
    :goto_4d
    if-eqz p1, :cond_5f

    const/4 p1, 0x1

    .line 914
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mScrollTriggered:Z

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "scroll_start"

    .line 916
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->needUpdateExposureView()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 382
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xda

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onTrackingTouch(ZZ)V

    return v0
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

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 197
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->sOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 342
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 344
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 348
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 349
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v1, "key_exposure_private"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 351
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 350
    const-string v3, "key_enter_long_exposure_mode"

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "key_long_exposure_scene"

    if-eqz v0, :cond_52

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->picTraceMode(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRationalList(Z)V

    goto :goto_5f

    :cond_52
    if-eqz p1, :cond_5c

    .line 355
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :cond_5c
    :goto_5c
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRationalList(Z)V

    .line 358
    :goto_5f
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 359
    const-string p1, "key_ae_af_lock_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 360
    const-string p1, "key_face_view_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 361
    const-string p1, "key_eye_view_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 362
    const-string p1, "key_human_view_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 363
    const-string p1, "key_animal_eye_view_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 364
    const-string p1, "key_video_frame"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 365
    const-string p1, "key_restrict_area"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 367
    const-string p1, "key_fold_switch_preview"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 368
    const-string p1, "focus_ui_active"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 369
    const-string p1, "key_camera_zoom"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->setEnabled(Z)V

    .line 300
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mEnable:Z

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

    .line 374
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 236
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    if-eqz v0, :cond_42

    const/4 v1, 0x4

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_42

    .line 240
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Rational;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 243
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->intValue()I

    move-result v0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mExposureView:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->initExposureView(II)V

    :cond_42
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 320
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideExposureView()V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_50

    .line 325
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 326
    const-string v0, "key_ae_af_lock_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 327
    const-string v0, "key_face_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 328
    const-string v0, "key_eye_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 329
    const-string v0, "key_human_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 330
    const-string v0, "key_animal_eye_view_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 331
    const-string v0, "key_video_frame"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 332
    const-string v0, "key_restrict_area"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 333
    const-string v0, "key_long_exposure_scene"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 334
    const-string v0, "key_fold_switch_preview"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 335
    const-string v0, "focus_ui_active"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 336
    const-string v0, "key_camera_zoom"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mOriginPreviewRect:Landroid/graphics/Rect;

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mAERestrictRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mStoreAERestrictRect:Landroid/graphics/Rect;

    .line 284
    :cond_10
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewRect() called with: previewRect = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updatePreviewRootRect()V

    return-void
.end method

.method public updateRestrictRect(Landroid/graphics/Rect;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
