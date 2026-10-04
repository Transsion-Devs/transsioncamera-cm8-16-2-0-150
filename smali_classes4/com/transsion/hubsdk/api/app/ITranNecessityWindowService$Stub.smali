.class public abstract Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

.field static final TRANSACTION_interceptUnknowSourceWindow:I = 0x1

.field static final TRANSACTION_scanUnknowSourceIfNeedWindow:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_4
    const-string v0, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 44
    instance-of v1, v0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    return-object v0

    .line 47
    :cond_13
    new-instance v0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;
    .registers 1

    .line 176
    sget-object v0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;)Z
    .registers 2

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    .line 170
    sput-object p0, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService$Stub$Proxy;->sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 167
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
    .registers 9

    const/4 v0, 0x0

    .line 56
    const-string v1, "com.transsion.hubsdk.api.app.ITranNecessityWindowService"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2d

    const/4 v3, 0x2

    if-eq p1, v3, :cond_17

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_13

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 60
    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 78
    :cond_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29

    .line 81
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 86
    :cond_29
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->scanUnknowSourceIfNeedWindow(Landroid/os/Bundle;)V

    return v2

    .line 65
    :cond_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3f

    .line 68
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 73
    :cond_3f
    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/api/app/ITranNecessityWindowService;->interceptUnknowSourceWindow(Landroid/os/Bundle;)V

    return v2
.end method
