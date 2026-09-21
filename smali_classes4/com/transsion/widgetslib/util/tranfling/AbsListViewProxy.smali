.class public Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;
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

.field public static final Method_initFlingRunnable:Lcom/transsion/widgetslib/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/util/Singleton<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AbsListViewProxy"


# direct methods
.method public static synthetic $r8$lambda$4__Ah7C1uWWgdtLX-rYJW4jRRx0()Ljava/lang/reflect/Field;
    .registers 2

    .line 20
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->CLASS_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "mScroller"

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$7Zf22cVQrBvcXflfmtgDPsip0a4()Ljava/lang/reflect/Method;
    .registers 3

    .line 21
    const-string v0, "initFlingRunnable"

    const/4 v1, 0x0

    const-class v2, Landroid/widget/AbsListView;

    invoke-static {v2, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$V0DCGwzV-iRBjp7--UHLEhA6O8c()Ljava/lang/Class;
    .registers 1

    .line 19
    const-string v0, "android.widget.AbsListView$FlingRunnable"

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$d7Q41fxbVd92XOV0bfK6A2FA_wY()Ljava/lang/reflect/Field;
    .registers 2

    .line 18
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mFlingRunnable"

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Field_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    .line 19
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->CLASS_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    .line 20
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    .line 21
    new-instance v0, Lcom/transsion/widgetslib/util/Singleton;

    new-instance v1, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/Singleton;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Method_initFlingRunnable:Lcom/transsion/widgetslib/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranFlingType(Landroid/widget/AbsListView;I)V
    .registers 6

    .line 24
    :try_start_0
    sget-object v0, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Method_initFlingRunnable:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Field_ViewFlinger:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_49

    sget-object v2, Lcom/transsion/widgetslib/util/tranfling/AbsListViewProxy;->Field_OverScroller:Lcom/transsion/widgetslib/util/Singleton;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 25
    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/Singleton;->get()Ljava/lang/Object;

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
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_49} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_49} :catch_4a

    :cond_49
    return-void

    :catch_4a
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

    const-string p1, "AbsListViewProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
