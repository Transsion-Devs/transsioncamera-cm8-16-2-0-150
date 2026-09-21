.class public Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager$TranAospStorageManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospStorageManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDiskClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sVolumeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;",
            "Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager$TranAospStorageManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodName:Ljava/lang/reflect/Method;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTranAospStorageManagerExt:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-string v0, "android.os.storage.StorageManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    .line 29
    const-string v0, "android.os.storage.VolumeInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    .line 30
    const-string v0, "android.os.storage.DiskInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    .line 39
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    invoke-direct {v1, v0}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mTranAospStorageManagerExt:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    return-void
.end method


# virtual methods
.method public findVolumeByUuid(Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    .registers 16

    .line 280
    const-string v0, "getId"

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    .line 282
    :try_start_d
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v3, "findVolumeByUuid"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 284
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 286
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p1, v0, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 287
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v5, "getType"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 288
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v6, "getState"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 289
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v7, "getFsUuid"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 290
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v8, "getPath"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 291
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v9, "getDescription"

    new-array v10, v2, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 292
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v10, "getDisk"

    new-array v11, v2, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 293
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    new-array v11, v2, [Ljava/lang/Class;

    invoke-static {v10, v0, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 294
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    const-string v11, "flags"

    invoke-static {v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 295
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    invoke-virtual {v11, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 296
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tranVolumeInfo object :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :catchall_9b
    move-exception p0

    goto/16 :goto_157

    .line 298
    :cond_9e
    :goto_9e
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 299
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 301
    instance-of v11, p1, Ljava/lang/String;

    if-eqz v11, :cond_ae

    .line 302
    check-cast p1, Ljava/lang/String;

    goto :goto_af

    :cond_ae
    move-object p1, v1

    .line 304
    :goto_af
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 305
    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c3

    .line 307
    instance-of v11, v4, Ljava/lang/Integer;

    if-eqz v11, :cond_c3

    .line 308
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c4

    :cond_c3
    move v4, v2

    .line 310
    :goto_c4
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 311
    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d8

    .line 313
    instance-of v11, v5, Ljava/lang/Integer;

    if-eqz v11, :cond_d8

    .line 314
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_d9

    :cond_d8
    move v5, v2

    .line 316
    :goto_d9
    invoke-virtual {v6, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 317
    invoke-virtual {v6, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e9

    .line 319
    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_e9

    .line 320
    check-cast v6, Ljava/lang/String;

    goto :goto_ea

    :cond_e9
    move-object v6, v1

    .line 322
    :goto_ea
    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 323
    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_fa

    .line 325
    instance-of v11, v7, Ljava/io/File;

    if-eqz v11, :cond_fa

    .line 326
    check-cast v7, Ljava/io/File;

    goto :goto_fb

    :cond_fa
    move-object v7, v1

    .line 328
    :goto_fb
    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 329
    invoke-virtual {v8, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10b

    .line 331
    instance-of v11, v8, Ljava/lang/String;

    if-eqz v11, :cond_10b

    .line 332
    check-cast v8, Ljava/lang/String;

    goto :goto_10c

    :cond_10b
    move-object v8, v1

    .line 334
    :goto_10c
    invoke-virtual {v9, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 335
    invoke-virtual {v9, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 336
    new-instance v9, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    if-eqz v7, :cond_11c

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_11d

    :cond_11c
    move-object v7, v1

    :goto_11d
    invoke-direct {v9, p1, v4, v6, v7}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v9, v5}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setState(I)V

    .line 338
    invoke-virtual {v9, v8}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDescription(Ljava/lang/String;)V

    if-eqz p0, :cond_152

    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 344
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_138

    .line 345
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_138

    .line 346
    check-cast p1, Ljava/lang/String;

    goto :goto_139

    :cond_138
    move-object p1, v1

    .line 348
    :goto_139
    invoke-virtual {v10, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 349
    invoke-virtual {v10, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_14c

    .line 350
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_14c

    .line 351
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 353
    :cond_14c
    new-instance p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    invoke-direct {p0, p1, v2}, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_153

    :cond_152
    move-object p0, v1

    .line 355
    :goto_153
    invoke-virtual {v9, p0}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDiskInfo(Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;)V
    :try_end_156
    .catchall {:try_start_d .. :try_end_156} :catchall_9b

    return-object v9

    .line 358
    :goto_157
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findVolumeByUuid fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getBestVolumeDescription(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)Ljava/lang/String;
    .registers 5

    .line 264
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 266
    :try_start_a
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v1, "getBestVolumeDescription"

    const-class v2, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 268
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 269
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_44

    .line 270
    check-cast p0, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception p0

    .line 273
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBestVolumeDescription fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrimaryStorageSize()J
    .registers 4

    .line 219
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 221
    :try_start_a
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v1, "getPrimaryStorageSize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 223
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 224
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_42

    .line 225
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_2b

    return-wide v0

    :catchall_2b
    move-exception p0

    .line 228
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrimaryStorageSize fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStorageLowBytes()J
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_10

    .line 205
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 207
    :cond_10
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStorageLowBytes"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 210
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_39

    .line 211
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVolumeList(I)[Landroid/os/storage/StorageVolume;
    .registers 5

    .line 188
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 p1, 0x0

    .line 190
    :try_start_b
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 192
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 193
    instance-of v0, p0, [Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_3e

    .line 194
    check-cast p0, [Landroid/os/storage/StorageVolume;
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 197
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolumeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-object p1
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .registers 5

    .line 172
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v0, 0x0

    .line 174
    :try_start_b
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getVolumePaths"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 176
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 177
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 178
    check-cast p0, [Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 181
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumePaths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-object v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 156
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 158
    :try_start_a
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v1, "getVolumeState"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 160
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 161
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_44

    .line 162
    check-cast p0, Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 165
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolumeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolumes()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 45
    const-string v1, "getId"

    iget-object v2, v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 46
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v4, "getVolumes"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {v2, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 48
    :cond_15
    iget-object v2, v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 52
    :try_start_25
    iget-object v6, v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    iget-object v0, v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 54
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3d

    .line 55
    check-cast v0, Ljava/util/List;

    goto :goto_3e

    :catchall_3a
    move-exception v0

    goto/16 :goto_1ac

    :cond_3d
    move-object v0, v5

    .line 57
    :goto_3e
    sget-object v2, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Class;

    invoke-static {v2, v1, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    sget-object v6, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v8, "getType"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-static {v6, v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 59
    sget-object v8, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v9, "getState"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-static {v8, v9, v10}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 60
    sget-object v9, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v10, "getFsUuid"

    new-array v11, v3, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 61
    sget-object v10, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v11, "getPath"

    new-array v12, v3, [Ljava/lang/Class;

    invoke-static {v10, v11, v12}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 62
    sget-object v11, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v12, "getDescription"

    new-array v13, v3, [Ljava/lang/Class;

    invoke-static {v11, v12, v13}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 63
    sget-object v12, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v13, "getDisk"

    new-array v14, v3, [Ljava/lang/Class;

    invoke-static {v12, v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 64
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    new-array v14, v3, [Ljava/lang/Class;

    invoke-static {v13, v1, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    sget-object v13, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sDiskClass:Ljava/lang/Class;

    const-string v14, "flags"

    invoke-static {v13, v14}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 67
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    invoke-virtual {v15, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_be

    .line 68
    sget-object v15, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tranVolumeInfo object :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_be
    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v14, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d0

    .line 73
    instance-of v3, v5, Ljava/lang/String;

    if-eqz v3, :cond_d0

    .line 74
    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    goto :goto_d1

    :cond_d0
    const/4 v3, 0x0

    .line 76
    :goto_d1
    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v5, 0x0

    .line 77
    invoke-virtual {v6, v14, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_e6

    .line 79
    instance-of v5, v15, Ljava/lang/Integer;

    if-eqz v5, :cond_e6

    .line 80
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_e7

    :cond_e6
    const/4 v5, 0x0

    .line 82
    :goto_e7
    invoke-virtual {v8, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v15, 0x0

    .line 83
    invoke-virtual {v8, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_fd

    .line 85
    instance-of v15, v7, Ljava/lang/Integer;

    if-eqz v15, :cond_fd

    .line 86
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_fb
    const/4 v15, 0x1

    goto :goto_ff

    :cond_fd
    const/4 v7, 0x0

    goto :goto_fb

    .line 88
    :goto_ff
    invoke-virtual {v9, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 p0, v0

    const/4 v15, 0x0

    .line 89
    invoke-virtual {v9, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_113

    .line 91
    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_113

    .line 92
    check-cast v0, Ljava/lang/String;

    :goto_111
    const/4 v15, 0x1

    goto :goto_115

    :cond_113
    const/4 v0, 0x0

    goto :goto_111

    .line 94
    :goto_115
    invoke-virtual {v10, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v17, v2

    const/4 v15, 0x0

    .line 95
    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_129

    .line 97
    instance-of v15, v2, Ljava/io/File;

    if-eqz v15, :cond_129

    .line 98
    check-cast v2, Ljava/io/File;

    :goto_127
    const/4 v15, 0x1

    goto :goto_12b

    :cond_129
    const/4 v2, 0x0

    goto :goto_127

    .line 100
    :goto_12b
    invoke-virtual {v11, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v18, v2

    const/4 v15, 0x0

    .line 101
    invoke-virtual {v11, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13f

    .line 103
    instance-of v15, v2, Ljava/lang/String;

    if-eqz v15, :cond_13f

    .line 104
    check-cast v2, Ljava/lang/String;

    :goto_13d
    const/4 v15, 0x1

    goto :goto_141

    :cond_13f
    const/4 v2, 0x0

    goto :goto_13d

    .line 106
    :goto_141
    invoke-virtual {v12, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v15, 0x0

    .line 107
    invoke-virtual {v12, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 108
    new-instance v15, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    if-eqz v18, :cond_158

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    goto :goto_15b

    :cond_158
    move-object/from16 v18, v6

    const/4 v6, 0x0

    :goto_15b
    invoke-direct {v15, v3, v5, v0, v6}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v15, v7}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setState(I)V

    .line 110
    invoke-virtual {v15, v2}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDescription(Ljava/lang/String;)V

    if-eqz v14, :cond_198

    const/4 v0, 0x1

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, v14, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17a

    .line 117
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_17a

    .line 118
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_178
    const/4 v0, 0x1

    goto :goto_17c

    :cond_17a
    const/4 v3, 0x0

    goto :goto_178

    .line 120
    :goto_17c
    invoke-virtual {v13, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 121
    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_190

    .line 122
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_190

    .line 123
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_191

    :cond_190
    const/4 v2, 0x0

    .line 125
    :goto_191
    new-instance v5, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    invoke-direct {v5, v3, v2}, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;-><init>(Ljava/lang/String;I)V

    move-object v3, v5

    goto :goto_19a

    :cond_198
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 127
    :goto_19a
    invoke-virtual {v15, v3}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->setDiskInfo(Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;)V

    .line 128
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a0
    .catchall {:try_start_25 .. :try_end_1a0} :catchall_3a

    move v7, v0

    move-object/from16 v2, v17

    move-object/from16 v6, v18

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_96

    :cond_1ab
    return-object v4

    .line 133
    :goto_1ac
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16
.end method

.method public getVolumesExt()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 384
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v2, "getVolumes"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    .line 386
    :cond_11
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 390
    :try_start_21
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mMethodName:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 391
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_35

    .line 392
    check-cast p0, Ljava/util/List;

    goto :goto_36

    :catchall_32
    move-exception p0

    goto/16 :goto_b6

    :cond_35
    move-object p0, v3

    .line 394
    :goto_36
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v4, "getId"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v0, v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 395
    sget-object v4, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v5, "getType"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 396
    sget-object v5, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    const-string v6, "mountFlags"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 397
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 398
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sVolumeClass:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 399
    sget-object v7, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tranVolumeInfo object :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_7e
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_8d

    .line 403
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8d

    .line 404
    check-cast v7, Ljava/lang/String;

    goto :goto_8e

    :cond_8d
    move-object v7, v3

    .line 406
    :goto_8e
    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a1

    .line 408
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_a1

    .line 409
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_a2

    :cond_a1
    move v8, v1

    .line 411
    :goto_a2
    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 412
    new-instance v9, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    invoke-direct {v9, v7, v8, v6}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;-><init>(Ljava/lang/String;II)V

    .line 413
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catchall {:try_start_21 .. :try_end_b4} :catchall_32

    goto :goto_56

    :cond_b5
    return-object v2

    .line 417
    :goto_b6
    sget-object v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolumesExt fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public isFileEncryptedNativeOrEmulated()Z
    .registers 5

    .line 364
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v0, 0x0

    .line 367
    :try_start_b
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 368
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v2, "isFileEncryptedNativeOrEmulated"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_28

    :catchall_1c
    move-exception p0

    goto :goto_37

    .line 370
    :cond_1e
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->sClassName:Ljava/lang/Class;

    const-string v2, "isFileEncrypted"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_28
    if-eqz v1, :cond_4d

    .line 373
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_1c

    return p0

    .line 376
    :goto_37
    sget-object v1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileEncryptedNativeOrEmulated fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return v0
.end method

.method public registerListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
    .registers 4

    .line 140
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager$TranAospStorageManagerListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager$TranAospStorageManagerListener;-><init>(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V

    .line 141
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mTranAospStorageManagerExt:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->registerListener(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V

    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager$TranAospStorageManagerListener;

    if-eqz v0, :cond_f

    .line 149
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mTranAospStorageManagerExt:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt;->unregisterListener(Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManagerExt$ITranAospStorageEventListenerExt;)V

    .line 151
    :cond_f
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
