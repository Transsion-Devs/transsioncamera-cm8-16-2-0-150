.class public abstract Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/view/ITranInputMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.view.ITranInputMonitor"

.field static final TRANSACTION_dispose:I = 0x1

.field static final TRANSACTION_pilferPointers:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 42
    instance-of v1, v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    return-object v0

    .line 45
    :cond_13
    new-instance v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
    .registers 1

    .line 150
    sget-object v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/view/ITranInputMonitor;)Z
    .registers 2

    .line 140
    sget-object v0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 144
    sput-object p0, Lcom/transsion/hubsdk/api/view/ITranInputMonitor$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/view/ITranInputMonitor;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 141
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 54
    const-string v0, "com.transsion.hubsdk.api.view.ITranInputMonitor"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 58
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 70
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;->pilferPointers()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/view/ITranInputMonitor;->dispose()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
