.class public abstract Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

.field static final TRANSACTION_onAsyncCallback:I = 0x1

.field static final TRANSACTION_onBundleAsyncCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_4
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;
    .registers 1

    .line 163
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;)Z
    .registers 2

    .line 153
    sget-object v0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 157
    sput-object p0, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 154
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

    .line 52
    const-string v0, "com.transsion.hubsdk.api.resmonitor.ITranResmonitorAsyncCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_31

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 71
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2c

    .line 76
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    .line 81
    :goto_2d
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onBundleAsyncCallback(ILandroid/os/Bundle;)V

    return v1

    .line 61
    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/resmonitor/ITranResmonitorAsyncCallback;->onAsyncCallback(ILjava/lang/String;)V

    return v1
.end method
