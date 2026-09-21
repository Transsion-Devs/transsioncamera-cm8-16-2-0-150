.class Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/app/ITranActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/transsion/hubsdk/api/app/ITranActivityController;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 6

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 258
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 259
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_42

    .line 261
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    if-eqz p0, :cond_3b

    const/4 v3, 0x1

    .line 265
    :cond_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 265
    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw p0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 7

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :catchall_18
    move-exception p0

    goto :goto_4f

    .line 229
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    :goto_1d
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 233
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 234
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_18

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 236
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_18

    if-eqz p0, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    .line 240
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 240
    :goto_4f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw p0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 19

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 281
    :try_start_8
    const-string v0, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v8, p5

    .line 286
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v10, p7

    .line 287
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_49

    .line 289
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 290
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v3 .. v10}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result p0
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_46

    .line 296
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 292
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_46

    if-eqz p0, :cond_53

    const/4 v3, 0x1

    .line 296
    :cond_53
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v3

    .line 296
    :goto_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    throw p0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_37

    .line 315
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 316
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 322
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_35
    move-exception p0

    goto :goto_3f

    .line 318
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_35

    goto :goto_2e

    .line 322
    :goto_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw p0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 338
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_37

    .line 343
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 344
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_35

    .line 350
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_35
    move-exception p0

    goto :goto_3f

    .line 346
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_35

    goto :goto_2e

    .line 350
    :goto_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 211
    const-string p0, "com.transsion.hubsdk.api.app.ITranActivityController"

    return-object p0
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .registers 6

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    :try_start_8
    const-string v2, "com.transsion.hubsdk.api.app.ITranActivityController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 369
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 370
    invoke-static {}, Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;->getDefaultImpl()Lcom/transsion/hubsdk/api/app/ITranActivityController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/app/ITranActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 376
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 372
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2f

    goto :goto_28

    .line 376
    :goto_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw p0
.end method
