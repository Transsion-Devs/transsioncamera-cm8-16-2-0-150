.class public abstract Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onTZCaptureCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub;->markVintfStability()V

    .line 42
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 54
    instance-of v1, v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    .line 65
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_58

    if-eq p1, v1, :cond_17

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 94
    :cond_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 101
    invoke-static {p2}, Lvendor/mediatek/hardware/camera/bgservice/IEventCallback$Stub$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Parcel;)V

    move-object v2, p0

    .line 102
    invoke-interface/range {v2 .. v7}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z

    move-result p0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return v1

    .line 73
    :sswitch_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_3f
    move-object v2, p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-interface {v2}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_4b
    move-object v2, p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-interface {v2}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_58
    .sparse-switch
        0xfffffe -> :sswitch_4b
        0xffffff -> :sswitch_3f
        0x5f4e5446 -> :sswitch_3b
    .end sparse-switch
.end method
