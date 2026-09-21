.class public final Lcom/volcengine/ck/highlight/impl/DefaultTemplateFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/ITemplateFinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findSuitedTemplate(Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ">;)",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;"
        }
    .end annotation

    const-string v0, "mediaList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 23
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 59
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    .line 24
    sget-object v5, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {v5, v4}, Lcom/volcengine/ck/highlight/HLSDK;->recognize(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;

    move-result-object v5

    .line 25
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 22
    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 28
    sget-object v1, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    const-string v2, "\u62bd\u5e27+\u7b97\u6cd5\u8bc6\u522b\u5f00\u59cb"

    const-string v5, "HLMPerf"

    invoke-virtual {v1, v5, v2}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v2, :cond_5e

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 64
    check-cast v7, Lkotlin/Pair;

    .line 29
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 1446
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_48

    .line 29
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 30
    sget-object v2, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u603b\u8017\u65f6:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " \u62bd\u5e27\u603b\u6570\u91cf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u5e73\u5747\u8017\u65f6:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v7, v1

    div-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "\u62bd\u5e27+\u7b97\u6cd5\u8bc6\u522b\u7ed3\u675f"

    invoke-virtual {v2, v5, v1}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/volcengine/ck/highlight/impl/DefaultTemplateFinder;->findSuitedTemplate(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object p0

    return-object p0
.end method

.method public findSuitedTemplate(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
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

    const-string v0, "mediaList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "results"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/impl/DefaultTemplateFinder;->getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/ITemplateProvider;->provideTemplateList()Ljava/util/List;

    move-result-object p0

    .line 40
    sget-object p1, Lcom/volcengine/ck/highlight/HLLog;->INSTANCE:Lcom/volcengine/ck/highlight/HLLog;

    const-string v0, "\u6a21\u677f\u5339\u914d\u5f00\u59cb"

    const-string v1, "HLMPerf"

    invoke-virtual {p1, v1, v0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    sget-object v0, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    invoke-virtual {v0, p0, p2}, Lcom/volcengine/ck/highlight/utils/HLMUtils;->matchedTemplateAndMediaItem(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object p2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u603b\u8017\u65f6:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " \u6a21\u677f\u6570\u91cf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string p0, "\u6a21\u677f\u5339\u914d\u7ed3\u675f"

    invoke-virtual {p1, v1, p0}, Lcom/volcengine/ck/highlight/HLLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;
    .registers 1

    .line 51
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object p0

    return-object p0
.end method
