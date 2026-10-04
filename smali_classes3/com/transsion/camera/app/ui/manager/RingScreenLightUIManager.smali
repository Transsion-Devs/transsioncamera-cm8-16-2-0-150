.class public Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

.field private mBottomCoverView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIsFrontCamera:Z

.field private mMarginBottom:I

.field private mMarginTop:I

.field private mOldValue:Z

.field private mPreHeight:I

.field private mPreWidth:I

.field private mPreviewAspectRatio:D

.field private mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

.field private mPreviewUIRootView:Landroid/view/View;

.field private mScreenFlashEnter:Z

.field private mScreenSupplyColor:I

.field private mTargetHeight:I

.field private mViewRoot:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$CZNMi2TEr3aDWA0UuqHFsTrP67Q(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOldValue(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSize(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RingScreenLightUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    .line 49
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginTop:I

    .line 50
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginBottom:I

    .line 51
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    .line 54
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    .line 78
    new-instance v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewUIRootView:Landroid/view/View;

    .line 90
    iput-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 91
    new-instance p2, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$UiHandler;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenSupplyColor:I

    return-void
.end method

.method private doSetPreviewSize(II)V
    .registers 7

    .line 267
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 269
    iget-wide p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 270
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    .line 271
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateScreenFlashUILayout()V

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->setDisplaySquareAlpha()V

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateBottomCoverView()V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_3e

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updatePreviewRatio(D)V

    :cond_3e
    return-void
.end method

.method private processScreenFlashEnterOut(Z)V
    .registers 5

    .line 188
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processScreenFlashEnterOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-nez v1, :cond_20

    .line 190
    const-string p0, "mPreviewScreenSupplyView is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_20
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenFlashEnter:Z

    if-eq v0, p1, :cond_33

    .line 194
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenFlashEnter:Z

    if-eqz p1, :cond_2e

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {v1, v1, p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->fadeIn(Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 199
    :cond_2e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {v1, v1, p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->fadeOut(Landroid/view/View;Landroid/view/View;)V

    :cond_33
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->processScreenFlashEnterOut(Z)V

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateBottomCoverView()V

    return-void
.end method

.method private updateBottomCoverView()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mBottomCoverView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 221
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mBottomCoverView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    if-eqz v1, :cond_1a

    .line 225
    iget p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mScreenSupplyColor:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_1a
    const/high16 p0, -0x1000000

    .line 227
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateScreenFlashUILayout()V
    .registers 10

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewUIRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 283
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    .line 285
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewAspectRatio:D

    mul-double v6, v0, v3

    double-to-int v2, v6

    iput v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    .line 287
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v6

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 288
    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    .line 287
    invoke-static/range {v3 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginTop:I

    .line 289
    iget v3, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mTargetHeight:I

    sub-int v3, v5, v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mMarginBottom:I

    .line 290
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v2

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v3

    double-to-int v0, v0

    sub-int/2addr v5, v0

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 291
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 290
    invoke-direct {p0, v2, v5}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateTranslucentRectLayout(II)V

    return-void
.end method

.method private updateSize()V
    .registers 3

    .line 262
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->doSetPreviewSize(II)V

    return-void
.end method

.method private updateTopPaddingView()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-nez v0, :cond_c

    .line 206
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mTopPaddingView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 211
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 214
    :cond_1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTranslucentRectLayout(II)V
    .registers 6

    .line 295
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewLayout topOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bottomOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz v0, :cond_26

    .line 297
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateOffset(II)V

    .line 300
    :cond_26
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p2

    .line 301
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz v0, :cond_50

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 305
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getOriginTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    .line 306
    invoke-virtual {v0, p1, p1, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_50
    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 163
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_a

    .line 165
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_a
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->ring_screen_light_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->screen_flash_ui_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    .line 101
    sget v0, Lcom/transsion/camera/R$id;->preview_screen_supply_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p1, :cond_2f

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onScreenFormChanged(IZ)V

    .line 106
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->ring_screen_light_aperture_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->aperture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/aperture/ApertureView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz p1, :cond_53

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;->onScreenFormChanged(I)V

    .line 114
    :cond_53
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->preview_bottom_cover_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mBottomCoverView:Landroid/view/View;

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateSize()V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->updateTopPaddingView()V

    .line 118
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 119
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_a

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onOrientationChanged(IZ)V

    :cond_a
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 171
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-eqz p0, :cond_a

    .line 173
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    :cond_a
    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    return-void
.end method

.method public setDisplaySquareAlpha()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreviewScreenSupplyView:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    if-nez v0, :cond_c

    .line 233
    sget-object p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mPreviewScreenSupplyView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mOldValue:Z

    if-eqz v1, :cond_1a

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    if-nez p0, :cond_15

    goto :goto_1a

    :cond_15
    const/4 p0, 0x0

    .line 240
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1a
    :goto_1a
    const/4 p0, 0x4

    .line 237
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 135
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 6

    .line 247
    sget-object v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mViewRoot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreWidth:I

    .line 249
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mPreHeight:I

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mViewRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_31

    return-void

    .line 253
    :cond_31
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setCurrentW(I)V

    .line 254
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->setCurrentH(I)V

    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 257
    iput p2, p1, Landroid/os/Message;->what:I

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 178
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->mIsFrontCamera:Z

    return-void
.end method
