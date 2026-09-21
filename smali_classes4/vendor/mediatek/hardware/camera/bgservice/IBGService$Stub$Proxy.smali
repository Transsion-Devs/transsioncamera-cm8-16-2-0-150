.class Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/mediatek/hardware/camera/bgservice/IBGService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->mCachedVersion:I

    .line 114
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 117
    iget-object p0, p0, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public setEventCallback(ILvendor/mediatek/hardware/camera/bgservice/IEventCallback;)I
    .registers 6

    .line 125
    invoke-virtual {p0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    :try_start_c
    sget-object v2, Lvendor/mediatek/hardware/camera/bgservice/IBGService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 132
    iget-object p0, p0, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 134
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEventCallback is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2f

    .line 140
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw p0
.end method
