.class public final Lcom/transsion/widgetslib/util/DynamicColorTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;

.field public static final DYNAMIC_COLOR_STATE_KEY:Ljava/lang/String; = "dynamic_color_state"

.field private static final DY_DEFAULT_STYLE:[I

.field private static final DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DY_DEFAULT_XOS_DIALOG_STYLE:[I

.field public static final NON_DY_HIOS:I = 0x1

.field public static final NON_DY_ITEL:I = 0x4

.field public static final NON_DY_NON:I = 0x0

.field public static final NON_DY_XOS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "DynamicColorTool"

.field private static final TRANS_CURRENT_COLOR_DY:I = 0x0

.field private static final TRANS_CURRENT_COLOR_KEY:Ljava/lang/String; = "os_common_control_current_color"

.field private static final TRANS_CURRENT_COLOR_THEME:I = 0x1

.field private static final TRANS_DYNAMIC_APPLIED_JSON_KEY:Ljava/lang/String; = "trans_dynamic_applied_json"

.field private static final TRANS_DYNAMIC_APPLIED_PRESENT_COLOR_TYPE_KEY:Ljava/lang/String; = "android.theme.customization.preset_name"

.field private static final TRANS_DYNAMIC_APPLIED_TYPE_KEY:Ljava/lang/String; = "android.theme.customization.trans_color_type"

.field private static final TRANS_DYNAMIC_PRESET_COLOR_KEYWORD:Ljava/lang/String; = "PRESET_COLOR"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->Companion:Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;

    .line 40
    sget v1, Lcom/transsion/widgetslib/R$style;->OSBrandBlueDy:I

    .line 41
    sget v2, Lcom/transsion/widgetslib/R$style;->OSBrandGreenDy:I

    .line 42
    sget v3, Lcom/transsion/widgetslib/R$style;->OSTrendyDy:I

    .line 43
    sget v4, Lcom/transsion/widgetslib/R$style;->OSElegantDy:I

    .line 44
    sget v5, Lcom/transsion/widgetslib/R$style;->OSPovaDy:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    .line 39
    sput-object v1, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE:[I

    .line 48
    sget v1, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Blue_dy:I

    .line 49
    sget v2, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Green_dy:I

    .line 50
    sget v3, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Trendy_dy:I

    .line 51
    sget v4, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Elegant_dy:I

    .line 52
    sget v5, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base_Pova_dy:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    .line 47
    sput-object v1, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_XOS_DIALOG_STYLE:[I

    const/4 v1, 0x0

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_brand_green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_trendy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_elegant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "preset_pova"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDY_DEFAULT_STYLE$cp()[I
    .registers 1

    .line 19
    sget-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE:[I

    return-object v0
.end method

.method public static final synthetic access$getDY_DEFAULT_STYLE_MAP$cp()Ljava/util/HashMap;
    .registers 1

    .line 19
    sget-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_STYLE_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getDY_DEFAULT_XOS_DIALOG_STYLE$cp()[I
    .registers 1

    .line 19
    sget-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->DY_DEFAULT_XOS_DIALOG_STYLE:[I

    return-object v0
.end method

.method public static final adaptDyColor(Landroid/content/Context;ZIIIZ)V
    .registers 13

    sget-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->Companion:Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->adaptDyColor(Landroid/content/Context;ZIIIZ)V

    return-void
.end method

.method public static final getXosDialogDyStyle(Landroid/content/Context;)I
    .registers 2

    sget-object v0, Lcom/transsion/widgetslib/util/DynamicColorTool;->Companion:Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/util/DynamicColorTool$Companion;->getXosDialogDyStyle(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
