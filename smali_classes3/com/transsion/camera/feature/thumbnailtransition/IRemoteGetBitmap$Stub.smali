.class public abstract Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getBitMap:I = 0x1

.field static final TRANSACTION_hasNewBitmap:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.transsion.camera.feature.thumbnailtransition.IRemoteGetBitmap"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.transsion.camera.feature.thumbnailtransition.IRemoteGetBitmap"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 43
    instance-of v1, v0, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 55
    const-string v0, "com.transsion.camera.feature.thumbnailtransition.IRemoteGetBitmap"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_2b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 73
    :cond_20
    invoke-interface {p0}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;->hasNewBitmap()Z

    move-result p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 66
    :cond_2b
    invoke-interface {p0}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-static {p3, p0, v1}, Lcom/transsion/camera/feature/thumbnailtransition/IRemoteGetBitmap$_Parcel;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_35
    return v1
.end method
