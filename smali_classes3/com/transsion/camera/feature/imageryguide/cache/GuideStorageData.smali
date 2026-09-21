.class public Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/cache/IGuideStorageData;


# static fields
.field private static final IMAGERY_GUIDE_STORAGE_DATA_ITEM:Ljava/lang/String; = "imagery_guide_item"

.field private static final IMAGERY_GUIDE_STORAGE_DATA_NAME:Ljava/lang/String; = "imagery_guide"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

.field private final mLock:Ljava/lang/Object;

.field private mMMKV:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuideStorageData"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mLock:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->init()V

    return-void
.end method

.method private doInit()V
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->loadImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    return-void
.end method

.method private doUpdateImageryGuide(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onFlush()V

    return-void
.end method

.method private onDelete()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string v1, "imagery_guide_item"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    return-void
.end method

.method private onFlush()V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFlush] :  ,json :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string v2, "imagery_guide_item"

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method


# virtual methods
.method public delete()V
    .registers 3

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "delete begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onDelete()V

    .line 57
    const-string p0, "delete end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getFunctionBeans()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 107
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getFunctionBeanList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_20

    .line 110
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getFunctionBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 111
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getFunctionBeanList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    return-object v1
.end method

.method public getModeBeans()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 97
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_20

    .line 100
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 101
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    return-object v1
.end method

.method public getSaleModeBeans()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 87
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_20

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 91
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    return-object v1
.end method

.method public init()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_c

    .line 30
    const-string v0, "imagery_guide"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    .line 32
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->doInit()V

    return-void
.end method

.method public loadImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    if-nez v0, :cond_c

    .line 42
    const-string v0, "imagery_guide"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    .line 44
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mMMKV:Lcom/tencent/mmkv/MMKV;

    const-string v0, "imagery_guide_item"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    return-object p0
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateAllBeans(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    if-nez v0, :cond_5

    return-void

    .line 149
    :cond_5
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setSaleModeBeanList(Ljava/util/List;)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setModeBeanList(Ljava/util/List;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setFunctionBeanList(Ljava/util/List;)V

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onFlush()V

    return-void
.end method

.method public updateFunctionBeans(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setFunctionBeanList(Ljava/util/List;)V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onFlush()V

    return-void
.end method

.method public updateImageryGuide(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->doUpdateImageryGuide(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V

    return-void
.end method

.method public updateModeBeans(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    if-nez v0, :cond_5

    return-void

    .line 129
    :cond_5
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setModeBeanList(Ljava/util/List;)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onFlush()V

    return-void
.end method

.method public updateSaleModeBeans(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->mImageryGuideBean:Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    if-nez v0, :cond_5

    return-void

    .line 119
    :cond_5
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->setSaleModeBeanList(Ljava/util/List;)V

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->onFlush()V

    return-void
.end method
