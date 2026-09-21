.class public abstract Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onTZCapAllDone:I = 0x2

.field static final TRANSACTION_onTZSGetAppUserID:I = 0x4

.field static final TRANSACTION_onTZSGetBatteryLevel:I = 0x3

.field static final TRANSACTION_onTZSGetPackageName:I = 0x1

.field static final TRANSACTION_onTZSGetSystemUserID:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub;->markVintfStability()V

    .line 58
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 70
    instance-of v1, v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 81
    sget-object v0, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_74

    if-eq p1, v1, :cond_4f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_44

    const/4 v0, 0x3

    if-eq p1, v0, :cond_39

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_23

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 137
    :cond_23
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->onTZSGetSystemUserID()I

    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 130
    :cond_2e
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->onTZSGetAppUserID()I

    move-result p0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 123
    :cond_39
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->onTZSGetBatteryLevel()I

    move-result p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 116
    :cond_44
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->onTZCapAllDone()Z

    move-result p0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_59

    .line 109
    :cond_4f
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->onTZSGetPackageName()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_59
    return v1

    .line 89
    :sswitch_5a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 94
    :sswitch_5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 100
    :sswitch_69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-interface {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_data_74
    .sparse-switch
        0xfffffe -> :sswitch_69
        0xffffff -> :sswitch_5e
        0x5f4e5446 -> :sswitch_5a
    .end sparse-switch
.end method
