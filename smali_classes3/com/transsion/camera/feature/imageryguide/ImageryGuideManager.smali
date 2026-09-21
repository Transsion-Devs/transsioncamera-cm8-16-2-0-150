.class public Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;
.super Lcom/transsion/camera/manager/BaseImageryGuideManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private final mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

.field private mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateImageryConfigCallBack:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

.field private final mUpdateResourceCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;


# direct methods
.method public static synthetic $r8$lambda$9R7bIrE6OhDsFq6bJq_8y8NxOvU(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->lambda$parasData$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fi0JansPEilxVsG-OJURhkM-eew(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->lambda$parasData$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vMeVBYIhoemr4pAs7nI7JjEYJJ8(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->lambda$parasData$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCacheManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideDownLoadManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideUIManager(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)Lcom/transsion/camera/feature/imageryguide/GuideUIManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparasData(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->parasData([B)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_GuideManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager;-><init>()V

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mUpdateResourceCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    .line 103
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$2;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mUpdateImageryConfigCallBack:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    .line 268
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$4;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    return-void
.end method

.method private deleteEE1AiArtPartialIfNeed(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V
    .registers 9

    if-eqz p1, :cond_cd

    .line 281
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInRuMarket()Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_cd

    .line 285
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object p1

    .line 287
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "detail_guide_item_ai_partial_name"

    const/4 v2, 0x0

    const-string v3, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    if-eqz v0, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 288
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_16

    .line 291
    :cond_32
    :goto_32
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 292
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 294
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[deleteEE1AiArtPartialIfNeed] saleModeBean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 301
    :cond_71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_75
    :goto_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_cc

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 302
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_75

    :cond_8c
    move v0, v2

    .line 305
    :goto_8d
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_75

    .line 306
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 308
    sget-object v4, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[deleteEE1AiArtPartialIfNeed] modeBean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_75

    :cond_c9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_cc
    return-void

    .line 282
    :cond_cd
    :goto_cd
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isNotInRuMarket, don\'t delete ai partial"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getEnterFragmentMode()Ljava/lang/String;
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCurrentMode:Ljava/lang/String;

    .line 202
    const-string v1, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCurrentMode:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    .line 203
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    move-object v0, v1

    .line 206
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCurrentMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCurrentMode:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    .line 207
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return-object v0

    :cond_2b
    :goto_2b
    return-object v2
.end method

.method private synthetic lambda$parasData$0()V
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onRequestFailed()V

    return-void
.end method

.method private synthetic lambda$parasData$1()V
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onImageryConfigSucceed()V

    return-void
.end method

.method private synthetic lambda$parasData$2()V
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onRequestFailed()V

    return-void
.end method

.method private parasData([B)V
    .registers 11

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 128
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[parseData] jsonString invalid !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_13
    :try_start_13
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->readVersionFromDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_63

    .line 140
    const-string v3, " ,version :"

    const-string v4, "[parasData] fileVersion: "

    if-eqz v2, :cond_65

    :try_start_3c
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_65

    .line 141
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_63
    move-exception p1

    goto :goto_d0

    .line 144
    :cond_65
    sget-object v5, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,dataJson :"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,contentJson :"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 147
    const-class v2, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    if-nez p1, :cond_a7

    .line 149
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 153
    :cond_a7
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$3;

    const-string v3, "ImageryGuideParasData"

    invoke-direct {v2, p0, v3, v0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$3;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->cancelAllRequest()V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->deleteStorageData()V

    .line 164
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->deleteEE1AiArtPartialIfNeed(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->initStorageData(Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;)V

    .line 166
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_cf} :catch_63

    return-void

    .line 169
    :goto_d0
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 170
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parasData]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enterFragment()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mSupportModes:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->getEnterFragmentMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enterFragment] camera not support this mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->getEnterFragmentMode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->getEnterFragmentMode()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->enterFragment(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public exitImageryGuideFragment()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->exitImageryGuideFragment()V

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->cancelAllRequest()V

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .registers 12

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[init]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->init(Landroid/content/Context;)V

    .line 54
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    .line 55
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    .line 56
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    move-object v6, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;ILcom/transsion/camera/feature/imageryguide/cache/CacheManager;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V

    iput-object v1, v6, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    if-nez v0, :cond_5

    return-void

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    .line 255
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->showNetWeakTips()V

    .line 257
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onClick]:  net is null !!! , shouldn\'t enter detail fragment"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->enterFragment(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mUpdateResourceCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 228
    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->downLoadResourceIfNeed(Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method public requestImageryGuideReSourceIfNeed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 237
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[requestImageryJsonData] net is null !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 240
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mUpdateResourceCallback:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->downLoadResourceIfNeed(Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public requestImageryJsonData()V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[requestImageryJsonData] net is null !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_10
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportImageryGuideDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 220
    const-string v0, "https://test-api-camera.shalltry.com/camera/api/v2/usermanual/get"

    goto :goto_1b

    .line 221
    :cond_19
    const-string v0, "https://client.cameratechplatform.com/camera/api/v2/usermanual/get"

    .line 222
    :goto_1b
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[requestImageryJsonData] url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mUpdateImageryConfigCallBack:Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->requestJsonDataFormRemote(Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IUpdateImageryGuideCallback;)V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->exitImageryGuideFragment()V

    return-void
.end method

.method public setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V

    return-void
.end method

.method public setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V

    return-void
.end method

.method public supportModesEntry([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 75
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->mergeAndRemoveDuplicates([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mSupportModes:Ljava/util/List;

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->setSupportModeEntry(Ljava/util/List;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideDownLoadManager:Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/downLoad/GuideDownLoadManager;->unInit()V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mGuideUIManager:Lcom/transsion/camera/feature/imageryguide/GuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->unInit()V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->mCurrentMode:Ljava/lang/String;

    return-void
.end method
