.class public final Lcom/gallery20/base/base_app/BaseSdkKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSdk"

.field private static _app:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final activities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final activityLifecycleCallbacks:Lcom/gallery20/base/base_app/BaseSdkKt$activityLifecycleCallbacks$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->activities:Ljava/util/WeakHashMap;

    .line 17
    new-instance v0, Lcom/gallery20/base/base_app/BaseSdkKt$activityLifecycleCallbacks$1;

    invoke-direct {v0}, Lcom/gallery20/base/base_app/BaseSdkKt$activityLifecycleCallbacks$1;-><init>()V

    sput-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->activityLifecycleCallbacks:Lcom/gallery20/base/base_app/BaseSdkKt$activityLifecycleCallbacks$1;

    return-void
.end method

.method public static final synthetic access$getActivities$p()Ljava/util/WeakHashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->activities:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static final getApp()Landroid/content/Context;
    .registers 1

    .line 54
    sget-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->_app:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "_app"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    return-object v0
.end method

.method public static final getResContext()Landroid/content/Context;
    .registers 1

    .line 57
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final getTopActivity()Landroid/app/Activity;
    .registers 7

    .line 15
    sget-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->activities:Ljava/util/WeakHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    move-object v1, v2

    goto :goto_42

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_42

    :cond_1e
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3c

    move-object v1, v4

    move-object v3, v5

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_27

    :goto_42
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_4d
    return-object v2
.end method

.method public static final initBaseSdk(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_1b

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string p0, "getApplicationContext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1b
    sput-object v0, Lcom/gallery20/base/base_app/BaseSdkKt;->_app:Landroid/content/Context;

    if-nez v0, :cond_25

    .line 44
    const-string p0, "_app"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    check-cast v1, Landroid/app/Application;

    .line 45
    sget-object p0, Lcom/gallery20/base/base_app/BaseSdkKt;->activityLifecycleCallbacks:Lcom/gallery20/base/base_app/BaseSdkKt$activityLifecycleCallbacks$1;

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
