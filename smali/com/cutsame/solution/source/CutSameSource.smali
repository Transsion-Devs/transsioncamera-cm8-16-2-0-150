.class public final Lcom/cutsame/solution/source/CutSameSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/cutsame/solution/config/EffectFetcherConfig;

.field public final c:Lcom/cutsame/solution/source/SourceInfo;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:D

.field public final f:D

.field public volatile g:Z

.field public h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public final k:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cutsame/solution/config/EffectFetcherConfig;Lcom/cutsame/solution/source/SourceInfo;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectFetcherConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/cutsame/solution/source/CutSameSource;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    .line 4
    iput-object p3, p0, Lcom/cutsame/solution/source/CutSameSource;->c:Lcom/cutsame/solution/source/SourceInfo;

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->d:Lkotlin/coroutines/CoroutineContext;

    const-wide p1, 0x3fc999999999999aL    # 0.2

    .line 7
    iput-wide p1, p0, Lcom/cutsame/solution/source/CutSameSource;->e:D

    const-wide p1, 0x3fe3333333333333L    # 0.6

    .line 8
    iput-wide p1, p0, Lcom/cutsame/solution/source/CutSameSource;->f:D

    .line 20
    new-instance p1, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;

    invoke-direct {p1, p0}, Lcom/cutsame/solution/source/CutSameSource$templateResource$2;-><init>(Lcom/cutsame/solution/source/CutSameSource;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/cutsame/solution/source/CutSameSource;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getEffectFetcherConfig$p(Lcom/cutsame/solution/source/CutSameSource;)Lcom/cutsame/solution/config/EffectFetcherConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->b:Lcom/cutsame/solution/config/EffectFetcherConfig;

    return-object p0
.end method

.method public static final synthetic access$setOriMediaItemList$p(Lcom/cutsame/solution/source/CutSameSource;Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setOriModel$p(Lcom/cutsame/solution/source/CutSameSource;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-void
.end method

.method public static final synthetic access$setOriTextItemList$p(Lcom/cutsame/solution/source/CutSameSource;Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cutsame/solution/source/CutSameSource;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/cutsame/solution/source/resource/TemplateResource;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/source/resource/TemplateResource;

    return-object p0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 40

    move-object/from16 v0, p1

    .line 559
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_18

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_18
    check-cast v3, Lcom/ss/android/ugc/cut_ui/MediaItem;

    const/4 v5, 0x0

    if-nez p2, :cond_1e

    goto :goto_40

    .line 560
    :cond_1e
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/ss/android/ugc/cut_ui/MediaItem;

    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    move-object v5, v7

    :cond_3e
    check-cast v5, Lcom/ss/android/ugc/cut_ui/MediaItem;

    :goto_40
    if-eqz v5, :cond_8e

    .line 562
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 563
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getDuration()J

    move-result-wide v20

    .line 564
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide v8

    .line 565
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isSubVideo()Z

    move-result v12

    .line 566
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse()Z

    move-result v13

    .line 567
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetEndTime()J

    move-result-wide v31

    .line 568
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipWidth()I

    move-result v18

    .line 569
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipHeight()I

    move-result v19

    .line 570
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getRelation_video_group()Ljava/lang/String;

    move-result-object v34

    const v35, 0x2fe3cd

    const/16 v36, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    .line 571
    invoke-static/range {v6 .. v36}, Lcom/ss/android/ugc/cut_ui/MediaItem;->copy$default(Lcom/ss/android/ugc/cut_ui/MediaItem;Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/MediaItem;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    move v2, v4

    goto/16 :goto_7

    :cond_91
    return-void
.end method

.method public final cancelCompose()V
    .registers 3

    const-string v0, "CutSameSource"

    const-string v1, "cancelCompose"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cutsame/solution/source/CutSameSource;->g:Z

    .line 3
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->a()Lcom/cutsame/solution/source/resource/TemplateResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->cancel()V

    .line 4
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->cancel()V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->d:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final getOriMediaItemList$CutSameIF_release()Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getOriModel$CutSameIF_release()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    return-object p0
.end method

.method public final getSourceInfo$CutSameIF_release()Lcom/cutsame/solution/source/SourceInfo;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->c:Lcom/cutsame/solution/source/SourceInfo;

    return-object p0
.end method

.method public final prepareNLEModel$CutSameIF_release(Ljava/util/List;Ljava/util/List;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "prepareNLEModel oriModel: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CutSameSource"

    invoke-static {v2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "prepareNLEModel mediaItems: "

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareNLEModel source: type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cutsame/solution/source/CutSameSource;->c:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v3}, Lcom/cutsame/solution/source/SourceInfo;->getTemplateType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cutsame/solution/source/CutSameSource;->c:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {v3}, Lcom/cutsame/solution/source/SourceInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v2, 0x0

    if-nez v0, :cond_4e

    return-object v2

    :cond_4e
    if-nez p2, :cond_52

    .line 12
    iget-object p2, p0, Lcom/cutsame/solution/source/CutSameSource;->j:Ljava/util/List;

    :cond_52
    if-nez p1, :cond_55

    goto :goto_64

    .line 13
    :cond_55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5c

    goto :goto_64

    .line 14
    :cond_5c
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->getOriMediaItemList$CutSameIF_release()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/cutsame/solution/source/CutSameSource;->a(Ljava/util/List;Ljava/util/List;)V

    move-object v2, p1

    .line 15
    :goto_64
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->a()Lcom/cutsame/solution/source/resource/TemplateResource;

    move-result-object p1

    invoke-virtual {p1, v2, p2, v0}, Lcom/cutsame/solution/source/resource/TemplateResource;->initMaterial(Ljava/util/List;Ljava/util/List;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    if-nez v2, :cond_6f

    goto :goto_7e

    .line 16
    :cond_6f
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/ugc/cut_ui/MediaItem;

    if-nez p2, :cond_78

    goto :goto_7e

    :cond_78
    invoke-virtual {p2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getAlignMode()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_80

    .line 15
    :goto_7e
    const-string p2, "align_canvas"

    .line 16
    :cond_80
    invoke-virtual {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->setAlignMode(Ljava/lang/String;)V

    .line 18
    sget-object p2, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    iget-object p0, p0, Lcom/cutsame/solution/source/CutSameSource;->c:Lcom/cutsame/solution/source/SourceInfo;

    invoke-virtual {p0}, Lcom/cutsame/solution/source/SourceInfo;->isNLETemplate()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->compatibleAdvanceEditor(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Z)V

    return-object p1
.end method

.method public final prepareSource(Lcom/cutsame/solution/source/PrepareSourceListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CutSameSource"

    const-string v1, "prepareSource start"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->a()Lcom/cutsame/solution/source/resource/TemplateResource;

    move-result-object v0

    new-instance v1, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;

    invoke-direct {v1, p1, p0}, Lcom/cutsame/solution/source/CutSameSource$prepareSource$1;-><init>(Lcom/cutsame/solution/source/PrepareSourceListener;Lcom/cutsame/solution/source/CutSameSource;)V

    invoke-virtual {v0, v1}, Lcom/cutsame/solution/source/resource/TemplateResource;->prepareSource(Lcom/cutsame/solution/source/resource/ResourcePrepareListener;)V

    return-void
.end method

.method public final release()V
    .registers 3

    const-string v0, "CutSameSource release "

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSameSource"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    :goto_13
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/cutsame/solution/source/CutSameSource;->h:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    .line 4
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->cancelCompose()V

    .line 5
    invoke-virtual {p0}, Lcom/cutsame/solution/source/CutSameSource;->a()Lcom/cutsame/solution/source/resource/TemplateResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cutsame/solution/source/resource/TemplateResource;->release()V

    return-void
.end method
