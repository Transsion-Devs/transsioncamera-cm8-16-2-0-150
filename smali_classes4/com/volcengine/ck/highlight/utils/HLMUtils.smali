.class public final Lcom/volcengine/ck/highlight/utils/HLMUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/highlight/utils/HLMUtils;

    invoke-direct {v0}, Lcom/volcengine/ck/highlight/utils/HLMUtils;-><init>()V

    sput-object v0, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final findHLResult(Lcom/volcengine/ck/moment/base/CKMomentTemplate;ILjava/util/List;I)Lkotlin/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            "+",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;>;>;I)",
            "Lkotlin/Pair<",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    .line 128
    check-cast p3, Ljava/lang/Iterable;

    .line 157
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_20

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_20
    check-cast v4, Lkotlin/Pair;

    .line 129
    sget-object v6, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    .line 130
    new-instance v7, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    invoke-virtual {p1}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getCategory()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, p4, v8}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    .line 131
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 132
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-virtual {v9}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getDuration()J

    move-result-wide v9

    long-to-int v9, v9

    .line 129
    invoke-virtual {v6, v7, v8, v9}, Lcom/volcengine/ck/highlight/HLSDK;->extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getAverageScore()F

    move-result v7

    cmpl-float v7, v7, v0

    if-ltz v7, :cond_53

    .line 135
    invoke-virtual {v6}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getAverageScore()F

    move-result p0

    add-int/2addr v2, p2

    move v0, p0

    move v1, v2

    move-object p0, v4

    move-object v3, v6

    :cond_53
    move v2, v5

    goto :goto_f

    .line 142
    :cond_55
    new-instance p1, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0, v3}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;-><init>(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)V

    .line 143
    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final matchedTemplateAndMediaItem(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            "+",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;>;>;)",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "templateList"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mediaList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getMinRequireDockerSize()I

    move-result v3

    .line 31
    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getFilterWithDuration()Z

    move-result v1

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "HLMMatch"

    if-eqz v8, :cond_3fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    .line 37
    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_46

    const/4 v11, 0x0

    goto :goto_70

    :cond_46
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_54
    :goto_54
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_54

    move-object v11, v12

    goto :goto_54

    :cond_70
    :goto_70
    if-nez v11, :cond_7e

    :goto_72
    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_3ee

    :cond_7e
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 39
    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 41
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-eqz v1, :cond_bc

    .line 44
    move-object v14, v0

    check-cast v14, Ljava/lang/Iterable;

    .line 147
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9c
    :goto_9c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_bd

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/Pair;

    .line 44
    invoke-virtual/range {v16 .. v16}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-virtual/range {v16 .. v16}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getDuration()J

    move-result-wide v16

    cmp-long v16, v16, v10

    if-lez v16, :cond_9c

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_bc
    move-object v15, v0

    .line 49
    :cond_bd
    sget-object v4, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============== \u6a21\u677f\u540d\u79f0\uff1a"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u5f00\u59cb==============="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "\u69fd\u4f4d\u6570\u91cf\uff1a"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getCategory()Ljava/util/List;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Iterable;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const-string v17, ","

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "\u5206\u7c7b\u8981\u6c42\uff1a"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u69fd\u4f4d\u65f6\u957f\u6700\u5927\u503c\uff1a"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v10, "\u7b26\u5408\u65f6\u957f\u7d20\u6750\u6570\u91cf\uff1a"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "\u6210\u7247\u6240\u9700\u6700\u5c0f\u69fd\u4f4d\u6570\uff1a"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, " "

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, " \u7ed3\u675f===============\n \n "

    const-string v14, "\u6a21\u677f:"

    if-ge v10, v13, :cond_192

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \u69fd\u4f4d\u65f6\u957f\u4e0d\u5339\u914d"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_72

    .line 63
    :cond_192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    const-string v13, " \u6743\u91cd:"

    move/from16 v16, v1

    const-string v1, ": \u6700\u9ad8\u5206index:"

    move-object/from16 v17, v2

    const-string v2, " \u5339\u914d\u65f6\u957f"

    move/from16 v18, v3

    const-string v3, " end:"

    move-object/from16 v19, v6

    const-string v6, ": \u5339\u914d\u8303\u56f4: start:"

    move/from16 v20, v7

    const-string v7, " \u5e73\u5747\u5206:"

    const/16 v21, 0x0

    move-object/from16 v22, v11

    const-string v11, "\u69fd\u4f4d"

    if-gt v10, v12, :cond_294

    .line 68
    check-cast v15, Ljava/lang/Iterable;

    .line 151
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v12, v21

    const/4 v15, 0x0

    :goto_1c2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_28b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v23, v12, 0x1

    if-gez v12, :cond_1d3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1d3
    check-cast v21, Lkotlin/Pair;

    move-object/from16 v24, v10

    .line 69
    invoke-virtual {v8}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    move-object/from16 v25, v14

    move/from16 v26, v15

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    long-to-int v10, v14

    .line 70
    sget-object v14, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v15, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    move-object/from16 v27, v5

    .line 72
    new-instance v5, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;

    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v28}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getCategory()Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v10, v8}, Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;-><init>(ILjava/util/List;)V

    .line 73
    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 74
    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    invoke-virtual {v10}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    .line 71
    invoke-virtual {v15, v5, v8, v2}, Lcom/volcengine/ck/highlight/HLSDK;->extract(Lcom/volcengine/ck/highlight/config/HLExtractorRequirement;Ljava/util/List;I)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getWeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getAverageScore()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v9, v3}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v14, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    invoke-virtual/range {v21 .. v21}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-direct {v3, v5, v2}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;-><init>(Lcom/volcengine/ck/highlight/data/RecognizeMedia;Lcom/volcengine/ck/highlight/data/HLExtractorResult;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getScore()F

    move-result v2

    add-float v15, v26, v2

    move/from16 v12, v23

    move-object/from16 v10, v24

    move-object/from16 v14, v25

    move-object/from16 v5, v27

    move-object/from16 v8, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    goto/16 :goto_1c2

    :cond_28b
    move-object/from16 v27, v5

    move-object/from16 v25, v14

    move/from16 v26, v15

    move-object v3, v8

    goto/16 :goto_382

    :cond_294
    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v27, v5

    move-object/from16 v28, v8

    move-object/from16 v25, v14

    .line 86
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 89
    invoke-virtual/range {v28 .. v28}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 90
    invoke-virtual/range {v28 .. v28}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getSegmentDurations()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 154
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v10, v21

    move v12, v10

    const/4 v8, 0x0

    :goto_2b8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_37c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v21, v10, 0x1

    if-gez v10, :cond_2c9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2c9
    check-cast v14, Ljava/lang/Number;

    move/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-int v14, v24, v21

    sub-int v14, v23, v14

    move-object/from16 v26, v5

    .line 92
    sget-object v5, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    move/from16 v31, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v32, v6

    move-object/from16 v6, v30

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v29

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v8, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    .line 97
    invoke-interface {v15, v12, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    long-to-int v2, v2

    move-object/from16 v3, v28

    .line 93
    invoke-direct {v8, v3, v12, v14, v2}, Lcom/volcengine/ck/highlight/utils/HLMUtils;->findHLResult(Lcom/volcengine/ck/moment/base/CKMomentTemplate;ILjava/util/List;I)Lkotlin/Pair;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    invoke-virtual {v8}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->getExtractorResult()Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v8

    .line 101
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getWeight()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getAverageScore()F

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5, v9, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v8}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getScore()F

    move-result v5

    add-float v8, v31, v5

    .line 105
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v12, v2, 0x1

    move/from16 v10, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v32

    goto/16 :goto_2b8

    :cond_37c
    move/from16 v31, v8

    move-object/from16 v3, v28

    move/from16 v15, v31

    .line 110
    :goto_382
    sget-object v0, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " totalScore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  \u7d20\u6750\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v15, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v0, v15, v20

    if-lez v0, :cond_3ee

    .line 114
    new-instance v6, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    invoke-direct {v6, v3, v4}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;-><init>(Lcom/volcengine/ck/moment/base/CKMomentTemplate;Ljava/util/List;)V

    move-object/from16 v0, p2

    move v7, v15

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_26

    :cond_3ee
    :goto_3ee
    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    goto/16 :goto_26

    :cond_3fc
    move-object/from16 v19, v6

    .line 117
    sget-object v0, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    const-string v1, "\u7a7a\u6a21\u677f"

    if-nez v19, :cond_405

    goto :goto_414

    :cond_405
    invoke-virtual/range {v19 .. v19}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;->getTemplate()Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    move-result-object v2

    if-nez v2, :cond_40c

    goto :goto_414

    :cond_40c
    invoke-virtual {v2}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_413

    goto :goto_414

    :cond_413
    move-object v1, v2

    :goto_414
    const-string v2, "\u6700\u7ec8\u6a21\u677f\uff1a"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method
