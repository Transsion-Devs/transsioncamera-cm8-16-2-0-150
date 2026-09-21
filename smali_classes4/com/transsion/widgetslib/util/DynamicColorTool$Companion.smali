.class public final Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/DynamicColorTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;-><init>()V

    return-void
.end method

.method private final assertDyTypeValid(I)Z
    .registers 2

    const/4 p0, -0x1

    if-le p1, p0, :cond_f

    .line 211
    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_STYLE_MAP$cp()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-ge p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private final assertXosDialogDyTypeValid(I)Z
    .registers 2

    const/4 p0, -0x1

    if-le p1, p0, :cond_c

    .line 208
    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_XOS_DIALOG_STYLE:[I
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_XOS_DIALOG_STYLE$cp()[I

    move-result-object p0

    array-length p0, p0

    if-ge p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private final getBrandColorIndexFromJson(Landroid/content/Context;)I
    .registers 9

    .line 65
    const-string p0, "android.theme.customization.preset_name"

    const-string v0, "android.theme.customization.trans_color_type"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "trans_dynamic_applied_json"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adaptDyColor transDynamicAppliedJsonStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicColorTool"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_2c

    return v3

    .line 71
    :cond_2c
    :try_start_2c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 73
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 75
    const-string v0, "colorSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PRESET_COLOR"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v0, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 76
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 77
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_STYLE_MAP$cp()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 80
    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_STYLE_MAP$cp()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adaptDyColor: dyType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_90} :catch_91

    return p0

    :catch_91
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    :cond_9b
    return v3
.end method

.method private final getCurrentOSRequireDy(I)Z
    .registers 4

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adaptDyColor getRequireDy: osType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DynamicColorTool"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-boolean p0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_27

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_27

    .line 96
    const-string p0, "adaptDyColor getRequireDy: nonDyOS = HIOS"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 99
    :cond_27
    sget-boolean p0, Lcom/transsion/widgetslib/util/Utils;->IS_XOS:Z

    if-eqz p0, :cond_35

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_35

    .line 100
    const-string p0, "adaptDyColor getRequireDy: nonDyOS = XOS"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 103
    :cond_35
    sget-boolean p0, Lcom/transsion/widgetslib/util/Utils;->IS_ITEL:Z

    if-eqz p0, :cond_43

    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_43

    .line 104
    const-string p0, "adaptDyColor getRequireDy: nonDyOS = ITEL"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 107
    :cond_43
    const-string p0, "adaptDyColor getRequireDy: nonDyOS = NONE"

    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final isDyOpen(Landroid/content/Context;)Z
    .registers 4

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 217
    const-string p1, "dynamic_color_state"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDyOpen: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DynamicColorTool"

    invoke-static {v1, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_24

    return v0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final adaptDyColor(Landroid/content/Context;ZIIIZ)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_c

    .line 133
    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_TRAN_DEVICE:Z

    if-eqz v1, :cond_16

    .line 134
    :cond_c
    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_TRAN_DEVICE:Z

    if-eqz v1, :cond_14

    sget v1, Lcom/transsion/widgetslib/util/Utils;->MAIN_OS_VERSION_CODE:I

    if-lt v1, p4, :cond_16

    :cond_14
    if-eqz p6, :cond_1e

    .line 137
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    .line 141
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p6, Lcom/transsion/widgetslib/R$bool;->os_custom_theme:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    .line 144
    const-string v1, "os_common_control_current_color"

    .line 142
    invoke-static {p6, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p6

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$bool;->os_custom_platform_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osCustomTheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " gpMarket = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " osCustomPlatformColor = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " transCurrentColor = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packageName = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DynamicColorTool"

    invoke-static {v2, p2}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_86

    if-eqz v1, :cond_86

    if-ne p6, v0, :cond_86

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$style;->OSThemePackage:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    .line 161
    :cond_86
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->isDyOpen(Landroid/content/Context;)Z

    move-result p2

    .line 164
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "adaptDyColor: dyOpen = "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, " DY_DEFAULT_STYLE_MAP = "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_STYLE_MAP$cp()Ljava/util/HashMap;

    move-result-object p6

    invoke-virtual {p6}, Ljava/util/HashMap;->size()I

    move-result p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 162
    invoke-static {v2, p4}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_b8

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void

    .line 170
    :cond_b8
    invoke-direct {p0, p5}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->getCurrentOSRequireDy(I)Z

    move-result p2

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "adaptDyColor: requireDy = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_d3

    goto :goto_fe

    .line 175
    :cond_d3
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->getBrandColorIndexFromJson(Landroid/content/Context;)I

    move-result p2

    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "adaptDyColor: brandColorIndexFromJson "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->assertDyTypeValid(I)Z

    move-result p0

    if-eqz p0, :cond_fe

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE:[I
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_STYLE$cp()[I

    move-result-object p1

    aget p1, p1, p2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_fe
    :goto_fe
    return-void
.end method

.method public final getXosDialogDyStyle(Landroid/content/Context;)I
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->isDyOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 192
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->getBrandColorIndexFromJson(Landroid/content/Context;)I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, -0x1

    .line 194
    :goto_11
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->assertXosDialogDyTypeValid(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 196
    # getter for: Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_XOS_DIALOG_STYLE:[I
    invoke-static {}, Lcom/transsion/widgetslib/util/DynamicColorTool;->access$getDY_DEFAULT_XOS_DIALOG_STYLE$cp()[I

    move-result-object p0

    aget p0, p0, p1

    goto :goto_20

    .line 198
    :cond_1e
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_xos_dy:I

    .line 202
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adaptDyColor getDialogXosDiffStyle: dyOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " dyType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dyStyle = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    const-string v0, "DynamicColorTool"

    invoke-static {v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
