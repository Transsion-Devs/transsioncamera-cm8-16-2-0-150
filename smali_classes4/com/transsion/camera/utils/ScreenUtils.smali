.class public abstract Lcom/transsion/camera/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCurScreenSize:Landroid/util/Size;

.field private static sMainScreenSize:Landroid/util/Size;

.field private static sRealDensity:I

.field private static sRealScreenSize:Landroid/util/Size;

.field private static sScreenRatio:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide/16 v0, 0x0

    .line 42
    sput-wide v0, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    .line 44
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    .line 45
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    return-void
.end method

.method public static getCurrentRealScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .registers 3

    .line 74
    new-instance v0, Landroid/util/Size;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getCurrentWindowSize(Landroid/content/Context;)Landroid/util/Size;
    .registers 5

    .line 229
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 230
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 234
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 236
    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v2

    .line 237
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v0

    .line 240
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 241
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-direct {v0, v3, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getCutoutHeight(Landroid/content/Context;)I
    .registers 4

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const-string v1, "bool"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "is_notch_support"

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 136
    const-string p0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static getMainScreenSize()Landroid/util/Size;
    .registers 1

    .line 82
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public static getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    .line 201
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 203
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 5

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 107
    const-string v0, "special_navigation_bar_height"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    .line 108
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 110
    :cond_11
    const-string v0, "dimen"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getRealDisplayDensityDpi()I

    move-result v0

    .line 113
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz v0, :cond_31

    .line 114
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, p0, :cond_31

    mul-int/2addr p1, p0

    .line 115
    div-int/2addr p1, v0

    .line 117
    :cond_31
    sget-object p0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "naviHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method public static getRealDisplayDensityDpi()I
    .registers 2

    .line 181
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    if-nez v0, :cond_13

    .line 184
    new-instance v0, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;-><init>()V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt;->getInitialDisplayDensity(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 187
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    .line 190
    :cond_13
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    return v0
.end method

.method public static getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    .line 194
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 196
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .registers 3

    .line 64
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    if-eqz v0, :cond_5

    return-object v0

    .line 67
    :cond_5
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 68
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 69
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 70
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getScreenRatio()D
    .registers 2

    .line 92
    sget-wide v0, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    return-wide v0
.end method

.method public static getScreenSize()Landroid/util/Size;
    .registers 1

    .line 55
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public static getWaterfallEdgeSize(Landroid/content/Context;)I
    .registers 3

    .line 144
    const-string v0, "waterfall_display_left_edge_size"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isWcgSupported(Landroid/content/Context;)Z
    .registers 5

    .line 208
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 209
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    .line 211
    sget-object v1, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWcgSupported isWideColorGamut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isScreenWideColorGamut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_40

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public static screenFlip(Landroid/content/Context;)Z
    .registers 4

    .line 343
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 346
    :cond_8
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 347
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 348
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-eq v0, p0, :cond_25

    sub-int/2addr p0, v0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    return v1
.end method

.method public static setMainScreenSize(II)V
    .registers 3

    .line 78
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    return-void
.end method

.method public static setRealScreenSize(II)V
    .registers 4

    .line 60
    new-instance v0, Landroid/util/Size;

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    return-void
.end method

.method public static setScreenRatio(II)V
    .registers 6

    int-to-double v0, p0

    int-to-double p0, p1

    .line 88
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    sput-wide v2, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    return-void
.end method

.method public static setScreenSize(II)V
    .registers 3

    .line 51
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    return-void
.end method
