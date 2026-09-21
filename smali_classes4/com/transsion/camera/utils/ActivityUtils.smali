.class public abstract Lcom/transsion/camera/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setDefaultWindowRefreshRate(Landroid/app/Activity;)V
    .registers 2

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ActivityUtils;->setWindowRefreshRate(Landroid/app/Activity;I)V

    return-void
.end method

.method public static setWindowRefreshRate(Landroid/app/Activity;I)V
    .registers 12

    if-nez p0, :cond_3

    goto :goto_46

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_46

    .line 16
    :cond_a
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object v0

    if-eqz v0, :cond_46

    .line 17
    array-length v1, v0

    if-nez v1, :cond_14

    goto :goto_46

    .line 18
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_46

    .line 20
    :cond_1b
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    if-gtz p1, :cond_25

    .line 22
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    goto :goto_43

    .line 25
    :cond_25
    array-length v3, v0

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_41

    aget v5, v0, v4

    int-to-float v6, p1

    sub-float v6, v5, v6

    .line 26
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3e

    move v2, v5

    goto :goto_41

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 31
    :cond_41
    :goto_41
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 34
    :goto_43
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_46
    :goto_46
    return-void
.end method
