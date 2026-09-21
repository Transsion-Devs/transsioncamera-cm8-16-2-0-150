.class public abstract Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;,
        Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INTERFACE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection<",
            "TINTERFACE;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final observer:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient<",
            "TINTERFACE;>.ConnectionObserver;"
        }
    .end annotation
.end field

.field private final serviceInterface:Ljava/lang/String;

.field private final serviceInterfaceCreator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
            "TINTERFACE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
            "TINTERFACE;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceInterfaceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterface:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->componentName:Landroid/content/ComponentName;

    .line 28
    iput-object p4, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterfaceCreator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;

    .line 32
    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_2c

    .line 33
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;

    invoke-direct {p2, p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$1;-><init>(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2c
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    .line 24
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V

    return-void
.end method

.method private final createConnection()Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection<",
            "TINTERFACE;>;"
        }
    .end annotation

    .line 96
    const-string v0, "start bind "

    iget-object v1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterface:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutui.UiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterface:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v4, "context.packageManager.q\u2026IntentServices(intent, 0)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_78

    .line 104
    new-instance v4, Landroid/content/ComponentName;

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 104
    invoke-direct {v4, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    const-string v2, "createConnection : "

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    .line 115
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 116
    iget-object v3, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterfaceCreator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;

    .line 114
    invoke-direct {v1, v2, v3}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V

    .line 118
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_78

    return-object v1

    :cond_78
    return-object v5
.end method

.method public static synthetic setup$default(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 65
    :cond_7
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->setup(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setup"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getInterface()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TINTERFACE;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_2d

    .line 87
    :cond_6
    const-string v2, "start * unbind * "

    iget-object v3, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->serviceInterface:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cutui.UiClient"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->observer:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;

    if-nez v2, :cond_18

    goto :goto_21

    :cond_18
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->observer:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 89
    :goto_21
    iget-object v2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 92
    :goto_2d
    iput-object v1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    return-void
.end method

.method public final setup(Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    if-nez v0, :cond_a

    .line 67
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->createConnection()Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    .line 69
    :cond_a
    iget-object v0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->connection:Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_1d

    .line 70
    :cond_11
    invoke-virtual {v0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;

    invoke-direct {v3, p0, p1}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$ConnectionObserver;-><init>(Lcom/ss/android/ugc/cut_ui/AbsServiceClient;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :goto_1d
    if-nez v0, :cond_25

    if-nez p1, :cond_22

    goto :goto_25

    .line 71
    :cond_22
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_25
    return-void
.end method

.method public final suspendSetup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TINTERFACE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 78
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 79
    new-instance v1, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$suspendSetup$2$1;

    invoke-direct {v1, v0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$suspendSetup$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->setup(Lkotlin/jvm/functions/Function1;)V

    .line 78
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1e

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1e
    return-object p0
.end method
