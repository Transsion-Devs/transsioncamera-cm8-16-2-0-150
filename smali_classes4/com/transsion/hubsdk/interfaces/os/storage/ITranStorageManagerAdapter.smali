.class public interface abstract Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findVolumeByUuid(Ljava/lang/String;)Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
.end method

.method public abstract getBestVolumeDescription(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)Ljava/lang/String;
.end method

.method public abstract getPrimaryStorageSize()J
.end method

.method public abstract getStorageLowBytes()J
.end method

.method public abstract getVolumeList(I)[Landroid/os/storage/StorageVolume;
.end method

.method public abstract getVolumePaths()[Ljava/lang/String;
.end method

.method public abstract getVolumeState(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVolumesExt()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFileEncryptedNativeOrEmulated()Z
.end method

.method public abstract registerListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
.end method

.method public abstract unregisterListener(Lcom/transsion/hubsdk/api/os/storage/TranStorageManager$TranStorageEventListener;)V
.end method
