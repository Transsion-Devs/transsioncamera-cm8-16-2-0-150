.class public Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CacheManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    return-void
.end method

.method private updateDetailList(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 88
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getSaleModeBeans()Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getModeBeans()Ljava/util/List;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getFunctionBeans()Ljava/util/List;

    move-result-object v2

    .line 95
    const-string v3, " ,position :"

    const/4 v4, 0x0

    if-eqz v0, :cond_b7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 97
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3f

    goto :goto_2c

    :cond_3f
    move v7, v4

    .line 101
    :goto_40
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2c

    .line 102
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 103
    sget-object v9, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDetailList saleModeBean: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " ,i :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " ,detailBean :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v8}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 106
    invoke-virtual {v8}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {v8, v9}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->setItemImgVideoFilePath(Ljava/lang/String;)V

    :cond_b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_b7
    if-eqz v1, :cond_14e

    .line 113
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14e

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c3
    :goto_c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 115
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_d6

    goto :goto_c3

    :cond_d6
    move v7, v4

    .line 118
    :goto_d7
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c3

    .line 119
    invoke-virtual {v6}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 120
    invoke-virtual {v8}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14b

    .line 121
    sget-object v9, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDetailList detailBean: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "size :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->setItemImgVideoFilePath(Ljava/lang/String;)V

    :cond_14b
    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    .line 129
    :cond_14e
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[updateDetailList] ,saleList :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ,modeList :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ,functionList :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->updateAllBeans(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private updateModeList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getModePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getModeBeans()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 76
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->setModeImgFilePath(Ljava/lang/String;)V

    goto :goto_15

    .line 80
    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->updateModeBeans(Ljava/util/List;)V

    return-void
.end method

.method private updateSaleList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 55
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getSaleModePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 59
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getSaleModeBeans()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 61
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->setModeImgFilePath(Ljava/lang/String;)V

    goto :goto_15

    .line 65
    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->updateSaleModeBeans(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public cacheResource([BLjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 27
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->writeFile([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->updateImageryGuideJson(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public deleteStorageData()V
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->delete()V

    return-void
.end method

.method public getFunctionBeans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getFunctionBeans()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->loadImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object p0

    return-object p0
.end method

.method public getModeBeans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getModeBeans()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSaleModeBeans()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->getSaleModeBeans()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public initStorageData(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->needRequestJsonData()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->updateImageryGuide(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V

    :cond_b
    return-void
.end method

.method public needRequestJsonData()Z
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->mGuideStorageData:Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/GuideStorageData;->loadImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public updateImageryGuideJson(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->updateSaleList(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->updateModeList(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->updateDetailList(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
