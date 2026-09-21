.class public Lcom/transsion/camera/app/ui/ScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/manager/IScreenManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBottomHeight:I

.field private final mColumnTopBarBaseHeight:I

.field private final mCutoutBaseLineHeight:I

.field private mCutoutHeight:I

.field private final mDisplayActivityType:I

.field private mForceScreenFormType:Z

.field private final mFullScreenBaseLineHeightHigher:I

.field private final mFullScreenBaseLineHeightNormal:I

.field private final mHoverBottomHeightReduce:I

.field private final mMiddlePadding:I

.field private final mModePickerMainLayoutHeight:I

.field private final mModePickerScollExtra:I

.field private final mNavigationHeight:I

.field private mOptimizeSlaveSurfaceRatio:F

.field private mPreviewRatio:D

.field private mScreenDefaultFormType:I

.field private mScreenFormType:I

.field private mScreenFormTypeWhenForce:I

.field private mScreenHeight:I

.field private mScreenOriginalHeight:I

.field private mScreenOriginalWidth:I

.field private mScreenRatio:D

.field private mScreenWidth:I

.field private final mShutterButtonHeight:I

.field private mShutterPanelBasePaddingHeight:I

.field private mShutterPanelBasePaddingHeightHover:I

.field private mSlaveSurfaceDisplaySize:Landroid/util/Size;

.field private final mToolBarBaselineHeight:I

.field private final mToolBarBaselinePaddingTopHigher:I

.field private final mToolBarBaselinePaddingTopNormal:I

.field private mToolBarHeight:I

.field private mToolBarOriginPaddingHeight:I

.field private final mTopBarBaselineHeight:I

.field private mTopBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    .line 26
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    .line 27
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mOptimizeSlaveSurfaceRatio:F

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->cutout_baseline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutBaseLineHeight:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_baseline_padding_top_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopNormal:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_baseline_padding_top_higher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopHigher:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_baseline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselineHeight:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_main_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->shutter_button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterButtonHeight:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_scroll_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerScollExtra:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_screen_baseline_height_higher:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_screen_baseline_height_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->column_top_bar_base_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mColumnTopBarBaseHeight:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->column_middle_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mMiddlePadding:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_height_reduce_hover_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->shutter_panel_expect_padding_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeight:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->shutter_panel_expect_padding_height_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeightHover:I

    .line 79
    iput p2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    .line 82
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return-void
.end method

.method private static additionalToolBarHeight(I)I
    .registers 2

    .line 454
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x1e

    return p0

    :cond_9
    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x5

    .line 460
    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private setScreenRatio(II)V
    .registers 7

    int-to-double v0, p1

    int-to-double p1, p2

    .line 450
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr v2, p1

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    return-void
.end method


# virtual methods
.method public exitForceScreenFormType()V
    .registers 2

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mForceScreenFormType:Z

    return-void
.end method

.method public forceScreenFormType(I)V
    .registers 3

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mForceScreenFormType:Z

    .line 88
    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormTypeWhenForce:I

    return-void
.end method

.method public getBottomBarTopPadding()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBottomHeight()I
    .registers 3

    .line 323
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    .line 324
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    goto :goto_2b

    .line 327
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 328
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    :goto_24
    sub-int/2addr v0, p0

    return v0

    .line 330
    :cond_26
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    goto :goto_24

    .line 326
    :cond_2b
    :goto_2b
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0
.end method

.method public getColumnPreviewStartMargin()I
    .registers 2

    .line 407
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getCurrentScreenDefaultForm()I
    .registers 1

    .line 234
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    return p0
.end method

.method public getCutoutHeight()I
    .registers 1

    .line 290
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    return p0
.end method

.method public getDisplayActivityType()I
    .registers 1

    .line 229
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    return p0
.end method

.method public getModePickerMainLayoutHeight()I
    .registers 1

    .line 384
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    return p0
.end method

.method public getModePickerScollExtra()I
    .registers 1

    .line 402
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerScollExtra:I

    return p0
.end method

.method public getModePlusBottomBarHeight()I
    .registers 3

    .line 340
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    goto :goto_26

    .line 344
    :cond_16
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 345
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mHoverBottomHeightReduce:I

    sub-int/2addr v0, p0

    return v0

    .line 347
    :cond_23
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    return p0

    .line 343
    :cond_26
    :goto_26
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0
.end method

.method public getNavigationHeight()I
    .registers 1

    .line 295
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mNavigationHeight:I

    return p0
.end method

.method public getOriginBottomHeight()I
    .registers 2

    .line 357
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mModePickerMainLayoutHeight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getOriginModePlusBottomBarHeight()I
    .registers 1

    .line 362
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    return p0
.end method

.method public getOriginScreenFormType()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    return p0
.end method

.method public getOriginTopBarHeight()I
    .registers 2

    .line 352
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getPopSettingBackUIMarginBottom(I)I
    .registers 2

    .line 270
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method public getPopSettingUIHeight(I)I
    .registers 2

    return p1
.end method

.method public getPopSettingUIMarginBottom(I)I
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method

.method public getPreviewMoveDistance(D)I
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewRatio()D
    .registers 5

    .line 215
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mPreviewRatio:D

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-nez v0, :cond_d

    .line 218
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mPreviewRatio:D

    return-wide v0

    .line 216
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mPreviewRatio is not init"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScreenFormType()I
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mForceScreenFormType:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormTypeWhenForce:I

    return p0

    .line 240
    :cond_7
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    return p0
.end method

.method public getScreenHeight()I
    .registers 1

    .line 275
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    return p0
.end method

.method public getScreenRatio()D
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenRatio:D

    return-wide v0
.end method

.method public getScreenWidth()I
    .registers 1

    .line 280
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    return p0
.end method

.method public getShutterButtonHeight()I
    .registers 1

    .line 389
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterButtonHeight:I

    return p0
.end method

.method public getShutterButtonMarginBottom()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getShutterPanelBasePaddingHeight()I
    .registers 3

    .line 412
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 413
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeightHover:I

    return p0

    .line 415
    :cond_a
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mShutterPanelBasePaddingHeight:I

    return p0
.end method

.method public getSlaveSurfaceDisplaySize()Landroid/util/Size;
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    if-nez v0, :cond_d

    .line 439
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getSlaveSurfaceDisplaySize: mSlaveSurfaceDisplaySize is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_d
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 443
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mOptimizeSlaveSurfaceRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 444
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mOptimizeSlaveSurfaceRatio:F

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getToolBarHeight()I
    .registers 1

    .line 302
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    return p0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 2

    .line 373
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 376
    :cond_8
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    return p0
.end method

.method public getTopBarHeight()I
    .registers 3

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    goto :goto_20

    .line 313
    :cond_1d
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method public getTopBarHeight(D)I
    .registers 3

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result p0

    return p0
.end method

.method public isLongScreen()Z
    .registers 3

    .line 420
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    .line 421
    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    const/16 v1, 0x438

    if-lt p0, v1, :cond_b

    mul-int/lit16 v0, v0, 0x438

    .line 422
    div-int/2addr v0, p0

    :cond_b
    const/16 p0, 0x9f6

    if-lt v0, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public optimizeSlaveSurfaceDisplaySize(F)V
    .registers 5

    .line 428
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optimizeSlaveSurfaceDisplaySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mSlaveSurfaceDisplaySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_27

    return-void

    .line 433
    :cond_27
    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mOptimizeSlaveSurfaceRatio:F

    return-void
.end method

.method public updatePreviewSize(II)V
    .registers 7

    .line 210
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mPreviewRatio:D

    .line 211
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePreviewSize: mPreviewRatio = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mPreviewRatio:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateScreenFormType(I)Z
    .registers 11

    .line 140
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateCurrentScreenType(I)V

    .line 141
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_d

    return v1

    .line 144
    :cond_d
    iput p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    .line 146
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    .line 147
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_20

    .line 149
    div-int/2addr v0, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mMiddlePadding:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    :cond_20
    const/4 v0, 0x6

    .line 151
    const-string v4, ", height:"

    if-eq p1, v0, :cond_144

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2a

    goto/16 :goto_144

    .line 163
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    goto :goto_35

    .line 164
    :cond_33
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    :goto_35
    sub-int/2addr v2, v0

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->additionalToolBarHeight(I)I

    move-result v1

    .line 166
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    add-int/2addr v2, v1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v2

    if-nez v2, :cond_52

    .line 168
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarBaselineHeight:I

    if-gt v2, v5, :cond_52

    .line 169
    iput v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 172
    :cond_52
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutBaseLineHeight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    .line 173
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselineHeight:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    .line 174
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result v5

    if-eqz v5, :cond_6b

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopHigher:I

    goto :goto_6d

    .line 175
    :cond_6b
    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarBaselinePaddingTopNormal:I

    :goto_6d
    sub-int/2addr v2, v5

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    if-ne p1, v3, :cond_76

    .line 177
    iget v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mColumnTopBarBaseHeight:I

    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    .line 179
    :cond_76
    sget-object v2, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScreenFormType, mCutoutHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,mToolBarHeight: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mToolBarOriginPaddingHeight: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,toolBarOriginPaddingHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " addFullHeight:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,isLongScreen:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->isLongScreen()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mFullScreenBaseLineHeightHigher:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightHigher:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mFullScreenBaseLineHeightNormal:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mFullScreenBaseLineHeightNormal:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    mul-int/lit8 v3, v1, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    .line 185
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    if-nez v0, :cond_107

    .line 186
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 187
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 188
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    .line 189
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setMainScreenSize(II)V

    goto :goto_13c

    :cond_107
    int-to-double v5, v1

    .line 192
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int p1, v5

    .line 193
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    if-le p1, v0, :cond_11a

    int-to-double v5, v0

    .line 195
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v1, v5

    move p1, v0

    .line 197
    :cond_11a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreenFormType, slave surface display width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mSlaveSurfaceDisplaySize:Landroid/util/Size;

    .line 200
    :goto_13c
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ScreenManager;->setScreenRatio(II)V

    goto :goto_161

    .line 153
    :cond_144
    :goto_144
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mCutoutHeight:I

    .line 154
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarHeight:I

    .line 155
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mTopBarHeight:I

    .line 156
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mBottomHeight:I

    .line 157
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mToolBarOriginPaddingHeight:I

    .line 158
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 159
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 160
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    .line 203
    :goto_161
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenFormType, new cur screen width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", form type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenFormType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateScreenFormType(Landroid/content/Context;IZ)Z
    .registers 13

    .line 99
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 101
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v1

    .line 103
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-lez p2, :cond_1c

    goto :goto_1d

    :cond_1c
    move p2, v3

    .line 108
    :goto_1d
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    const/16 v3, 0x258

    if-le p2, v3, :cond_2a

    const/4 p2, 0x1

    goto :goto_2b

    :cond_2a
    move p2, v4

    .line 112
    :goto_2b
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->screenFlip(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    if-nez p1, :cond_36

    const/4 p2, 0x7

    .line 115
    :cond_36
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mDisplayActivityType:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3c

    const/4 p2, 0x6

    .line 119
    :cond_3c
    iput p2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    .line 121
    iget p1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    const-string v3, ", default form:"

    const-string v5, ", density:"

    const-string v6, ", height:"

    const/4 v7, -0x1

    if-eq p1, v7, :cond_82

    iget v8, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    if-eq v8, v7, :cond_82

    if-ne p1, v1, :cond_82

    if-ne v8, v2, :cond_82

    if-eqz p3, :cond_54

    goto :goto_82

    .line 132
    :cond_54
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateScreenFormType, original screen unchanged, width:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v4

    .line 124
    :cond_82
    :goto_82
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    .line 125
    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    .line 126
    iput v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    .line 127
    iput v2, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    .line 128
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateScreenFormType, new original screen width:"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenDefaultFormType:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p0

    return p0
.end method

.method public updateScreenSize()V
    .registers 3

    .line 222
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenSize(II)V

    .line 223
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalWidth:I

    iget v1, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenOriginalHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenRatio(II)V

    .line 224
    iget v0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/ScreenManager;->mScreenHeight:I

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ScreenUtils;->setRealScreenSize(II)V

    return-void
.end method
