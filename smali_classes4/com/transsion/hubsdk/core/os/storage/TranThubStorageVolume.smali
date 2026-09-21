.class public Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/storage/ITranStorageVolumeAdapter;


# instance fields
.field private mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    return-void
.end method


# virtual methods
.method public getPath(Landroid/os/storage/StorageVolume;)Ljava/io/File;
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;-><init>(Landroid/os/storage/StorageVolume;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    .line 27
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;->getPath()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getState(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;-><init>(Landroid/os/storage/StorageVolume;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    .line 43
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;->getState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isRemovable(Landroid/os/storage/StorageVolume;)Z
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;-><init>(Landroid/os/storage/StorageVolume;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    .line 35
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/storage/TranThubStorageVolume;->mTranStorageVolume:Lcom/transsion/hubsdk/os/storage/TranStorageVolume;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/storage/TranStorageVolume;->isRemovable()Z

    move-result p0

    return p0
.end method
