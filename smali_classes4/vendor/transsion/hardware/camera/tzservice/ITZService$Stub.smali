.class public abstract Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvendor/transsion/hardware/camera/tzservice/ITZService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/transsion/hardware/camera/tzservice/ITZService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/transsion/hardware/camera/tzservice/ITZService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 78
    instance-of v1, v0, Lvendor/transsion/hardware/camera/tzservice/ITZService;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Lvendor/transsion/hardware/camera/tzservice/ITZService;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
