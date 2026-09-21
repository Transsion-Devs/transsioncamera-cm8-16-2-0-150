.class public abstract Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_setAppIOOperationStart:I = 0x2

.field static final TRANSACTION_setTapsCapConfig:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.transsion.camera.feature.backgroundservice.IBackgroundService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_4
    const-string v0, "com.transsion.camera.feature.backgroundservice.IBackgroundService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 41
    instance-of v1, v0, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;

    return-object v0

    .line 44
    :cond_13
    new-instance v0, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    .line 53
    const-string v0, "com.transsion.camera.feature.backgroundservice.IBackgroundService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_2f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 77
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 80
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;->setAppIOOperationStart(II)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_41

    .line 65
    :cond_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 70
    invoke-interface {p0, v2, v3, p1, p2}, Lcom/transsion/camera/feature/backgroundservice/IBackgroundService;->setTapsCapConfig(JII)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_41
    return v1
.end method
