.class public abstract Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mMMKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "process_media_data"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->mMMKV:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public static clearData()V
    .registers 2

    .line 32
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->getDataKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->removeValueForKey(Ljava/lang/String;)V

    return-void
.end method

.method private static getDataKey()Ljava/lang/String;
    .registers 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadData()Ljava/util/Set;
    .registers 3

    .line 22
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->getDataKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    .line 23
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_f
    return-object v0
.end method

.method public static saveData(Ljava/util/List;)V
    .registers 4

    .line 28
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->getDataKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/util/Set;)Z

    return-void
.end method
