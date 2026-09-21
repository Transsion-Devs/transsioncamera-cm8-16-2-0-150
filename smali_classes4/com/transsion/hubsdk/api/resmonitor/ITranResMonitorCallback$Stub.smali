.class public abstract Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

.field static final TRANSACTION_onEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_4
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 39
    instance-of v1, v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    if-eqz v1, :cond_13

    .line 40
    check-cast v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object v0

    .line 42
    :cond_13
    new-instance v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;
    .registers 1

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;)Z
    .registers 2

    .line 113
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 117
    sput-object p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 114
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

    .line 51
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResMonitorCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 55
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 60
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResMonitorCallback;->onEvent(ILjava/lang/String;)V

    return v1
.end method
