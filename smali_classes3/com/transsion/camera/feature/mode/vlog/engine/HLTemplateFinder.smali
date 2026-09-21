.class public Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/ITemplateFinder;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_HLFinder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSuitedTemplate(Ljava/util/ArrayList;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 48
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "findSuitedTemplate START"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v2

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/HLMTemplateProvider;->provideCKMomentTemplateWrapList()Ljava/util/List;

    move-result-object v4

    .line 53
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;

    .line 54
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getOrientation()I

    move-result v6

    if-ne v2, v6, :cond_21

    .line 57
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getSegmentDurations()Ljava/util/List;

    move-result-object v6

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :goto_3c
    if-ge v8, v7, :cond_5a

    .line 60
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v11}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_57

    goto :goto_21

    :cond_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 67
    :cond_5a
    new-instance v9, Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getId()Ljava/lang/String;

    move-result-object v10

    .line 68
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getCover()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getOrderId()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getSegmentDurations()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getCategory()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getExtra()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v9 .. v16}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->setAny(Ljava/lang/Object;)V

    .line 71
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 77
    :cond_86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_cb

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_95
    if-ge v1, v5, :cond_c4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 81
    new-instance v7, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_width()I

    move-result v11

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getVideo_height()I

    move-result v12

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v13

    const-string v8, ""

    const/4 v10, 0x2

    invoke-direct/range {v7 .. v14}, Lcom/volcengine/ck/highlight/data/RecognizeMedia;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJ)V

    .line 83
    new-instance v8, Lkotlin/Pair;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getHlResults()Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    .line 86
    :cond_c4
    sget-object v0, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    invoke-virtual {v0, v3, v4}, Lcom/volcengine/ck/highlight/utils/HLMUtils;->matchedTemplateAndMediaItem(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object v0

    goto :goto_cc

    :cond_cb
    const/4 v0, 0x0

    .line 89
    :goto_cc
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSuitedTemplate END, intentTemplateSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public findSuitedTemplate(Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/RecognizeMedia;",
            ">;)",
            "Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/volcengine/ck/highlight/data/RecognizeMedia;

    .line 28
    sget-object v2, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {v2, v1}, Lcom/volcengine/ck/highlight/HLSDK;->recognize(Lcom/volcengine/ck/highlight/data/RecognizeMedia;)Ljava/util/List;

    move-result-object v2

    .line 29
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 32
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/ITemplateProvider;->provideTemplateList()Ljava/util/List;

    move-result-object p0

    .line 34
    sget-object p1, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    invoke-virtual {p1, p0, v0}, Lcom/volcengine/ck/highlight/utils/HLMUtils;->matchedTemplateAndMediaItem(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object p0

    return-object p0
.end method

.method public findSuitedTemplate(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;
    .registers 4
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

    .line 40
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "findSuitedTemplate START"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/volcengine/ck/highlight/api/ITemplateProvider;->provideTemplateList()Ljava/util/List;

    move-result-object p0

    .line 42
    sget-object v0, Lcom/volcengine/ck/highlight/utils/HLMUtils;->INSTANCE:Lcom/volcengine/ck/highlight/utils/HLMUtils;

    invoke-virtual {v0, p0, p2}, Lcom/volcengine/ck/highlight/utils/HLMUtils;->matchedTemplateAndMediaItem(Ljava/util/List;Ljava/util/List;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object p0

    .line 43
    const-string p2, "findSuitedTemplate END"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;
    .registers 1

    .line 95
    sget-object p0, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/HLSDK;->getConfig()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/volcengine/ck/highlight/config/HLSDKConfig;->getTemplateProvider()Lcom/volcengine/ck/highlight/api/ITemplateProvider;

    move-result-object p0

    return-object p0
.end method
