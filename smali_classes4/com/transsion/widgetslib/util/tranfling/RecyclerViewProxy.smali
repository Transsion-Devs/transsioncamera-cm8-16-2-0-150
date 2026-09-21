.class public Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final Field_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecyclerViewProxy"


# direct methods
.method public static synthetic $r8$lambda$BDygjbFvsuZL63-fKYdFHQoLV2E()Ljava/lang/reflect/Field;
    .registers 2

    .line 21
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->CLASS_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "mOverScroller"

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$QObr8ul9SNxv4gPkm0Kgs9zOxV4()Ljava/lang/Class;
    .registers 1

    .line 20
    const-string v0, "androidx.recyclerview.widget.RecyclerView$ViewFlinger"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$l15nTSTaQ0OgvJre1-kKpeQIsS0()Ljava/lang/reflect/Field;
    .registers 2

    .line 19
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mViewFlinger"

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->Field_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    .line 20
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->CLASS_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    .line 21
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranFlingType(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 5

    .line 25
    :try_start_0
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->Field_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/transsion/widgetslib/util/tranfling/RecyclerViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 26
    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_37} :catch_38

    :cond_37
    return-void

    :catch_38
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecyclerViewProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
