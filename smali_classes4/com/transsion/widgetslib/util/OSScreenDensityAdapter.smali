.class public final Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;
    }
.end annotation


# static fields
.field private static final BASE_DENSITY:F

.field private static final BASE_LARGER_WIDTH_DP:I = 0x29a

.field private static final BASE_WIDTH_DP:I = 0x168

.field private static final CONFIG:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

.field private static final DISPLAY_DENSITY_FORCED:Ljava/lang/String; = "display_density_forced"

.field private static final DISPLAY_RESOLUTION:Ljava/lang/String; = "ro.tran.display.resolution.switch.support"

.field public static final INSTANCE:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;

.field private static final IS_DISPLAY_RESOLUTION:Z

.field private static final TAG:Ljava/lang/String; = "ScreenDensityAdapter"

.field private static TranDisplayGetDensityMethod:Ljava/lang/reflect/Method;

.field private static TranDisplayManagerGlobalClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static TranDisplayManagerGlobalInstance:Ljava/lang/Object;

.field private static requireChangeDpi:Z

.field private static sFontScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->INSTANCE:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;

    .line 30
    const-string v1, "ro.tran.display.resolution.switch.support"

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->IS_DISPLAY_RESOLUTION:Z

    .line 32
    invoke-direct {v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->getSystemBaseDensity()F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    .line 35
    new-instance v2, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;-><init>(FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->CONFIG:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    if-eqz v1, :cond_53

    .line 48
    const-string v0, "com.transsion.hubsdk.hardware.display.TranDisplayManagerGlobal"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayManagerGlobalClazz:Ljava/lang/Class;

    .line 49
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDensityDpi"

    invoke-static {v0, v2, v1}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayGetDensityMethod:Ljava/lang/reflect/Method;

    .line 50
    sget-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayManagerGlobalClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_51
    sput-object v1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayManagerGlobalInstance:Ljava/lang/Object;

    :cond_53
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBASE_DENSITY$p()F
    .registers 1

    .line 26
    sget v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    return v0
.end method

.method private final assertAdaptConditions(Landroid/content/Context;I)Z
    .registers 6

    .line 180
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_TRAN_DEVICE:Z

    const/4 v1, 0x0

    const-string v2, "ScreenDensityAdapter"

    if-nez v0, :cond_d

    .line 181
    const-string p0, "setCustomDensity: isn\'t tran devices, don\'t need adapt."

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 184
    :cond_d
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    if-eqz v0, :cond_17

    .line 185
    const-string p0, "setCustomDensity: isFlipScreen, don\'t need adapt."

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 188
    :cond_17
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_SCREEN_SUPPORT:Z

    if-eqz v0, :cond_21

    .line 189
    const-string p0, "setCustomDensity: isFoldScreen, don\'t need adapt."

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 192
    :cond_21
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 193
    const-string p0, "setCustomDensity: isRefsPad, don\'t need adapt."

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 196
    :cond_2d
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->getPhysicsRealScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    sget p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    div-float/2addr p0, p1

    float-to-int p0, p0

    if-ne p0, p2, :cond_3e

    .line 197
    const-string p0, "setCustomDensity: baseWidthDp == realWidthDp, don\'t need adapt."

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method private final getDisplayResolutionBaseDensity()F
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 255
    :try_start_0
    sget-object p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayManagerGlobalInstance:Ljava/lang/Object;

    if-eqz p0, :cond_44

    .line 257
    sget-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->TranDisplayGetDensityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_26

    int-to-float p0, p0

    const/16 v0, 0xa0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :catch_26
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayResolutionBaseDensity Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenDensityAdapter"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    const/high16 p0, 0x40500000    # 3.25f

    return p0
.end method

.method private final getPhysicsRealScreenWidth(Landroid/content/Context;)I
    .registers 4

    .line 220
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 221
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    .line 222
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private final getSystemBaseDensity()F
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 205
    const-string p0, "ScreenDensityAdapter"

    .line 207
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 209
    const-string v2, "ro.sf.lcd_density"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2e

    const/16 v1, 0xa0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_4c

    :catch_2e
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperties Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 215
    :goto_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemBaseDensity: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final getSystemCurDensity(Landroid/content/Context;)F
    .registers 2

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "display_density_forced"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 162
    sget p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    return p0

    .line 165
    :cond_13
    :try_start_13
    const-string p1, "densityStr"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_21

    int-to-float p0, p0

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    return p0

    :catch_21
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    sget p0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    return p0
.end method

.method private final getSystemCurFontScale(Landroid/content/Context;)F
    .registers 3

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "font_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static final setCustomDensity(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x168

    .line 56
    invoke-static {p0, v0, v1}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->setCustomDensity(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static final setCustomDensity(Landroid/content/Context;Landroid/app/Application;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 v0, 0x168

    .line 63
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->setCustomDensity(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static final setCustomDensity(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x168

    .line 70
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->setCustomDensity(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static final setCustomDensity(Landroid/content/Context;ZI)V
    .registers 14

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->INSTANCE:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->assertAdaptConditions(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x1

    .line 84
    sput-boolean v1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->requireChangeDpi:Z

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 86
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    .line 88
    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    sput v3, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->sFontScale:F

    .line 90
    sget-boolean v3, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->IS_DISPLAY_RESOLUTION:Z

    if-eqz v3, :cond_30

    .line 91
    invoke-direct {v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->getDisplayResolutionBaseDensity()F

    move-result v4

    goto :goto_32

    .line 93
    :cond_30
    sget v4, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->BASE_DENSITY:F

    .line 96
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCustomDensity: before density = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, " scaledDensity = "

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sget v6, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->sFontScale:F

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    const-string v6, " baseWidthDp = "

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v6, " IS_DISPLAY_RESOLUTION = "

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v5, "ScreenDensityAdapter"

    invoke-static {v5, v3}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    div-float/2addr v2, v4

    .line 103
    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->getPhysicsRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 104
    sget p2, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->sFontScale:F

    mul-float/2addr p2, v0

    const/16 v3, 0xa0

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 109
    iput v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 110
    iput p2, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 111
    iput v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 112
    sget-object v7, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->CONFIG:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    .line 113
    invoke-virtual {v7, v0}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->setDensity(F)V

    .line 114
    iget v8, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v7, v8}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->setScaledDensity(F)V

    .line 115
    iget v8, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v8}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->setDensityDpi(I)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 122
    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 121
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 125
    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v6

    float-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 128
    iget v6, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v7, v6}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->setScreenWidthDp(I)V

    .line 129
    iget v6, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v7, v6}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->setScreenHeightDp(I)V

    if-eqz p1, :cond_102

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_102

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 135
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 136
    iput p2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 137
    iput v3, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 141
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 144
    iget p1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 149
    :cond_102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setCustomDensity: apply targetDensity = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    const-string p1, " targetScaledDensity = "

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    const-string p1, " targetDensityDpi = "

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string p1, " sFontScale = "

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget p1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->sFontScale:F

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    const-string p1, " BaseDensity = "

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 154
    const-string p1, " cusScaleFactor = "

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {v5, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic setCustomDensity$default(Landroid/content/Context;ZIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p1, 0x1

    .line 76
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->setCustomDensity(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static synthetic setCustomDensity$default(Landroid/content/Context;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 69
    :cond_5
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->setCustomDensity(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final updResource(Landroid/content/res/Resources;Landroid/content/Context;)V
    .registers 6

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 229
    sget-boolean v1, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->requireChangeDpi:Z

    if-eqz v1, :cond_91

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget-object v2, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter;->CONFIG:Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensityDpi()I

    move-result v3

    if-eq v1, v3, :cond_91

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updResource: CONFIG.densityDpi = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensityDpi()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenDensityAdapter"

    invoke-static {v3, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensity()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 232
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensityDpi()I

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 233
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScaledDensity()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 234
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 235
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScreenWidthDp()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 236
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScreenHeightDp()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eq p0, p1, :cond_91

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "context.applicationContext.resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 240
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensity()F

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 241
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getDensityDpi()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 242
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScaledDensity()F

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 243
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 244
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScreenWidthDp()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 245
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/OSScreenDensityAdapter$Config;->getScreenHeightDp()I

    move-result p1

    iput p1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_91
    return-void
.end method
