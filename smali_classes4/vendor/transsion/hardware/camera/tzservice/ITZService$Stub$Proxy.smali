.class Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/transsion/hardware/camera/tzservice/ITZService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub;
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

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mCachedVersion:I

    .line 213
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 216
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getOffPeakModeSupportCfg()[I
    .registers 5

    .line 358
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 362
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_29

    .line 371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_29
    move-exception p0

    goto :goto_33

    .line 365
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getOffPeakModeSupportCfg is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_29

    .line 371
    :goto_33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw p0
.end method

.method public setAppIOOperationStart(II)I
    .registers 6

    .line 336
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 340
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 345
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setAppIOOperationStart is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2f

    .line 351
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw p0
.end method

.method public setMappingInfo(JLjava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 313
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 317
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_32

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_32
    move-exception p0

    goto :goto_3c

    .line 323
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setMappingInfo is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_32

    .line 329
    :goto_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw p0
.end method

.method public setPhoneWorkingState(II)I
    .registers 6

    .line 291
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 300
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setPhoneWorkingState is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2f

    .line 306
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw p0
.end method

.method public setTZCapConfig(JII)I
    .registers 8

    .line 268
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_32

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_32
    move-exception p0

    goto :goto_3c

    .line 278
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setTZCapConfig is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_32

    .line 284
    :goto_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw p0
.end method

.method public setTZCaptureCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureCallback;)I
    .registers 6

    .line 224
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 231
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 233
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setTZCaptureCallback is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2f

    .line 239
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw p0
.end method

.method public setTZCaptureJpegCallback(ILvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback;)I
    .registers 6

    .line 246
    invoke-virtual {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/camera/bgservice/IBGService$Stub$Proxy$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 250
    :try_start_c
    sget-object v2, Lvendor/transsion/hardware/camera/tzservice/ITZService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 253
    iget-object p0, p0, Lvendor/transsion/hardware/camera/tzservice/ITZService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2f

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 255
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setTZCaptureJpegCallback is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_2f

    .line 261
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw p0
.end method
