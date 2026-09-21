.class public interface abstract Lcom/volcengine/ck/highlight/api/ITemplateFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract findSuitedTemplate(Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ">;)",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;"
        }
    .end annotation
.end method

.method public abstract findSuitedTemplate(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
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
.end method

.method public abstract getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;
.end method
