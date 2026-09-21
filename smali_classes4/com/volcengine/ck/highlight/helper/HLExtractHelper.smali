.class public final Lcom/volcengine/ck/highlight/helper/HLExtractHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

.field private final extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

.field private final frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

.field private final timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

.field private final vecAlgorithmType$delegate:Lkotlin/Lazy;

.field private final vecString$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$cPtLGRvaWOMK4Yc1IKjmlDwAMs4(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;Ljava/nio/ByteBuffer;III)Z
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->recognizeVideo$lambda-4(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V
    .registers 4

    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    .line 38
    iput-object p2, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    .line 41
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getFrameExtractor()Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    move-result-object p1

    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    .line 43
    invoke-virtual {p2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getTimeExtractor()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    move-result-object p1

    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    .line 45
    sget-object p1, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;->INSTANCE:Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecAlgorithmType$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->vecAlgorithmType$delegate:Lkotlin/Lazy;

    .line 51
    sget-object p1, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecString$2;->INSTANCE:Lcom/volcengine/ck/highlight/helper/HLExtractHelper$vecString$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->vecString$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)Lcom/volcengine/ck/highlight/data/RecognizeResult;
    .registers 10

    .line 133
    invoke-virtual {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    if-eqz v2, :cond_91

    .line 134
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;

    invoke-direct {p0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->getVecAlgorithmType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    move-result-object v2

    invoke-direct {p0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->getVecString()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, p1, v4, v2, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    .line 135
    iget-object p0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->extractor:Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;

    new-instance v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;

    invoke-direct {v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const-string v2, "multiResults"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_45

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_45
    check-cast v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;

    .line 138
    invoke-virtual {p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->get(I)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    move-result-object v1

    if-nez v1, :cond_4e

    goto :goto_88

    .line 139
    :cond_4e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const-string v5, "multiResult"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/volcengine/ck/highlight/utils/MultiResultUtilsKt;->getC3(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {v2}, Lcom/volcengine/ck/highlight/utils/MultiResultUtilsKt;->getRelation(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-static {v2}, Lcom/volcengine/ck/highlight/utils/MultiResultUtilsKt;->getScore(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiResult;)Lcom/volcengine/ck/highlight/data/HLScore;

    move-result-object v2

    .line 145
    new-instance v5, Lcom/volcengine/ck/highlight/data/RecognizeResult;

    .line 146
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->getAssetId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.assetId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    const-string v7, "it.assetPath"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {v5, v6, v1, v4, v2}, Lcom/volcengine/ck/highlight/data/RecognizeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/volcengine/ck/highlight/data/HLScore;)V

    .line 144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_88
    move v1, v3

    goto :goto_34

    .line 154
    :cond_8a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/volcengine/ck/highlight/data/RecognizeResult;

    return-object p0

    .line 133
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getVecAlgorithmType()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->vecAlgorithmType$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;

    return-object p0
.end method

.method private final getVecString()Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->vecString$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    return-object p0
.end method

.method private static final recognizeVideo$lambda-4(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;Ljava/nio/ByteBuffer;III)Z
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hlResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getSleepTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 71
    iget-object v0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->config:Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getSleepTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 73
    :cond_24
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    .line 74
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;-><init>()V

    .line 75
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    invoke-direct {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetPath(Ljava/lang/String;)V

    .line 78
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    invoke-direct {v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>()V

    .line 79
    invoke-virtual {v2, p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setWidth(I)V

    .line 80
    invoke-virtual {v2, p5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setHeight(I)V

    .line 81
    array-length p4, p3

    int-to-long p4, p4

    invoke-virtual {v2, p4, p5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setLength(J)V

    .line 82
    invoke-virtual {v2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setData([B)V

    .line 83
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setBuffer(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z

    .line 74
    invoke-direct {p0, v0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)Lcom/volcengine/ck/highlight/data/RecognizeResult;

    move-result-object p0

    if-nez p0, :cond_63

    const/4 p0, 0x0

    goto :goto_6c

    .line 85
    :cond_63
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getDuration()J

    move-result-wide p3

    long-to-int p1, p3

    invoke-static {p0, p6, p1}, Lcom/volcengine/ck/highlight/utils/ExtKt;->toHLResult(Lcom/volcengine/ck/highlight/data/RecognizeResult;II)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    :goto_6c
    if-nez p0, :cond_6f

    goto :goto_72

    .line 87
    :cond_6f
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_72
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getTimeExtractor()Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->timeExtractor:Lcom/volcengine/ck/highlight/api/IHLTimeExtractor;

    return-object p0
.end method

.method public final recognizeByteArray(III[B)Lcom/volcengine/ck/highlight/data/HLResult;
    .registers 8

    const-string v0, "bytes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;-><init>()V

    .line 118
    new-instance v1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    invoke-direct {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>()V

    .line 119
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetId(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetPath(Ljava/lang/String;)V

    .line 121
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    invoke-direct {v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>()V

    .line 122
    invoke-virtual {v2, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setWidth(I)V

    .line 123
    invoke-virtual {v2, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setHeight(I)V

    .line 124
    array-length p1, p4

    int-to-long p1, p1

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setLength(J)V

    .line 125
    invoke-virtual {v2, p4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setData([B)V

    .line 126
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    invoke-virtual {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setBuffer(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z

    .line 117
    invoke-direct {p0, v0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)Lcom/volcengine/ck/highlight/data/RecognizeResult;

    move-result-object p0

    if-nez p0, :cond_3a

    const/4 p0, 0x0

    return-object p0

    :cond_3a
    const/4 p1, 0x0

    .line 128
    invoke-static {p0, p3, p1}, Lcom/volcengine/ck/highlight/utils/ExtKt;->toHLResult(Lcom/volcengine/ck/highlight/data/RecognizeResult;II)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    return-object p0
.end method

.method public final recognizeImage(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ")",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/volcengine/ck/highlight/utils/ImageUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/ImageUtils;

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/volcengine/ck/highlight/utils/ImageUtils;->createImageInfoByPath$ck_highlight_release(Ljava/lang/String;Ljava/lang/String;II)Lcom/volcengine/ck/highlight/data/ImageInfo;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    invoke-direct {v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;-><init>()V

    .line 99
    new-instance v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    invoke-direct {v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetId(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetPath(Ljava/lang/String;)V

    .line 102
    new-instance p1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    invoke-direct {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>()V

    .line 103
    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/data/ImageInfo;->getWidth()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setWidth(I)V

    .line 104
    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/data/ImageInfo;->getHeight()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setHeight(I)V

    .line 105
    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/data/ImageInfo;->getBytes()[B

    move-result-object v4

    if-nez v4, :cond_54

    const-wide/16 v4, 0x0

    goto :goto_56

    :cond_54
    array-length v4, v4

    int-to-long v4, v4

    :goto_56
    invoke-virtual {p1, v4, v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setLength(J)V

    .line 106
    invoke-virtual {v0}, Lcom/volcengine/ck/highlight/data/ImageInfo;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setData([B)V

    .line 107
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    invoke-virtual {v3, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setBuffer(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    .line 99
    invoke-virtual {v2, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z

    .line 98
    invoke-direct {p0, v2}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)Lcom/volcengine/ck/highlight/data/RecognizeResult;

    move-result-object p0

    if-nez p0, :cond_70

    const/4 p0, 0x0

    goto :goto_76

    :cond_70
    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, v0}, Lcom/volcengine/ck/highlight/utils/ExtKt;->toHLResult(Lcom/volcengine/ck/highlight/data/RecognizeResult;II)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object p0

    :goto_76
    if-nez p0, :cond_79

    return-object v1

    .line 111
    :cond_79
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final recognizeVideo(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ")",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/volcengine/ck/highlight/helper/HLExtractHelper;->frameExtractor:Lcom/volcengine/ck/highlight/api/IFrameExtractor;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getDuration()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/volcengine/ck/highlight/api/IFrameExtractor;->extract(JJ)[I

    move-result-object v7

    .line 62
    sget-object v1, Lcom/volcengine/ck/highlight/utils/ImageUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/ImageUtils;

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getHeight()I

    move-result v3

    const/16 v4, 0x2d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/volcengine/ck/highlight/utils/ImageUtils;->calculateScaleSize(III)Lkotlin/Pair;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 67
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 63
    new-instance v11, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, p1, v0}, Lcom/volcengine/ck/highlight/helper/HLExtractHelper$$ExternalSyntheticLambda0;-><init>(Lcom/volcengine/ck/highlight/helper/HLExtractHelper;Lcom/volcengine/ck/highlight/data/RecognizeMedia;Ljava/util/List;)V

    const/4 v10, 0x1

    invoke-static/range {v6 .. v11}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I

    return-object v0
.end method
