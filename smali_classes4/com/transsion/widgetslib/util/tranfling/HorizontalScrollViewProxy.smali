.class public Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollViewProxy"


# direct methods
.method public static synthetic $r8$lambda$D1iO661cPQ5Kuefi9OKaeEKsAuI()Ljava/lang/reflect/Field;
    .registers 2

    .line 18
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mScroller"

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranFlingType(Landroid/widget/HorizontalScrollView;I)V
    .registers 3

    .line 22
    :try_start_0
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/HorizontalScrollViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/TranFlingHelper;->Method_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HorizontalScrollViewProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
