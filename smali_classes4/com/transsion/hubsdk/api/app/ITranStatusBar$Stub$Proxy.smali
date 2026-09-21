.class Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranStatusBar;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 277
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    .line 282
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 283
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 289
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3a

    .line 286
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_34

    goto :goto_2d

    .line 289
    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw p0
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .registers 7

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 322
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 323
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customGesturesEnable(Ljava/lang/String;Z)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 329
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 326
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 329
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw p0
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    .line 261
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 262
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 268
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3a

    .line 265
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_34

    goto :goto_2d

    .line 268
    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw p0
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .registers 7

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 219
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 220
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customNotificationStyle(Ljava/lang/String;Z)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 226
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 223
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 226
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw p0
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .registers 7

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 302
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 303
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->customPanelEnable(Ljava/lang/String;Z)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    .line 309
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 306
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_2a

    .line 309
    :goto_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw p0
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 379
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_37

    .line 384
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 385
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 391
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    goto :goto_3b

    .line 388
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_35

    goto :goto_2e

    .line 391
    :goto_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw p0
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 357
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 363
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 364
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_38

    .line 370
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    goto :goto_3e

    .line 367
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_38

    goto :goto_31

    .line 370
    :goto_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 208
    const-string p0, "com.transsion.hubsdk.api.app.ITranStatusBar"

    return-object p0
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .registers 6

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 338
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_30

    .line 341
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 342
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->onDestoryCallback(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 348
    :goto_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_34

    .line 345
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2e

    goto :goto_27

    .line 348
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    throw p0
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 235
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranStatusBar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    .line 240
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 241
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranStatusBar$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranStatusBar;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranStatusBar;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 247
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p0

    goto :goto_3a

    .line 244
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_34

    goto :goto_2d

    .line 247
    :goto_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    throw p0
.end method
