.class public final Lcom/example/dispatcher_client/FlowPreDispatcher$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/dispatcher_client/FlowPreDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/example/dispatcher_client/FlowPreDispatcher$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInterceptFlowParams(Landroid/os/Bundle;)Z
    .registers 4

    if-eqz p1, :cond_9

    .line 278
    const-string p0, "flow_params"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 279
    :goto_a
    const-string v0, "preProcess"

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_15

    :cond_14
    move p0, v1

    :goto_15
    if-eqz p1, :cond_1c

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1d

    :cond_1c
    move p1, v1

    :goto_1d
    if-nez p0, :cond_23

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method
