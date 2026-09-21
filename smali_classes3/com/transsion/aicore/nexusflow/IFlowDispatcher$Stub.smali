.class public abstract Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/IFlowDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/nexusflow/IFlowDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/aicore/nexusflow/IFlowDispatcher;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.transsion.aicore.nexusflow.IFlowDispatcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    instance-of v1, v0, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
