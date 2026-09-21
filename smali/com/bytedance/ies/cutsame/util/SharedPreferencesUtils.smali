.class public final Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILE_NAME:Ljava/lang/String;

.field public static final FILL_ORI_KEY:Ljava/lang/String; = "fill_ori_key"

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;

.field public static final ORDER_ID_KEY:Ljava/lang/String; = "order_id_key"

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;

    .line 7
    const-string v0, "cutsame_debug_data"

    sput-object v0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getStringData$default(Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 20
    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_f

    const-string p0, "sharedPreferences"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_f
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, ""

    :cond_17
    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->FILE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_1b

    .line 12
    const-string p0, "sharedPreferences"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1b
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "sharedPreferences.edit()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final saveStringData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    const-string v1, "editor"

    if-nez p0, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_15
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    sget-object p0, Lcom/bytedance/ies/cutsame/util/SharedPreferencesUtils;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez p0, :cond_20

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_21

    :cond_20
    move-object v0, p0

    :goto_21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
