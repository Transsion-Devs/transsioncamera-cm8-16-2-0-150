.class public Lcom/transsion/widgetthemes/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPCOMPAT:I = 0x1

.field public static final GESTURE_ON:I = 0x2

.field public static final HIOS:I = 0x0

.field public static final ITE:I = 0x2

.field private static final KEY_OLED:Ljava/lang/String; = "ro.transsion.lcd.type"

.field public static final METERIAL:I = 0x0

.field private static OLED_SCREEN_STATE:I = 0x0

.field private static final OLED_SCREEN_STATE_NO:I = 0x0

.field private static final OLED_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final OLED_SCREEN_STATE_YES:I = 0x1

.field public static OS_TYPE:Ljava/lang/String; = null

.field public static final PLATFORM_MTK:I = 0x1

.field public static final PLATFORM_SPRD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "widgetslib.Utils"

.field private static final VALUE_OLED:Ljava/lang/String; = "1"

.field private static WATERFALL_SCREEN_STATE:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final WATERFALL_SCREEN_STATE_YES:I = 0x1

.field public static final XOS:I = 0x1

.field public static final mOsType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    const-string v0, "xos"

    const-string v1, "itel"

    const-string v2, "hios"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 36
    sput v0, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    .line 41
    sput v0, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    .line 51
    const-string v0, "ro.tranos.type"

    invoke-static {v0}, Lcom/transsion/widgetthemes/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetthemes/util/Utils;->OS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelViewShadowStyle(Landroid/view/View;)V
    .registers 4

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 343
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 344
    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    sget v1, Lcom/transsion/widgetsThemes/R$id;->os_list_item_shadow_id:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 347
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    .line 348
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_25
    return-void
.end method

.method public static executeViewShadowStyle(Landroid/view/View;)V
    .registers 5

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 327
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_35

    .line 328
    check-cast v0, Landroid/view/ViewGroup;

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    sget v2, Lcom/transsion/widgetsThemes/R$id;->os_list_item_shadow_id:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 334
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetsThemes/R$dimen;->os_list_item_shadow_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 336
    sget v0, Lcom/transsion/widgetsThemes/R$color;->os_list_item_shadow_color:I

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_35
    return-void
.end method

.method private static getAppTheme(III)I
    .registers 6

    .line 107
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_21

    .line 112
    :cond_b
    sget-object v1, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    return p2

    :cond_17
    const/4 p2, 0x1

    .line 114
    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    return p1

    :cond_21
    :goto_21
    return p0
.end method

.method private static getAppTheme(ZI)I
    .registers 5

    .line 55
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 57
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 60
    :cond_d
    sget-object v1, Lcom/transsion/widgetthemes/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz p0, :cond_22

    if-nez p1, :cond_1f

    .line 63
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 65
    :cond_1f
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_hios:I

    return p0

    :cond_22
    if-nez p1, :cond_27

    .line 69
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_hios_NoActionBar:I

    return p0

    .line 71
    :cond_27
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_hios_NoActionBar:I

    return p0

    :cond_2a
    const/4 v2, 0x1

    .line 74
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p0, :cond_3d

    if-nez p1, :cond_3a

    .line 77
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_xos:I

    return p0

    .line 79
    :cond_3a
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_xos:I

    return p0

    :cond_3d
    if-nez p1, :cond_42

    .line 83
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_xos_NoActionBar:I

    return p0

    .line 85
    :cond_42
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_xos_NoActionBar:I

    return p0

    :cond_45
    if-eqz p0, :cond_4f

    if-nez p1, :cond_4c

    .line 91
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_itel:I

    return p0

    .line 93
    :cond_4c
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_itel:I

    return p0

    :cond_4f
    if-nez p1, :cond_54

    .line 97
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_Material_itel_NoActionBar:I

    return p0

    .line 99
    :cond_54
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OS_Theme_AppCompat_itel_NoActionBar:I

    return p0
.end method

.method public static getOsType()Ljava/lang/String;
    .registers 3

    .line 259
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 261
    const-string v2, "ro.tranos.type"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    const-string v0, ""

    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 315
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 317
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemProperties Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string p0, ""

    return-object p0
.end method

.method public static isGestureNavigationBarOn(Landroid/content/Context;)Z
    .registers 3

    .line 253
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

.method public static isOLED()Z
    .registers 4

    .line 298
    sget v0, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1b

    .line 299
    const-string v0, "ro.transsion.lcd.type"

    invoke-static {v0}, Lcom/transsion/widgetthemes/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 301
    sput v3, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    return v3

    .line 304
    :cond_18
    sput v2, Lcom/transsion/widgetthemes/util/Utils;->OLED_SCREEN_STATE:I

    return v2

    :cond_1b
    if-ne v0, v3, :cond_1e

    return v3

    :cond_1e
    return v2
.end method

.method public static isRtl()Z
    .registers 2

    .line 269
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    .line 275
    :try_start_1
    sget v1, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2b

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "waterfall_display_left_edge_size"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_23

    :catch_20
    move-exception p0

    goto :goto_2f

    :cond_22
    move p0, v0

    :goto_23
    if-lez p0, :cond_28

    .line 282
    sput v3, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I

    return v3

    .line 285
    :cond_28
    sput v0, Lcom/transsion/widgetthemes/util/Utils;->WATERFALL_SCREEN_STATE:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_20

    return v0

    :cond_2b
    if-ne v1, v3, :cond_2e

    return v3

    :cond_2e
    return v0

    .line 292
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static setAppTheme(Landroid/content/Context;III)V
    .registers 5

    const/4 v0, 0x1

    .line 139
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetthemes/util/Utils;->setAppTheme(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZ)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 151
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetthemes/util/Utils;->setAppTheme(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZZ)V
    .registers 7

    .line 163
    invoke-static {p1, p2, p3}, Lcom/transsion/widgetthemes/util/Utils;->getAppTheme(III)I

    move-result p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 165
    instance-of p1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_35

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 167
    invoke-static {p0}, Lcom/transsion/widgetthemes/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p2

    .line 168
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isOLED()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1f

    .line 170
    sget p3, Lcom/transsion/widgetsThemes/R$style;->OSThemOled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1f
    if-eqz p2, :cond_35

    .line 174
    sget p2, Lcom/transsion/widgetsThemes/R$style;->OsCurseSupport:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    if-eqz p4, :cond_2d

    .line 176
    sget p2, Lcom/transsion/widgetsThemes/R$style;->actionbar_no_force_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 178
    :cond_2d
    invoke-static {p0, p1, p4}, Lcom/transsion/widgetthemes/util/Utils;->setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V

    if-eqz p5, :cond_35

    .line 180
    invoke-static {p0}, Lcom/transsion/widgetthemes/util/Utils;->setWindowInset(Landroid/content/Context;)V

    :cond_35
    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;ZI)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-static {p1, p2}, Lcom/transsion/widgetthemes/util/Utils;->getAppTheme(ZI)I

    move-result p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private static setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V
    .registers 5

    .line 187
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_65

    .line 188
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2e

    if-nez p2, :cond_23

    .line 210
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_0_180:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_28

    .line 212
    :cond_23
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_0_180_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 214
    :goto_28
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    :cond_2e
    if-nez p2, :cond_3f

    .line 202
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_39

    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270_RTL:I

    goto :goto_3b

    :cond_39
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270:I

    :goto_3b
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_44

    .line 204
    :cond_3f
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_270_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 206
    :goto_44
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse_270:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    :cond_4a
    if-nez p2, :cond_5b

    .line 194
    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_55

    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90_RTL:I

    goto :goto_57

    :cond_55
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90:I

    :goto_57
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_60

    .line 196
    :cond_5b
    sget p0, Lcom/transsion/widgetsThemes/R$style;->OSThemeCurve_90_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 198
    :goto_60
    sget p0, Lcom/transsion/widgetsThemes/R$style;->popup_menu_curse_90:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_65
    return-void
.end method

.method public static setWindowInset(Landroid/content/Context;)V
    .registers 3

    .line 222
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    .line 223
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetthemes/util/Utils$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetthemes/util/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_17
    return-void
.end method
