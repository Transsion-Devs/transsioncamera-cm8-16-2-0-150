.class public Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePanelPaddingHeight(Lcom/transsion/camera/app/common/IAppUI;I)I
    .registers 3

    .line 22
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_d

    .line 23
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result p0

    return p0

    .line 25
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 26
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static calculatePanelPaddingHeight(Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;I)I
    .registers 3

    .line 41
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getShutterPanelPaddingHeight()I

    move-result v0

    .line 42
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getShutterButtonHeight()I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I
    .registers 4

    .line 13
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_e

    .line 14
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p0

    add-int/2addr p0, p2

    return p0

    .line 16
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getNavigationHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 17
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->calculatePanelPaddingHeight(Lcom/transsion/camera/app/common/IAppUI;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;II)I
    .registers 4

    .line 32
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_e

    .line 33
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getBottomBarHeight()I

    move-result p0

    add-int/2addr p0, p2

    return p0

    .line 35
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getNavigationBarHeight()I

    move-result v0

    add-int/2addr v0, p2

    .line 36
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->calculatePanelPaddingHeight(Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
