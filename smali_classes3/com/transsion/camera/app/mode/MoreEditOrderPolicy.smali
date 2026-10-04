.class public Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;
.super Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInitTabModeCount:I

.field private final mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

.field private final mModeReplaceMap:Ljava/util/Map;

.field private mSecureCamera:Z

.field private final mVideoModes:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MaNmd1LrAYlPf-qR1ELUM3HUcJA(Lcom/transsion/camera/app/common/FeatureResource;)Z
    .registers 2

    .line 277
    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R9rPByzXkihaqJqqGeKmm2Hyci4(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->lambda$setModeList$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dCClEPNPkkuCHDAEBHXUM4zhvhI(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->lambda$setModeList$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreEditOrderPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Z)V
    .registers 5

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeReplaceMap:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean p3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    .line 73
    new-instance p3, Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-direct {p3, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->video_mode_category:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mVideoModes:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mInitModesNumberInTab:I

    iput p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mInitTabModeCount:I

    .line 76
    const-string p0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    const-string p1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V
    .registers 17

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 179
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    const/4 v12, 0x1

    if-eqz v10, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/app/common/FeatureResource;

    .line 185
    iget-object v13, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->isVideoModeType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_51

    .line 186
    iget-object v11, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v13, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 188
    invoke-interface {v4, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v12

    goto :goto_21

    :cond_47
    if-eqz v8, :cond_4d

    .line 192
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 194
    :cond_4d
    invoke-interface {v4, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_21

    .line 197
    :cond_51
    iget-object v13, v10, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 199
    invoke-interface {v3, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v7, v12

    goto :goto_21

    :cond_5e
    if-eqz v7, :cond_66

    add-int/lit8 v9, v9, 0x1

    .line 204
    invoke-interface {v3, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_21

    .line 206
    :cond_66
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 211
    :cond_6a
    invoke-static {v3, v11}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->removeMode(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    if-nez v5, :cond_87

    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_87

    .line 213
    sget-object v5, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "AICAM is not config!!!"

    invoke-static {v5, v7}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_87
    if-eqz v5, :cond_8c

    .line 216
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_8c
    :goto_8c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->needSupportMoreMode(I)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 222
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    .line 223
    :goto_9b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b3

    add-int/2addr v7, v12

    const/4 v8, 0x2

    if-le v7, v8, :cond_a6

    goto :goto_b3

    .line 229
    :cond_a6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/common/FeatureResource;

    .line 230
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 231
    invoke-interface {v0, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9b

    .line 234
    :cond_b3
    :goto_b3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 235
    :cond_b7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 236
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/common/FeatureResource;

    .line 237
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 238
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mInitTabModeCount:I

    sub-int/2addr v8, v12

    if-lt v7, v8, :cond_b7

    .line 245
    :cond_d2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v7, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mInitTabModeCount:I

    sub-int/2addr v7, v12

    if-ge v5, v7, :cond_fa

    .line 246
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 248
    :cond_df
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 249
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/app/common/FeatureResource;

    .line 250
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 251
    invoke-interface {v0, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mInitTabModeCount:I

    sub-int/2addr v8, v12

    if-lt v7, v8, :cond_df

    .line 259
    :cond_fa
    invoke-direct {p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_136

    .line 263
    :cond_108
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 264
    :goto_10c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 265
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 266
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 267
    invoke-interface {v0, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_10c

    .line 270
    :cond_11f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 271
    :goto_123
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_136

    .line 272
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/FeatureResource;

    .line 273
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 274
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_123

    .line 277
    :cond_136
    :goto_136
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/FeatureResource;

    if-eqz p0, :cond_156

    .line 279
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_156
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 p0, p2

    .line 284
    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;->onGenerated(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V
    .registers 15

    .line 110
    invoke-virtual {p0, p3, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 112
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, v1}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->removeMode(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/camera/app/common/FeatureResource;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->getTabModeOrder(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->getPanelModeOrder(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_ba

    .line 120
    iget-boolean v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    const-string v4, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    const-string v7, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    const-string v8, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    const-string v9, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    if-eqz v3, :cond_43

    .line 121
    invoke-static {v2, v9}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v2, v6}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_43
    invoke-direct {p0, v2, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v2, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-nez p1, :cond_53

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_76

    .line 133
    :cond_53
    iget-boolean v3, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mSecureCamera:Z

    if-eqz v3, :cond_6f

    .line 134
    invoke-static {p1, v9}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1, v7}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1, v6}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1, v4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_6f
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 144
    :goto_76
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 v3, p2, -0x1

    add-int/2addr v3, p3

    if-ne v3, v1, :cond_93

    .line 150
    new-instance p0, Ljava/util/ArrayList;

    add-int/2addr p2, p3

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {p4, v2, p1, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;->onGenerated(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 156
    :cond_93
    sget-object p1, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mode size not match, configModeSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", reorderModeSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->clear()V

    .line 160
    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    return-void

    :cond_ba
    if-eqz p1, :cond_db

    .line 164
    sget-object p2, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This should not happen, panelModeOrder: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->clear()V

    .line 169
    :cond_db
    invoke-direct {p0, v0, p4}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateDefaultModeOrder(Ljava/util/List;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    return-void
.end method

.method private isVideoModeType(Ljava/lang/String;)Z
    .registers 3

    .line 288
    const-string v0, "com.transsion.camera.feature.mode.armode.ARModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 289
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mVideoModes:[Ljava/lang/String;

    .line 290
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setModeList$0(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackTabModeList:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackPanelModeList:Ljava/util/List;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$setModeList$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontTabModeList:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontPanelModeList:Ljava/util/List;

    .line 89
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    return-void
.end method

.method private needSupportMoreMode(I)Z
    .registers 3

    const/4 v0, 0x7

    if-ge p1, v0, :cond_7

    .line 330
    iget p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mInitTabModeCount:I

    if-le p1, p0, :cond_f

    .line 331
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 3

    .line 294
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 295
    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$string;->more_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 297
    sget p0, Lcom/transsion/camera/R$drawable;->ic_more:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method private replaceModesIfNeeded([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeReplaceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->replaceString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_a

    :cond_3e
    return-void
.end method


# virtual methods
.method public moreModeShow(Ljava/lang/String;)Z
    .registers 2

    .line 326
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->getCameraModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->needSupportMoreMode(I)Z

    move-result p0

    return p0
.end method

.method public setModeList(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 81
    new-instance v0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;)V

    const-string v1, "0"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    .line 86
    new-instance p2, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;)V

    const-string v0, "1"

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->generateModeOrder(Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Lcom/transsion/camera/app/mode/MoreEditOrderPolicy$IModeOrderCallBack;)V

    return-void
.end method

.method public updateCurrentModes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .line 303
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 304
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackTabModeList:Ljava/util/List;

    .line 305
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackPanelModeList:Ljava/util/List;

    .line 306
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    .line 307
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    const-string v0, "0"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 313
    :cond_2f
    iput-object p2, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontTabModeList:Ljava/util/List;

    .line 314
    iput-object p3, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontPanelModeList:Ljava/util/List;

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    .line 316
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    const-string v0, "1"

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updateTabModeOrder(Ljava/lang/String;Ljava/util/List;)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;->mModeOrderStorage:Lcom/transsion/camera/app/mode/ModeOrderStorage;

    invoke-virtual {p0, v0, p3}, Lcom/transsion/camera/app/mode/ModeOrderStorage;->updatePanelModeOrder(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
