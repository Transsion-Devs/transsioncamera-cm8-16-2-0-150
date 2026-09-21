.class public final Lcom/volcengine/ckbase/singleton/AppSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ckbase/singleton/AppSingleton;

.field public static volatile instance:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ckbase/singleton/AppSingleton;

    invoke-direct {v0}, Lcom/volcengine/ckbase/singleton/AppSingleton;-><init>()V

    sput-object v0, Lcom/volcengine/ckbase/singleton/AppSingleton;->INSTANCE:Lcom/volcengine/ckbase/singleton/AppSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindInstance(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/volcengine/ckbase/singleton/AppSingleton;->setInstance(Landroid/content/Context;)V

    return-void
.end method

.method public final getInstance()Landroid/content/Context;
    .registers 1

    .line 14
    sget-object p0, Lcom/volcengine/ckbase/singleton/AppSingleton;->instance:Landroid/content/Context;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "instance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setInstance(Landroid/content/Context;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sput-object p1, Lcom/volcengine/ckbase/singleton/AppSingleton;->instance:Landroid/content/Context;

    return-void
.end method
