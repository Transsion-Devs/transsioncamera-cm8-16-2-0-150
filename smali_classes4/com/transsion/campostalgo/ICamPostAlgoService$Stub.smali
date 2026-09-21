.class public abstract Lcom/transsion/campostalgo/ICamPostAlgoService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/campostalgo/ICamPostAlgoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/campostalgo/ICamPostAlgoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ICamPostAlgoService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/campostalgo/ICamPostAlgoService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "com.transsion.campostalgo.ICamPostAlgoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 66
    instance-of v1, v0, Lcom/transsion/campostalgo/ICamPostAlgoService;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Lcom/transsion/campostalgo/ICamPostAlgoService;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Lcom/transsion/campostalgo/ICamPostAlgoService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/campostalgo/ICamPostAlgoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
