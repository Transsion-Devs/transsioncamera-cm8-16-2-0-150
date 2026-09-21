.class public Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranStorageManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThubService:Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public findVolumeByUuid(Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    .registers 3

    .line 203
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->findVolumeByUuid(Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBestVolumeDescription(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)Ljava/lang/String;
    .registers 3

    .line 190
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getBestVolumeDescription(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryStorageSize()J
    .registers 3

    .line 134
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getPrimaryStorageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;
    .registers 3

    .line 33
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 34
    sget-object p1, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubStorageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mThubService:Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mThubService:Lcom/transsion/hubsdk/core/os/storage/TranThubStorageManager;

    :cond_18
    return-object p1

    .line 37
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospStorageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/storage/TranAospStorageManager;

    :cond_2b
    return-object p1
.end method

.method public getStorageLowBytes()J
    .registers 3

    .line 180
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getStorageLowBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVolumeList(I)[Landroid/os/storage/StorageVolume;
    .registers 3

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumeList(I)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .registers 2

    .line 111
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumePaths()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 100
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolumes()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVolumesExt()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->getVolumesExt()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isFileEncryptedNativeOrEmulated()Z
    .registers 2

    .line 213
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->isFileEncryptedNativeOrEmulated()Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 72
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->registerListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V

    :cond_17
    return-void
.end method

.method public unregisterListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 86
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/storage/TranStorageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;->unregisterListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V

    :cond_16
    return-void
.end method
