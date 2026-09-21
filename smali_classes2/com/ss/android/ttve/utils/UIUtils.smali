.class public Lcom/ss/android/ttve/utils/UIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;,
        Lcom/ss/android/ttve/utils/UIUtils$ToastHook;
    }
.end annotation


# static fields
.field public static final API_ET_20:Z

.field private static DPI:I = 0x0

.field public static final ELLIPSIS_CHAR:C = '\u2026'

.field public static final LAYOUT_PARAMS_KEEP_OLD:I = -0x3

.field public static sTempEllipsisResult:Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;

.field private static sToastHook:Lcom/ss/android/ttve/utils/UIUtils$ToastHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/ss/android/ttve/utils/UIUtils;->API_ET_20:Z

    const/4 v0, -0x1

    .line 268
    sput v0, Lcom/ss/android/ttve/utils/UIUtils;->DPI:I

    .line 550
    new-instance v0, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;

    invoke-direct {v0}, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/utils/UIUtils;->sTempEllipsisResult:Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertInUIThread()V
    .registers 0

    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    return-void
.end method

.method public static clearAnimation(Landroid/view/View;)Z
    .registers 2

    if-eqz p0, :cond_e

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 581
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static detachFromParent(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_17

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 435
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 436
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_12

    goto :goto_17

    .line 440
    :cond_12
    :try_start_12
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return-void
.end method

.method public static dip2Px(Landroid/content/Context;F)F
    .registers 2

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method public static displayLongTimeToast(Landroid/content/Context;II)V
    .registers 5

    if-nez p0, :cond_3

    goto :goto_d

    .line 98
    :cond_3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    const/16 v1, 0x11

    .line 102
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/utils/UIUtils;->displayToastInternal(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;I)V
    .registers 2

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttve/utils/UIUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;II)V
    .registers 3

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/utils/UIUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x11

    .line 91
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/utils/UIUtils;->displayToastInternal(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, v0, p1}, Lcom/ss/android/ttve/utils/UIUtils;->displayToast(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static displayToast(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, p1, v0, p2}, Lcom/ss/android/ttve/utils/UIUtils;->displayToastInternal(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

.method private static displayToastInternal(Landroid/content/Context;ILjava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public static displayToastWithIcon(Landroid/content/Context;II)V
    .registers 3

    .line 75
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/utils/UIUtils;->displayToast(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static displayToastWithIcon(Landroid/content/Context;ILjava/lang/String;)V
    .registers 3

    .line 79
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/utils/UIUtils;->displayToast(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static ellipseSingleLineStr(Ljava/lang/String;ILandroid/graphics/Paint;ILcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;)V
    .registers 15

    .line 516
    const-string v0, ""

    const/4 v1, 0x0

    if-le p1, p3, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4d

    .line 521
    :cond_c
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Lcom/ss/android/ttve/utils/UIUtils;->floatToIntBig(F)I

    move-result v2

    if-gt v2, p1, :cond_1b

    .line 523
    iput-object p0, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->ellipsisStr:Ljava/lang/String;

    .line 524
    iput v2, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->length:I

    return-void

    :cond_1b
    sub-int p3, p1, p3

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v8, p3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p0

    const/4 p2, 0x1

    if-ge p0, p2, :cond_38

    .line 531
    iput-object v0, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->ellipsisStr:Ljava/lang/String;

    .line 532
    iput v1, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->length:I

    return-void

    .line 535
    :cond_38
    invoke-virtual {v4, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    .line 536
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->ellipsisStr:Ljava/lang/String;

    .line 538
    iput p1, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->length:I

    return-void

    .line 517
    :cond_4d
    :goto_4d
    iput-object v0, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->ellipsisStr:Ljava/lang/String;

    .line 518
    iput v1, p4, Lcom/ss/android/ttve/utils/UIUtils$EllipsisMeasureResult;->length:I

    return-void
.end method

.method public static expandClickRegion(Landroid/view/View;IIII)V
    .registers 11

    .line 156
    new-instance v0, Lcom/ss/android/ttve/utils/UIUtils$1;

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v5, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/utils/UIUtils$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static floatToIntBig(F)I
    .registers 2

    const v0, 0x3f7fbe77    # 0.999f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getDiggBuryWidth(Landroid/content/Context;)I
    .registers 3

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v0, v0, 0x55f

    .line 281
    div-int/lit16 v0, v0, 0x2710

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p0, v1}, Lcom/ss/android/ttve/utils/UIUtils;->dip2Px(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getDpi(Landroid/content/Context;)I
    .registers 3

    .line 271
    sget v0, Lcom/ss/android/ttve/utils/UIUtils;->DPI:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    if-eqz p0, :cond_17

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/ss/android/ttve/utils/UIUtils;->DPI:I

    .line 276
    :cond_17
    sget p0, Lcom/ss/android/ttve/utils/UIUtils;->DPI:I

    return p0
.end method

.method public static getIndexInParent(Landroid/view/View;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_19

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_19

    .line 570
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 571
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    .line 572
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_19
    :goto_19
    return v0
.end method

.method public static getLocationInAncestor(Landroid/view/View;Landroid/view/View;)[I
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6b

    if-nez p1, :cond_6

    goto :goto_6b

    :cond_6
    const/4 v1, 0x2

    .line 475
    new-array v1, v1, [F

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    aput v3, v1, v4

    .line 479
    aget v3, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 483
    :goto_26
    instance-of v3, p0, Landroid/view/View;

    if-eqz v3, :cond_6b

    .line 484
    move-object v3, p0

    check-cast v3, Landroid/view/View;

    if-ne p0, p1, :cond_3e

    .line 501
    aget p0, v1, v4

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 502
    aget v0, v1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    .line 489
    :cond_3e
    aget p0, v1, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p0, v5

    aput p0, v1, v4

    .line 490
    aget p0, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p0, v5

    aput p0, v1, v2

    .line 492
    aget p0, v1, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p0, v5

    aput p0, v1, v4

    .line 493
    aget p0, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p0, v5

    aput p0, v1, v2

    .line 495
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_26

    :cond_6b
    :goto_6b
    return-object v0
.end method

.method public static getLocationInUpView(Landroid/view/View;Landroid/view/View;[IZ)V
    .registers 9

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    .line 321
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_2f

    .line 324
    :cond_b
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 325
    aget v0, p2, p0

    const/4 v2, 0x1

    .line 326
    aget v3, p2, v2

    .line 327
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 328
    aget v4, p2, p0

    sub-int/2addr v4, v0

    .line 329
    aget v0, p2, v2

    sub-int/2addr v0, v3

    if-eqz p3, :cond_2b

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 333
    div-int/2addr p3, v1

    add-int/2addr v4, p3

    .line 334
    div-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 336
    :cond_2b
    aput v4, p2, p0

    .line 337
    aput v0, p2, v2

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static final getRatioOfScreen(Landroid/content/Context;F)I
    .registers 2

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 228
    :cond_c
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static final getScreenHeight(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 248
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    .line 250
    :cond_f
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static final getScreenWidth(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 219
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    .line 220
    :cond_f
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static final getStatusBarHeight(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 290
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "status_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1d
    return v0
.end method

.method public static isInUIThread()Z
    .registers 2

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static final isViewVisible(Landroid/view/View;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 313
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    return v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .registers 2

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static requestOrienation(Landroid/app/Activity;Z)V
    .registers 3

    if-eqz p0, :cond_21

    .line 553
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_21

    :cond_9
    xor-int/lit8 v0, p1, 0x1

    .line 556
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/16 v0, 0x400

    if-eqz p1, :cond_1a

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 562
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public static setClickListener(ZLandroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p0, :cond_d

    .line 592
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    .line 593
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_d
    const/4 p0, 0x0

    .line 595
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 596
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static setColorAlpha(II)I
    .registers 3

    const/16 v0, 0xff

    if-le p1, v0, :cond_6

    move p1, v0

    goto :goto_9

    :cond_6
    if-gez p1, :cond_9

    const/4 p1, 0x0

    :cond_9
    :goto_9
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    mul-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static setLayoutParams(Landroid/view/View;II)V
    .registers 4

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_11

    :cond_7
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_d

    .line 404
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    if-eq p2, v0, :cond_11

    .line 407
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_11
    :goto_11
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p0, :cond_9

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 428
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTextViewMaxLines(Landroid/widget/TextView;I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p0, :cond_17

    if-gtz p1, :cond_5

    goto :goto_17

    .line 462
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne v0, p1, :cond_c

    goto :goto_17

    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 465
    :goto_11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 466
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public static setToastHook(Lcom/ss/android/ttve/utils/UIUtils$ToastHook;)V
    .registers 1

    .line 63
    sput-object p0, Lcom/ss/android/ttve/utils/UIUtils;->sToastHook:Lcom/ss/android/ttve/utils/UIUtils$ToastHook;

    return-void
.end method

.method public static setTopMargin(Landroid/view/View;F)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 388
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 389
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, -0x3

    .line 390
    invoke-static {p0, v0, p1, v0, v0}, Lcom/ss/android/ttve/utils/UIUtils;->updateLayoutMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setTxtAndAdjustVisible(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 415
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x8

    .line 416
    invoke-static {p0, p1}, Lcom/ss/android/ttve/utils/UIUtils;->setViewVisibility(Landroid/view/View;I)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 418
    invoke-static {p0, v0}, Lcom/ss/android/ttve/utils/UIUtils;->setViewVisibility(Landroid/view/View;I)V

    .line 419
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setViewBackgroundWithPadding(Landroid/view/View;I)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 185
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setViewBackgroundWithPadding(Landroid/view/View;Landroid/content/res/Resources;I)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 193
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setViewBackgroundWithPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 206
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 210
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static setViewMinHeight(Landroid/view/View;I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_9

    .line 451
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-ne v0, p1, :cond_a

    :goto_9
    return-void

    .line 454
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public static final setViewVisibility(Landroid/view/View;I)V
    .registers 3

    if-eqz p0, :cond_12

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_12

    invoke-static {p1}, Lcom/ss/android/ttve/utils/UIUtils;->visibilityValid(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    .line 305
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)F
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static updateLayout(Landroid/view/View;II)V
    .registers 5

    if-nez p0, :cond_3

    goto :goto_1e

    .line 343
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 344
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_12

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p2, :cond_12

    goto :goto_1e

    :cond_12
    const/4 v1, -0x3

    if-eq p1, v1, :cond_17

    .line 347
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_17
    if-eq p2, v1, :cond_1b

    .line 349
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static updateLayoutMargin(Landroid/view/View;IIII)V
    .registers 13

    if-nez p0, :cond_3

    goto :goto_19

    .line 356
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_19

    .line 359
    :cond_a
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_19

    .line 360
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/ss/android/ttve/utils/UIUtils;->updateMargin(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :cond_19
    :goto_19
    return-void
.end method

.method private static updateMargin(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 7

    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    .line 365
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v0, p2, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, p3, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, p4, :cond_15

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v0, p5, :cond_15

    goto :goto_29

    :cond_15
    const/4 v0, -0x3

    if-eq p2, v0, :cond_1a

    .line 370
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1a
    if-eq p3, v0, :cond_1e

    .line 372
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1e
    if-eq p4, v0, :cond_22

    .line 374
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_22
    if-eq p5, v0, :cond_26

    .line 376
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 377
    :cond_26
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private static visibilityValid(I)Z
    .registers 2

    if-eqz p0, :cond_c

    const/16 v0, 0x8

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method
