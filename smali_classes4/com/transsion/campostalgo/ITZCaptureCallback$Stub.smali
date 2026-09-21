.class public abstract Lcom/transsion/campostalgo/ITZCaptureCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/campostalgo/ITZCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/campostalgo/ITZCaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/campostalgo/ITZCaptureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onTZCapAllDone:I = 0x3

.field static final TRANSACTION_onTZCaptureCompleted:I = 0x1

.field static final TRANSACTION_onTZSGetBatteryLevel:I = 0x4

.field static final TRANSACTION_onTZSGetPackageName:I = 0x2

.field static final TRANSACTION_onTZSGetUserID:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.transsion.campostalgo.ITZCaptureCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/campostalgo/ITZCaptureCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "com.transsion.campostalgo.ITZCaptureCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 53
    instance-of v1, v0, Lcom/transsion/campostalgo/ITZCaptureCallback;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Lcom/transsion/campostalgo/ITZCaptureCallback;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Lcom/transsion/campostalgo/ITZCaptureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/campostalgo/ITZCaptureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.transsion.campostalgo.ITZCaptureCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_72

    if-eq p1, v1, :cond_51

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    const/4 v0, 0x5

    if-eq p1, v0, :cond_25

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 116
    :cond_25
    invoke-interface {p0}, Lcom/transsion/campostalgo/ITZCaptureCallback;->onTZSGetUserID()I

    move-result p0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 109
    :cond_30
    invoke-interface {p0}, Lcom/transsion/campostalgo/ITZCaptureCallback;->onTZSGetBatteryLevel()I

    move-result p0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 102
    :cond_3b
    invoke-interface {p0}, Lcom/transsion/campostalgo/ITZCaptureCallback;->onTZCapAllDone()Z

    move-result p0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 95
    :cond_46
    invoke-interface {p0}, Lcom/transsion/campostalgo/ITZCaptureCallback;->onTZSGetPackageName()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_71

    .line 81
    :cond_51
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    # invokes: Lcom/transsion/campostalgo/ITZCaptureCallback$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    invoke-static {p2, p1}, Lcom/transsion/campostalgo/ITZCaptureCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 88
    invoke-interface/range {v2 .. v7}, Lcom/transsion/campostalgo/ITZCaptureCallback;->onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z

    move-result p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_71
    return v1

    .line 72
    :cond_72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
