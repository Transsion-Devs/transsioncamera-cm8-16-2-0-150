.class public abstract Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub;->markVintfStability()V

    .line 44
    sget-object v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    sget-object v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 56
    instance-of v1, v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16

    .line 67
    sget-object v0, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_23

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-interface {p0}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-interface {p0}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_33
    if-eq p1, v2, :cond_3a

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 90
    :cond_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 101
    invoke-static {p2}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Parcel;)V

    move-object v3, p0

    .line 102
    invoke-interface/range {v3 .. v10}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback;->onCompleted(IIIJII)Z

    move-result p0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return v2
.end method
