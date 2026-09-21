.class public abstract Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isActivityEmbedded(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 104
    :try_start_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    .line 105
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :catch_10
    move-exception p0

    goto :goto_3d

    .line 106
    :cond_12
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_3c

    .line 107
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 108
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2b

    .line 109
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 111
    :cond_2b
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v1

    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_3b} :catch_10

    return p0

    :cond_3c
    return v0

    .line 119
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isDeviceSupportFold()Z
    .registers 1

    .line 73
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/embedding/SplitController;->isSplitSupported()Z

    move-result v0

    return v0
.end method

.method public static isFoldInnerScreen(Landroid/content/Context;)Z
    .registers 3

    .line 64
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 66
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 68
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isDeviceSupportFold()Z

    move-result v0

    if-eqz v0, :cond_33

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static isGestureNavigationBarOn(Landroid/content/Context;)Z
    .registers 3

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 79
    :try_start_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    .line 80
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :catch_c
    move-exception p0

    goto :goto_31

    .line 81
    :cond_e
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_30

    .line 82
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 83
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_23

    .line 84
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    .line 86
    :cond_23
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_2f} :catch_c

    return p0

    :cond_30
    return v0

    .line 94
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .registers 1

    .line 208
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/DialogFragment;ZZ)V
    .registers 5

    .line 192
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;-><init>(ZZLandroid/app/DialogFragment;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static setDialogWindowBackGround(Landroid/content/Context;Landroid/app/DialogFragment;ZZZ)V
    .registers 13

    .line 31
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 35
    :cond_7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 36
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_72

    .line 43
    :cond_1e
    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p4, :cond_48

    .line 45
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 p4, 0xa

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_69

    .line 49
    :cond_48
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 p4, 0x1e

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_69
    const/16 p4, 0x11

    .line 54
    invoke-virtual {v0, p4}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7b

    :cond_72
    :goto_72
    if-eqz p4, :cond_78

    .line 38
    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_7b

    .line 40
    :cond_78
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/DialogFragment;ZZ)V

    .line 58
    :goto_7b
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/DialogFragment;ZZ)V

    .line 59
    sget p1, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/DialogFragment;ZZ)V
    .registers 13

    if-nez p1, :cond_b

    .line 158
    const-string/jumbo p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround dialog null return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 161
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p3

    .line 162
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/16 v7, 0x10

    if-ne p2, v0, :cond_b7

    .line 166
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x7e

    if-eqz p2, :cond_75

    move p2, v1

    .line 167
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    const/16 p2, 0x1c

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v8, v1

    .line 168
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz p3, :cond_67

    move-object v1, v8

    .line 170
    :cond_67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_b1

    :cond_75
    move p2, v1

    .line 172
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object p2, v1

    .line 173
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz p3, :cond_a4

    move-object v1, p2

    .line 175
    :cond_a4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_b1
    const/16 p0, 0x50

    .line 178
    invoke-virtual {p1, p0}, Landroid/view/Window;->setGravity(I)V

    goto :goto_fa

    :cond_b7
    move p2, v1

    .line 180
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object p2, v1

    .line 181
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz p3, :cond_e8

    move-object v1, p2

    .line 183
    :cond_e8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 p0, 0x11

    .line 184
    invoke-virtual {p1, p0}, Landroid/view/Window;->setGravity(I)V

    .line 187
    :goto_fa
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V
    .registers 11

    if-nez p1, :cond_b

    .line 128
    const-string/jumbo p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround window null return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 135
    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v1, :cond_27

    .line 136
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_nav_gone_curve:I

    goto :goto_29

    :cond_27
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_nav_gone:I

    :goto_29
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_39

    :cond_2e
    if-eqz v1, :cond_33

    .line 138
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_curve:I

    goto :goto_35

    :cond_33
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background:I

    :goto_35
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_39
    const/16 v0, 0x50

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 144
    :cond_42
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 145
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    const/16 v8, 0x14

    invoke-static {p0, v8}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v8}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v2

    .line 146
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 v4, 0x10

    move v5, v4

    invoke-static {p0, v5}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    move v6, v5

    invoke-static {p0, v8}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v6}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v8}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz v1, :cond_7e

    move-object v2, v0

    .line 148
    :cond_7e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 p0, 0x11

    .line 149
    invoke-virtual {p1, p0}, Landroid/view/Window;->setGravity(I)V

    .line 150
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
