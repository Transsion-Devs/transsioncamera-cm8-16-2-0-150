.class public Lcom/ss/android/ttve/utils/ExtraUIUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SURFACE_SCALE_HEIGHT:F = 16.0f

.field public static final DEFAULT_SURFACE_SCALE_WIDTH:F = 9.0f

.field public static final SURFACE_LOCATION_HEIGHT_INDEX:I = 0x3

.field public static final SURFACE_LOCATION_WIDTH_INDEX:I = 0x2

.field public static final SURFACE_LOCATION_X_INDEX:I = 0x0

.field public static final SURFACE_LOCATION_Y_INDEX:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ExtraUIUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calScreenSurfaceLocation(Landroid/content/Context;IIIII)[F
    .registers 28

    move/from16 v0, p1

    move/from16 v1, p5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_11

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_11

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_15

    :cond_11
    move/from16 v2, p3

    move/from16 v1, p4

    :goto_15
    const/4 v3, 0x4

    .line 57
    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    int-to-float v7, v1

    const/4 v8, 0x2

    aput v7, v3, v8

    int-to-float v9, v2

    const/4 v10, 0x3

    aput v9, v3, v10

    .line 58
    const-string v11, "ExtraUIUtil"

    if-nez p0, :cond_31

    .line 59
    const-string v0, "Context is null while calculating surface location!"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_31
    const/high16 v12, 0x41800000    # 16.0f

    mul-float v13, v7, v12

    const/high16 v14, 0x41100000    # 9.0f

    mul-float v15, v9, v14

    cmpl-float v13, v13, v15

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v13, :cond_4c

    int-to-float v5, v0

    .line 64
    aput v5, v3, v8

    mul-float/2addr v9, v15

    mul-float/2addr v9, v5

    div-float/2addr v9, v7

    .line 65
    aput v9, v3, v10

    move/from16 v13, p2

    move/from16 p3, v4

    goto :goto_6c

    :cond_4c
    move/from16 v13, p2

    move/from16 p3, v4

    int-to-float v4, v13

    .line 67
    aput v4, v3, v10

    mul-float/2addr v4, v14

    div-float/2addr v4, v12

    .line 68
    aput v4, v3, v8

    int-to-float v12, v0

    sub-float v4, v12, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v4, v14

    .line 69
    aput v4, v3, p3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6c

    .line 72
    aput v5, v3, p3

    .line 73
    aput v12, v3, v8

    mul-float/2addr v9, v15

    mul-float/2addr v9, v12

    div-float/2addr v9, v7

    .line 74
    aput v9, v3, v10

    .line 80
    :cond_6c
    :goto_6c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 81
    invoke-static/range {p0 .. p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aget v0, v3, p3

    .line 82
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aget v0, v3, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aget v0, v3, v8

    .line 83
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aget v0, v3, v10

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v13, v1

    filled-new-array/range {v12 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v1, "video[%d, %d], max[%d, %d], screen[%d, %d], surface[%f, %f, %f, %f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .registers 5

    if-nez p0, :cond_3

    goto :goto_1c

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static getRealDisplayHeight(Landroid/content/Context;)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    :try_start_9
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    return p0

    .line 101
    :catch_1b
    invoke-static {p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
