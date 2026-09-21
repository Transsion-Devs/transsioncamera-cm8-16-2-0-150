.class public abstract Lcom/transsion/camera/app/common/storage/BaseStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mCurrentVolume:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected final mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

.field protected mExternalStorageVolume:Landroid/os/storage/StorageVolume;

.field protected final mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

.field private mIsPermissionRequesting:Z

.field private mIsReceiverRegistered:Z

.field private mMainHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageAvailable:Z

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mTranStorageManager:Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;


# direct methods
.method public static synthetic $r8$lambda$O9AySf5juzsYtkihLBY4lzLbhhU(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->lambda$asyncCheckStorageVolume$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YDWY9wdd2dAe9lWq2vdL37svdsw(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->lambda$asyncCheckStorageVolume$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YKoyIAK-KgKXggnt0qqi2hyBxmI(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageVolume;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->lambda$processStorageVolumeList$0(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageManager(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Landroid/os/storage/StorageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageVolumeListener(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranStorageManager(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTranStorageManager:Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStorageAvailable(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misUsbStorage(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Landroid/os/storage/StorageVolume;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisInternalStorage(Landroid/os/storage/StorageVolume;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentVolume:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsPermissionRequesting:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsReceiverRegistered:Z

    .line 357
    new-instance v0, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager$1;-><init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->initInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->initExternalStorageOperator()Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    .line 81
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 82
    new-instance p1, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTranStorageManager:Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private asyncCheckStorageVolume()V
    .registers 3

    .line 257
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;)V

    const-string p0, "asyncCheckStorageVolume"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method protected static buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 412
    const-string v0, "com.android.externalstorage.documents"

    .line 413
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p0

    .line 412
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%3A"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static checkUuidIsUsb(Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 453
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getVolumes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 454
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_38

    .line 458
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    .line 459
    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 461
    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getDisk()Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 462
    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    :cond_38
    :goto_38
    return p0
.end method

.method private externalPermissionGranted()Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_d

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "externalPermissionGranted mExternalStorageVolume is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 181
    :cond_d
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 182
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private getStorageVolumes()Ljava/util/List;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isInternalStorage(Landroid/os/storage/StorageVolume;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 429
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected static isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 3

    .line 418
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 419
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    .line 420
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_8

    .line 421
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private isUsbStorage(Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Landroid/os/storage/StorageVolume;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    .line 434
    invoke-static {p3}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1b

    .line 437
    :cond_a
    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p3

    .line 440
    :try_start_e
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->checkUuidIsUsb(Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return p0

    :catch_13
    move-exception p1

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "checkUuidIsUsb: "

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    return v0
.end method

.method private synthetic lambda$asyncCheckStorageVolume$1(Ljava/util/List;)V
    .registers 2

    .line 261
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->processStorageVolumeList(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$asyncCheckStorageVolume$2()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[asyncCheckStorageVolume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_17

    .line 261
    new-instance v2, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method private synthetic lambda$processStorageVolumeList$0(Landroid/os/storage/StorageVolume;)V
    .registers 3

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    return-void
.end method

.method private processStorageVolumeList(Ljava/util/List;)V
    .registers 8

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1e

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "checkStorageVolume volume is null."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_8

    .line 212
    :cond_1e
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    .line 213
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorageVolume volume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isPrimary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-le v0, v3, :cond_5a

    .line 217
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTranStorageManager:Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;

    invoke-direct {p0, v4, v5, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_8

    .line 221
    :cond_5a
    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v4

    const-string v5, "mounted"

    if-eqz v4, :cond_8e

    .line 222
    const-string v2, "removed"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x0

    .line 223
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    .line 224
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 226
    :cond_76
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 227
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mStorageAvailable:Z

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 230
    :cond_87
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    goto/16 :goto_8

    .line 231
    :cond_8e
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    new-instance v2, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/storage/BaseStorageManager;Landroid/os/storage/StorageVolume;)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 241
    :try_start_9d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a4} :catch_a6

    goto/16 :goto_8

    :catch_a6
    move-exception v1

    .line 243
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "checkStorageVolume may error! "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 249
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz p1, :cond_c3

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->isReady()Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->doOnHasExternalStorage()V

    goto :goto_c6

    .line 252
    :cond_c3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->doOnNoExternalStorage()V

    :goto_c6
    return-void
.end method

.method private registerReceiver()V
    .registers 5

    .line 334
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 337
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsReceiverRegistered:Z

    return-void
.end method

.method private unregisterReceiver()V
    .registers 2

    .line 351
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsReceiverRegistered:Z

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected checkStorageVolume()V
    .registers 3

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsyncProcessStorageVolumes:Z

    if-eqz v0, :cond_f

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->asyncCheckStorageVolume()V

    return-void

    .line 271
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[checkStorageVolume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->processStorageVolumeList(Ljava/util/List;)V

    return-void
.end method

.method protected doOnHasExternalStorage()V
    .registers 3

    .line 279
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method protected doOnNoExternalStorage()V
    .registers 3

    .line 283
    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method public getAllBucketIds()Ljava/util/ArrayList;
    .registers 3

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->externalPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "external Permission don\'t Grant"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 167
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-object v0
.end method

.method public getCurrentVolume()Ljava/lang/String;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentVolume:Ljava/lang/String;

    return-object p0
.end method

.method public getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    return-object p0
.end method

.method public getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method public getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorageSettingKey()Ljava/lang/String;
    .registers 1

    .line 130
    const-string p0, "key_storage"

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .registers 3

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method protected initExternalStorageOperator()Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
    .registers 1

    .line 91
    new-instance p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;-><init>()V

    return-object p0
.end method

.method protected initInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .registers 1

    .line 87
    new-instance p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;-><init>()V

    return-object p0
.end method

.method protected makeCameraDirectory()Z
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    instance-of v1, v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    if-eqz v1, :cond_14

    .line 192
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 193
    const-string v0, "internal"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    goto :goto_14

    :cond_13
    return v1

    .line 198
    :cond_14
    :goto_14
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    move-result p0

    return p0
.end method

.method protected onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExternalStorageMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 329
    :cond_1d
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 330
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->doOnHasExternalStorage()V

    return-void
.end method

.method protected onExternalStoragePermissionDenied()V
    .registers 3

    .line 317
    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method protected onExternalStorageUnMounted()V
    .registers 3

    .line 321
    const-string v0, "internal"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->checkStorageVolume()V

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->makeCameraDirectory()Z

    return-void
.end method

.method protected setCurrentVolume(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->setCurrentVolume(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method protected setCurrentVolume(Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageVolume changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 294
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentVolume:Ljava/lang/String;

    .line 295
    const-string p2, "external"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    goto :goto_43

    .line 298
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    :goto_43
    if-eqz p3, :cond_48

    .line 301
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 303
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->clearTempFiles()V

    :cond_4d
    return-void
.end method

.method public start()V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->registerReceiver()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->unregisterReceiver()V

    return-void
.end method

.method public supportExternalStorage()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit mIsPermissionRequesting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsPermissionRequesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsPermissionRequesting:Z

    if-eqz v0, :cond_23

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->onExternalStoragePermissionDenied()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mIsPermissionRequesting:Z

    .line 107
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/BaseStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
