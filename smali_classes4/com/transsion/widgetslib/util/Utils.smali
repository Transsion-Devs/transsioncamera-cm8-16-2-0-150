.class public Lcom/transsion/widgetslib/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPCOMPAT:I = 0x1

.field public static final ATLEAT_O:Z

.field public static final ATLEAT_P:Z

.field public static final ATLEAT_Q:Z

.field public static final ATLEAT_R:Z

.field private static final DIALOG_WINDOW_ERROR_WIDTH:I = 0x46

.field public static final FLAG_SECONDARY_DISPLAY_FLIP:I = 0x200000

.field private static final GESTURE_ON:I = 0x2

.field public static final HIOS:I = 0x0

.field public static IS_4D_VIBRATE_OPT_0012_IR:Z = false

.field public static IS_4D_VIBRATE_OPT_SUPPORT:Z = false

.field public static IS_4D_VIBRATE_SUPPORT:Z = false

.field public static final IS_AFTER_1501:Z

.field public static final IS_DY_VERSION:Z

.field public static final IS_HIOS:Z

.field public static final IS_ITEL:Z

.field public static final IS_TRAN_DEVICE:Z

.field public static final IS_XOS:Z

.field public static final ITE:I = 0x2

.field private static final KEY_FLIP:Ljava/lang/String; = "ro.os_flip_screen_support"

.field private static final KEY_FOLD:Ljava/lang/String; = "ro.os_foldable_screen_support"

.field private static final KEY_OLED:Ljava/lang/String; = "ro.transsion.lcd.type"

.field public static final LARGE_SCREEN_WIDTH_THRESHOLD:I = 0x258

.field public static final MAIN_OS_VERSION_CODE:I

.field public static final METERIAL:I = 0x0

.field private static final NUMBER_OS_14_BIG_VERSION:I = 0xe

.field private static OLED_SCREEN_STATE:I = 0x0

.field private static final OLED_SCREEN_STATE_NO:I = 0x0

.field private static final OLED_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final OLED_SCREEN_STATE_YES:I = 0x1

.field public static OS_FOLD_FLIP_SCREEN_SUPPORT:Z = false

.field public static OS_FOLD_SCREEN_SUPPORT:Z = false

.field private static final OS_RANDOM_COLORS:[I

.field private static final OS_TRANS_VERSION:Ljava/lang/String; = "ro.tranos.version"

.field public static OS_TYPE:Ljava/lang/String; = null

.field private static final OS_TYPE_STR:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field private static final PATTERN_OS_BIG_VERSION:Ljava/lang/String; = "[os|OS](\\d+)\\."

.field public static final PLATFORM_MTK:I = 0x1

.field public static final PLATFORM_SPRD:I = 0x2

.field public static final SECOND_HOME_SCALE_RATIO:F = 0.9f

.field public static final SMALL_SCREEN_WIDTH_THRESHOLD:I = 0x168

.field private static final TAG:Ljava/lang/String; = "widgetslib.Utils"

.field private static final VALUE_FLIP:Ljava/lang/String; = "1"

.field private static final VALUE_FOLD:Ljava/lang/String; = "1"

.field private static final VALUE_OLED:Ljava/lang/String; = "1"

.field public static VERSION_T_GO:Z = false

.field private static WATERFALL_SCREEN_STATE:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final WATERFALL_SCREEN_STATE_YES:I = 0x1

.field public static final XOS:I = 0x1

.field public static final mAddIcon:[I

.field public static final mBackIcon:[I

.field public static final mCloseIcon:[I

.field public static final mEditIcon:[I

.field public static final mMoreIcon:[I

.field public static final mOsType:[Ljava/lang/String;

.field public static final mSaveIcon:[I

.field public static final mSearchIcon:[I

.field public static final mSettingsIcon:[I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 77
    sget-object v0, Lcom/transsion/widgetscore/utils/CoreUtils;->mOsType:[Ljava/lang/String;

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE_STR:Ljava/lang/String;

    const/4 v2, 0x0

    .line 79
    aget-object v3, v0, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v1, v4

    :goto_1e
    sput-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    .line 80
    aget-object v1, v0, v4

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_XOS:Z

    const/4 v1, 0x2

    .line 81
    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_ITEL:Z

    .line 82
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mBackIcon:[I

    .line 83
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mCloseIcon:[I

    .line 84
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mSaveIcon:[I

    .line 85
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mSearchIcon:[I

    .line 86
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mEditIcon:[I

    .line 87
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mMoreIcon:[I

    .line 88
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mSettingsIcon:[I

    .line 89
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_hios:I

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_xos:I

    sget v3, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_itel:I

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mAddIcon:[I

    const/4 v0, -0x1

    .line 91
    sput v0, Lcom/transsion/widgetslib/util/Utils;->WATERFALL_SCREEN_STATE:I

    .line 97
    sput v0, Lcom/transsion/widgetslib/util/Utils;->OLED_SCREEN_STATE:I

    .line 110
    const-string v0, "ro.os_flip_screen_support"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    .line 111
    const-string v0, "ro.os_foldable_screen_support"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_SCREEN_SUPPORT:Z

    .line 114
    const-string v0, "ro.tranos.type"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    .line 115
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_Q:Z

    .line 116
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_R:Z

    .line 117
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_P:Z

    .line 118
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_O:Z

    .line 120
    const-string v0, "ro.os_1g_go.support"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string v0, "ro.os_2g_go.support"

    .line 121
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string v0, "ro.os_3g_go.support"

    .line 122
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    :cond_ec
    move v2, v4

    :cond_ed
    sput-boolean v2, Lcom/transsion/widgetslib/util/Utils;->VERSION_T_GO:Z

    .line 129
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_TRAN_DEVICE:Z

    .line 132
    const-string v0, "ro.tranos.version"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isAfterOS14()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_DY_VERSION:Z

    .line 134
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isAfterOS1501()Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_AFTER_1501:Z

    .line 135
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsVersionCode()I

    move-result v0

    sput v0, Lcom/transsion/widgetslib/util/Utils;->MAIN_OS_VERSION_CODE:I

    .line 647
    sget-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_SUPPORT:Z

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_SUPPORT:Z

    .line 648
    sget-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_OPT_SUPPORT:Z

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_OPT_SUPPORT:Z

    .line 649
    sget-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_OPT_0012_IR:Z

    sput-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_OPT_0012_IR:Z

    .line 963
    sget v1, Lcom/transsion/widgetslib/R$color;->os_random_colors_0:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_1:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_random_colors_2:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_random_colors_3:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_random_colors_4:I

    sget v6, Lcom/transsion/widgetslib/R$color;->os_random_colors_5:I

    sget v7, Lcom/transsion/widgetslib/R$color;->os_random_colors_6:I

    sget v8, Lcom/transsion/widgetslib/R$color;->os_random_colors_7:I

    sget v9, Lcom/transsion/widgetslib/R$color;->os_random_colors_8:I

    sget v10, Lcom/transsion/widgetslib/R$color;->os_random_colors_9:I

    sget v11, Lcom/transsion/widgetslib/R$color;->os_random_colors_10:I

    sget v12, Lcom/transsion/widgetslib/R$color;->os_random_colors_11:I

    sget v13, Lcom/transsion/widgetslib/R$color;->os_random_colors_12:I

    sget v14, Lcom/transsion/widgetslib/R$color;->os_random_colors_13:I

    sget v15, Lcom/transsion/widgetslib/R$color;->os_random_colors_14:I

    sget v16, Lcom/transsion/widgetslib/R$color;->os_random_colors_15:I

    filled-new-array/range {v1 .. v16}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_RANDOM_COLORS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptDyColor(Landroid/content/Context;Z)V
    .registers 3

    .line 298
    sget v0, Lcom/transsion/widgetslib/R$style;->OSDefaultColorHIOS:I

    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/Utils;->adaptDyColor(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static adaptDyColor(Landroid/content/Context;ZI)V
    .registers 5

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 258
    invoke-static {p0, p1, p2, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->adaptDyColor(Landroid/content/Context;ZIII)V

    return-void
.end method

.method public static adaptDyColor(Landroid/content/Context;ZII)V
    .registers 5

    const/16 v0, 0xe

    .line 288
    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/util/Utils;->adaptDyColor(Landroid/content/Context;ZIII)V

    return-void
.end method

.method public static adaptDyColor(Landroid/content/Context;ZIII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/DynamicColorTool;->adaptDyColor(Landroid/content/Context;ZIIIZ)V

    return-void
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .registers 1

    .line 620
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3

    .line 624
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    return p0
.end method

.method public static compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 604
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createActivityRule(Ljava/lang/String;Ljava/lang/String;)Landroidx/window/embedding/ActivityRule;
    .registers 4

    .line 814
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 815
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance p0, Landroidx/window/embedding/ActivityFilter;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance p0, Landroidx/window/embedding/ActivityRule;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/window/embedding/ActivityRule;-><init>(Ljava/lang/String;Ljava/util/Set;Z)V

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .registers 2

    .line 672
    invoke-static {p0, p1}, Lcom/transsion/widgetscore/utils/CoreUtils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 616
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;
    .registers 3

    .line 612
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    .line 720
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getAppTheme(III)I
    .registers 6

    .line 192
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_21

    .line 197
    :cond_b
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    return p2

    :cond_17
    const/4 p2, 0x1

    .line 199
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

    .line 139
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 141
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 145
    :cond_d
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz p0, :cond_22

    if-nez p1, :cond_1f

    .line 148
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 150
    :cond_1f
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_hios:I

    return p0

    :cond_22
    if-nez p1, :cond_27

    .line 154
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios_NoActionBar:I

    return p0

    .line 156
    :cond_27
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_hios_NoActionBar:I

    return p0

    :cond_2a
    const/4 v2, 0x1

    .line 159
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p0, :cond_3d

    if-nez p1, :cond_3a

    .line 162
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_xos:I

    return p0

    .line 164
    :cond_3a
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_xos:I

    return p0

    :cond_3d
    if-nez p1, :cond_42

    .line 168
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_xos_NoActionBar:I

    return p0

    .line 170
    :cond_42
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_xos_NoActionBar:I

    return p0

    :cond_45
    if-eqz p0, :cond_4f

    if-nez p1, :cond_4c

    .line 176
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_itel:I

    return p0

    .line 178
    :cond_4c
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_itel:I

    return p0

    :cond_4f
    if-nez p1, :cond_54

    .line 182
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_itel_NoActionBar:I

    return p0

    .line 184
    :cond_54
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_itel_NoActionBar:I

    return p0
.end method

.method public static getAttrColor(IILandroid/content/Context;)I
    .registers 6

    .line 702
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 703
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 704
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_17
    return p1
.end method

.method public static getAttrColor(Landroid/content/Context;II)I
    .registers 3

    .line 697
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(IILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getAttrDimen(IILandroid/content/Context;)I
    .registers 6

    .line 711
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 712
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 713
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1b
    return p1
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1172
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception v0

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed! "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1218
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1219
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed! "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "widgetslib.Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDialogXosDiffStyle(Landroid/content/Context;)I
    .registers 2

    .line 307
    invoke-static {p0}, Lcom/transsion/widgetslib/util/DynamicColorTool;->getXosDialogDyStyle(Landroid/content/Context;)I

    move-result p0

    .line 308
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_DY_VERSION:Z

    if-eqz v0, :cond_9

    return p0

    :cond_9
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_xos:I

    return p0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1207
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception v0

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed! "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "widgetslib.Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatValue(Landroid/content/Context;I)F
    .registers 4

    .line 1155
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1157
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static getHardwareType()I
    .registers 1

    .line 656
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->getHardwareType()I

    move-result v0

    return v0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1183
    :goto_2
    :try_start_2
    const-class v2, Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-eq p0, v2, :cond_15

    .line 1185
    :try_start_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 1186
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v1

    :catchall_f
    move-exception v1

    .line 1183
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    goto :goto_2

    .line 1194
    :catchall_15
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_31

    .line 1196
    array-length v3, p2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_31

    aget-object v5, p2, v4

    .line 1197
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1200
    :cond_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access method "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed! "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "widgetslib.Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/res/Resources;)I
    .registers 4

    .line 423
    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 424
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getOsBgPrimary(Landroid/content/Context;)I
    .registers 5

    .line 928
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 929
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 930
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static getOsPlatformBasicColor(Landroid/content/Context;)I
    .registers 3

    .line 692
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getOsType()Ljava/lang/String;
    .registers 3

    .line 444
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 445
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 446
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

    .line 448
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 3

    .line 1250
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1251
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1252
    const-string v2, "ro.tranos.version"

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

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOsVersionCode()I
    .registers 7

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOsVersionCode.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "widgetslib.Utils"

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_80

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_80

    .line 1234
    :cond_32
    :try_start_32
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1235
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OS version($version) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    array-length v0, v1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_61

    .line 1238
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_60} :catch_62

    return v0

    :cond_61
    return v4

    .line 1241
    :catch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOsVersionCode: parse fail.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return v4
.end method

.method public static getPlatformIcon([I)I
    .registers 5

    .line 430
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 432
    aget p0, p0, v2

    return p0

    :cond_12
    const/4 v2, 0x2

    .line 433
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 434
    aget p0, p0, v2

    return p0

    :cond_1e
    const/4 v0, 0x0

    .line 436
    aget p0, p0, v0

    return p0
.end method

.method public static getRandomColor()I
    .registers 1

    .line 982
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_RANDOM_COLORS:[I

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRandomColor([I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor([I)I
    .registers 3

    if-eqz p0, :cond_12

    .line 986
    array-length v0, p0

    if-eqz v0, :cond_12

    .line 989
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 990
    aget p0, p0, v0

    return p0

    .line 987
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Params error."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealScreenHeight(Landroid/content/Context;)I
    .registers 3

    .line 843
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 844
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 845
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 846
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getRealScreenWidth(Landroid/content/Context;)I
    .registers 3

    .line 835
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 836
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 837
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 838
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 600
    invoke-static {p0, p1}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 3

    .line 850
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 851
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 852
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 853
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 3

    .line 857
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 858
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 859
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 860
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 4

    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 877
    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "status_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 878
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 652
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 1

    .line 608
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 1

    .line 628
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isActivityEmbedded(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 734
    :try_start_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    .line 735
    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :catch_10
    move-exception p0

    goto :goto_3e

    .line 736
    :cond_12
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_3d

    .line 737
    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 738
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2c

    .line 739
    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 741
    :cond_2c
    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_3c} :catch_10

    return p0

    :cond_3d
    return v0

    .line 749
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isAfterOS14()Z
    .registers 7

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAfterOS14.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "widgetslib.Utils"

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_8f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_8f

    .line 1316
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1317
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OS version($version) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    array-length v0, v1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_70

    .line 1321
    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6a} :catch_71

    const/16 v1, 0xe

    if-lt v0, v1, :cond_70

    const/4 v0, 0x1

    return v0

    :cond_70
    return v4

    .line 1330
    :catch_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAfterOS14: parse fail.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return v4
.end method

.method public static isAfterOS1501()Z
    .registers 8

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAfterOS15.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "widgetslib.Utils"

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_b6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_b6

    .line 1286
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1287
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1288
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OS version($version) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    array-length v0, v1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_97

    const/4 v0, 0x1

    .line 1291
    aget-object v6, v1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xf

    if-nez v6, :cond_8a

    .line 1292
    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v7, :cond_89

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_89

    return v0

    :cond_89
    return v4

    .line 1294
    :cond_8a
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_94} :catch_98

    if-lt v1, v7, :cond_97

    return v0

    :cond_97
    return v4

    .line 1304
    :catch_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAfterOS15.0.1: parse fail.version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    return v4
.end method

.method public static isBoldTextAdjustment(Landroid/content/Context;)Z
    .registers 1

    .line 664
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isBoldTextAdjustment(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .registers 1

    .line 668
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceSupportFold(Landroid/content/Context;)Z
    .registers 2

    .line 728
    invoke-static {p0}, Landroidx/window/embedding/SplitController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/SplitController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitController;->getSplitSupportStatus()Landroidx/window/embedding/SplitController$SplitSupportStatus;

    move-result-object p0

    sget-object v0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_AVAILABLE:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isFold()Z
    .registers 2

    .line 937
    const-string v0, "ro.os_foldable_screen_support"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFoldInnerScreen(Landroid/content/Context;)Z
    .registers 4

    .line 764
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 765
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 766
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 767
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    .line 769
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v0

    .line 770
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isDeviceSupportFold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_32

    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static isFoldInnerScreenExpendState(Landroid/content/Context;)Z
    .registers 2

    .line 760
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isFoldInnerScreenSplitState(Landroid/content/Context;)Z
    .registers 2

    .line 756
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isGestureNavigationBarOn(Landroid/content/Context;)Z
    .registers 3

    .line 411
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

    .line 887
    :try_start_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    .line 888
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :catch_c
    move-exception p0

    goto :goto_31

    .line 889
    :cond_e
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_30

    .line 890
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 891
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_23

    .line 892
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    .line 894
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

    .line 902
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isInternalPhoneType()Z
    .registers 1

    .line 924
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .registers 3

    .line 774
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 775
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 776
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 777
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 779
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static isLargerUpDownMultiWindowMode(Landroid/content/Context;)Z
    .registers 6

    .line 914
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 915
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 916
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 917
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 918
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v3

    .line 919
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLargerUpDownMultiWindowMode isUpDownMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 920
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4b

    if-eqz v0, :cond_4b

    return v2

    :cond_4b
    return v3
.end method

.method public static isOLED()Z
    .registers 1

    .line 644
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isOLED()Z

    move-result v0

    return v0
.end method

.method public static isRefsPadValue(Landroid/content/Context;)Z
    .registers 2

    .line 784
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$bool;->os_flag_refs_pad_value:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isRtl()Z
    .registers 1

    .line 632
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtl()Z

    move-result v0

    return v0
.end method

.method public static isRtlDigit()Z
    .registers 1

    .line 636
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtlDigit()Z

    move-result v0

    return v0
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .registers 2

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenPortrait(Landroid/content/Context;)Z
    .registers 2

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isScreenPortrait(Landroid/view/Window;)Z
    .registers 1

    .line 1036
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isSecondHome(Landroid/content/Context;)Z
    .registers 4

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecondHome: OS_FOLD_FLIP_SCREEN_SUPPORT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetslib.Utils"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    return v2

    .line 800
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    .line 803
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2c

    return v2

    .line 806
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_3a

    const/4 v2, 0x1

    .line 807
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSecondHome: secondHome = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isTalkBackMode(Landroid/content/Context;)Z
    .registers 2

    .line 1166
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 1167
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isThunderbackWindowMode(Landroid/content/Context;)Z
    .registers 4

    .line 1049
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "isThunderbackWindow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1050
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    .line 1053
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static isTopPositionInMultiWindow(Landroid/content/Context;Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x2

    .line 1117
    new-array v0, v0, [I

    .line 1118
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    .line 1122
    aget v0, v0, p1

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    return p1

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .registers 1

    .line 640
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWindowNearByNavigationInMultiWindow(Landroid/content/Context;Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x2

    .line 1133
    new-array v0, v0, [I

    .line 1134
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1139
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_R:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_29

    .line 1140
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_17

    goto :goto_29

    .line 1143
    :cond_17
    aget p1, v0, v1

    if-nez p1, :cond_29

    .line 1151
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_29

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public static isWindowWidthSW600(Landroid/content/Context;)Z
    .registers 4

    .line 864
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 865
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 866
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 867
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    return v2

    .line 870
    :cond_1d
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x258

    if-le p0, v0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v2
.end method

.method public static isXOSorITEL()Z
    .registers 4

    .line 724
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public static measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I
    .registers 10

    .line 1091
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1093
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1094
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1095
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 1097
    :cond_1a
    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_max_weight:I

    invoke-static {p0, v2}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v2

    .line 1098
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_min_weight:I

    invoke-static {p0, v3}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result p0

    int-to-float v3, v1

    mul-float v4, v2, v3

    float-to-int v4, v4

    mul-float v5, p0, v3

    float-to-int v5, v5

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", minWeight = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", maxAllowedWidth = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", minAllowedWidth = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", widthPixels = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "widgetslib.Utils"

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v4, v1, :cond_6e

    const/4 p0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 1104
    invoke-static {p0, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    sub-float/2addr v3, p0

    float-to-int v4, v3

    .line 1106
    :cond_6e
    invoke-static {p1, v4, v5}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/widget/ListAdapter;II)I

    move-result p0

    .line 1107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "measureAdapterMaxWidth: width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static measureAdapterMaxWidth(Landroid/widget/ListAdapter;II)I
    .registers 12

    const/4 v0, 0x0

    .line 1063
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1064
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1065
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    :goto_11
    if-ge v0, v3, :cond_2f

    .line 1067
    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_1b

    move-object v7, v4

    move v6, v8

    .line 1073
    :cond_1b
    invoke-interface {p0, v0, v7, v4}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1074
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1076
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p1, :cond_29

    return p1

    :cond_29
    if-le v8, v5, :cond_2c

    move v5, v8

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2f
    if-gt v5, p2, :cond_32

    return p2

    :cond_32
    return v5
.end method

.method public static measureAdapterMaxWidthAddShadowWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I
    .registers 4

    .line 1112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 1113
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static measurePopupWidthByAnchor(Landroid/view/View;)I
    .registers 9

    .line 1261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1262
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 1263
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1264
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 1266
    :cond_18
    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_max_weight:I

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v2

    .line 1267
    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_popup_window_width_min_weight:I

    invoke-static {v0, v3}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v3

    int-to-float v1, v1

    mul-float v4, v1, v3

    float-to-int v4, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1270
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 1271
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1272
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxWeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", minWeight = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorWidth = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", popupWidth = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "widgetslib.Utils"

    invoke-static {v1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_popup_menu_inset_left:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v5, p0

    return v5
.end method

.method public static measureTextHeight(Landroid/graphics/Paint;)F
    .registers 1

    .line 660
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->measureTextHeight(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public static overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .registers 5

    .line 558
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/transsion/widgetslib/util/Utils$2;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/widgetslib/util/Utils$2;-><init>(ZZLandroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 2

    .line 682
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

.method public static px2dp(Landroid/content/Context;I)I
    .registers 2

    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setAppTheme(Landroid/content/Context;III)V
    .registers 5

    const/4 v0, 0x1

    .line 224
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/Utils;->setAppTheme(Landroid/content/Context;IIIZ)V

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

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/Utils;->setAppTheme(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZZ)V
    .registers 7

    .line 320
    invoke-static {p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->getAppTheme(III)I

    move-result p1

    .line 321
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 323
    instance-of p1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_35

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 325
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p2

    .line 326
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isOLED()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1f

    .line 328
    sget p3, Lcom/transsion/widgetslib/R$style;->OSThemOled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1f
    if-eqz p2, :cond_35

    .line 332
    sget p2, Lcom/transsion/widgetslib/R$style;->OsCurseSupport:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    if-eqz p4, :cond_2d

    .line 334
    sget p2, Lcom/transsion/widgetslib/R$style;->actionbar_no_force_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 336
    :cond_2d
    invoke-static {p0, p1, p4}, Lcom/transsion/widgetslib/util/Utils;->setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V

    if-eqz p5, :cond_35

    .line 338
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setWindowInset(Landroid/content/Context;)V

    :cond_35
    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;ZI)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->getAppTheme(ZI)I

    move-result p1

    .line 214
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static setBottomWindowFeatures(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    .line 1032
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->setBottomWindowFeatures(Landroid/view/Window;Z)V

    return-void
.end method

.method public static setBottomWindowFeatures(Landroid/view/Window;Z)V
    .registers 6

    .line 994
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 996
    invoke-virtual {p0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 999
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void

    .line 1002
    :cond_18
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1003
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/16 v0, 0x700

    .line 1004
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1009
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1013
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_42

    and-int/lit8 v0, v0, -0x11

    goto :goto_44

    :cond_42
    or-int/lit8 v0, v0, 0x10

    .line 1020
    :goto_44
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1022
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1023
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1025
    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 1026
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    return-void
.end method

.method private static setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V
    .registers 5

    .line 345
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_65

    .line 346
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2e

    if-nez p2, :cond_23

    .line 368
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_28

    .line 370
    :cond_23
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 372
    :goto_28
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    :cond_2e
    if-nez p2, :cond_3f

    .line 360
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_39

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_RTL:I

    goto :goto_3b

    :cond_39
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270:I

    :goto_3b
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_44

    .line 362
    :cond_3f
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 364
    :goto_44
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_270:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    :cond_4a
    if-nez p2, :cond_5b

    .line 352
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_55

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_RTL:I

    goto :goto_57

    :cond_55
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90:I

    :goto_57
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_60

    .line 354
    :cond_5b
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 356
    :goto_60
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_90:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_65
    return-void
.end method

.method public static setDialogWidth(Landroid/app/Dialog;)V
    .registers 5

    .line 496
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 497
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_large_screen_width_weight:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v1

    .line 498
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 499
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 500
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isLargerUpDownMultiWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 501
    :cond_22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_29

    goto :goto_55

    .line 503
    :cond_29
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 504
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 505
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_42

    :cond_3e
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    :goto_42
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 506
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 507
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .line 509
    :cond_4f
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_56

    :goto_55
    return-void

    .line 511
    :cond_56
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 512
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenPortrait(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 513
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenPortrait(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6c

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 514
    :cond_6c
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_73

    goto :goto_83

    .line 520
    :cond_73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_a3

    .line 515
    :cond_83
    :goto_83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x46

    if-gt v1, v3, :cond_a3

    .line 517
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 522
    :cond_a3
    :goto_a3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 528
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    return-void
.end method

.method public static setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V
    .registers 13

    .line 455
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_b2

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 456
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isLargerUpDownMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 457
    :cond_1a
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p4, :cond_34

    .line 460
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/16 p4, 0xa

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_8d

    .line 462
    :cond_34
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p4

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGestureNavigationBarOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "widgetslib.Utils"

    invoke-static {v2, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    if-eqz p4, :cond_72

    .line 465
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset_pad_gesture_on:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset_pad_gesture_on:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    goto :goto_8d

    .line 467
    :cond_72
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_fold_dialog_top_bottom_inset:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 471
    :goto_8d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {v2, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 472
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroid/view/Window;->setGravity(I)V

    .line 474
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {p4, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_e3

    .line 476
    :cond_b2
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isSecondHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 477
    sget p4, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_small:I

    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 478
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 479
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 480
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e3

    :cond_d6
    if-eqz p4, :cond_e0

    .line 483
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_e3

    .line 485
    :cond_e0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    .line 488
    :goto_e3
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    .line 489
    sget-boolean p2, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_SCREEN_SUPPORT:Z

    if-eqz p2, :cond_108

    .line 490
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_108
    return-void
.end method

.method public static setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .registers 10

    if-nez p1, :cond_a

    .line 534
    const-string p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround dialog null return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 538
    sget p3, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 540
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/16 v2, 0x10

    if-ne p3, v0, :cond_68

    .line 541
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 542
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move p3, v2

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_top_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_5e

    :cond_42
    move p3, v2

    .line 544
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_top_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 546
    :goto_5e
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p3, 0x50

    invoke-virtual {p0, p3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_8b

    :cond_68
    move p3, v2

    .line 548
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x14

    move v4, v3

    invoke-static {p0, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, p3}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p0, v4}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 549
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p3, 0x11

    invoke-virtual {p0, p3}, Landroid/view/Window;->setGravity(I)V

    .line 552
    :goto_8b
    sget p0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 553
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V
    .registers 10

    if-nez p1, :cond_a

    .line 577
    const-string p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround window null return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 580
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 581
    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_smooth_corner20:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 583
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v1, :cond_60

    .line 584
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v2

    .line 585
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_5a

    :cond_40
    move v0, v2

    .line 587
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_bottom_margin_with_navigation_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_5a
    const/16 v0, 0x50

    .line 589
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    goto :goto_7d

    :cond_60
    move v0, v2

    .line 591
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    const/16 v0, 0x11

    .line 592
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 595
    :goto_7d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 596
    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;I)V
    .registers 4

    const/4 v0, 0x0

    .line 822
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/Utils;->setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;IZ)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;IZ)V
    .registers 5

    .line 826
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result p0

    if-eqz p3, :cond_e

    .line 828
    sget p3, Lcom/transsion/widgetslib/R$drawable;->os_list_popup_item_selected2:I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_list_popup_item_selected_space:I

    invoke-static {p1, p2, p0, p3, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;IIII)V

    return-void

    .line 830
    :cond_e
    invoke-static {p1, p2, p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;II)V

    return-void
.end method

.method public static setWindowInset(Landroid/content/Context;)V
    .registers 3

    .line 380
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    .line 381
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/util/Utils$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_17
    return-void
.end method

.method public static showSoftInput(Landroid/widget/EditText;)V
    .registers 3

    if-eqz p0, :cond_1b

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1042
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 1043
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1b
    return-void
.end method

.method public static sp2px(I)I
    .registers 1

    .line 687
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->sp2px(I)I

    move-result p0

    return p0
.end method

.method public static transformContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    .line 943
    :try_start_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 944
    check-cast p0, Landroid/app/Activity;

    return-object p0

    :catch_8
    move-exception p0

    goto :goto_25

    .line 945
    :cond_a
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_24

    .line 946
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 947
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1b

    .line 948
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 950
    :cond_1b
    check-cast p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_23} :catch_8

    return-object p0

    :cond_24
    return-object v0

    .line 958
    :goto_25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static userDefaultBrandColor(Landroid/content/Context;)V
    .registers 10

    .line 274
    sget v0, Lcom/transsion/widgetslib/R$style;->OSDefaultColorHIOS:I

    sget v1, Lcom/transsion/widgetslib/R$style;->OSDefaultColorXOS:I

    sget v2, Lcom/transsion/widgetslib/R$style;->OSDefaultColorITELOS:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAppTheme(III)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/widgetslib/util/DynamicColorTool;->adaptDyColor(Landroid/content/Context;ZIIIZ)V

    return-void
.end method

.method public static userDefaultBrandColor(Landroid/content/Context;I)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v3, 0xe

    move-object v0, p0

    move v2, p1

    .line 266
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/DynamicColorTool;->adaptDyColor(Landroid/content/Context;ZIIIZ)V

    return-void
.end method
