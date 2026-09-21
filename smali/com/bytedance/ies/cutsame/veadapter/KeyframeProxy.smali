.class public final Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;,
        Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$WhenMappings;
    }
.end annotation


# instance fields
.field private final adjustTypes$delegate:Lkotlin/Lazy;

.field private final editor:Lcom/ss/android/vesdk/VEEditor;

.field private final formatter:Lcom/bytedance/ies/cutsame/util/EffectFormatter;

.field private final keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

.field private final videoFilters$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;)V
    .registers 4

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyframeProxyCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    .line 15
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    .line 17
    sget-object p1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;->INSTANCE:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$adjustTypes$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->adjustTypes$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$videoFilters$2;-><init>(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->videoFilters$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/bytedance/ies/cutsame/util/EffectFormatter;

    invoke-direct {p1}, Lcom/bytedance/ies/cutsame/util/EffectFormatter;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->formatter:Lcom/bytedance/ies/cutsame/util/EffectFormatter;

    return-void
.end method

.method public static final synthetic access$getAdjustTypes(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;)Ljava/util/List;
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getAdjustTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getAdjustTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->adjustTypes$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getKeyframe(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
    .registers 9

    .line 278
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 279
    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, p5, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;-><init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V

    .line 280
    iget-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {p5, p1, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2a

    .line 287
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->getKeyFrameParam(II)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1c

    goto :goto_2a

    .line 288
    :cond_1c
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-nez p0, :cond_27

    goto :goto_2a

    .line 290
    :cond_27
    invoke-interface {v0, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_2a
    :goto_2a
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->setParams(Ljava/util/Map;)V

    return-object v1
.end method

.method private final getVideoFilters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->videoFilters$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getVideoKeyframe(Ljava/lang/String;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
    .registers 9

    .line 249
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getVideoFilters()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 38
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 249
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    const-string v1, "color_canvas"

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v4, p1, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-gez v4, :cond_54

    .line 258
    const-string v4, "getSegmentKeyframeState ignore type: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cut.VEEditorAdapter.keyframe"

    invoke-static {v4, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 261
    :cond_54
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v5, v4, p2}, Lcom/ss/android/vesdk/VEEditor;->getKeyFrameParam(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5d

    goto :goto_34

    .line 262
    :cond_5d
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_64

    goto :goto_65

    :cond_64
    const/4 v4, 0x0

    :goto_65
    if-nez v4, :cond_68

    goto :goto_34

    .line 264
    :cond_68
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 267
    :cond_6c
    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;->VIDEO:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-direct {p0, p2, p1, v0, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;-><init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->setParams(Ljava/util/Map;)V

    return-object p0

    .line 38
    :cond_77
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 112
    invoke-static {p8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    goto :goto_1c

    :cond_1b
    move-object p8, p7

    .line 113
    :goto_1c
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v0, p1, p6, p8}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_32

    .line 119
    const-string p0, "setKeyframe: index error filterType:"

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cut.VEEditorAdapter.keyframe"

    invoke-static {p1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 122
    :cond_32
    iget-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->formatter:Lcom/bytedance/ies/cutsame/util/EffectFormatter;

    invoke-virtual {p6, p4, p7}, Lcom/bytedance/ies/cutsame/util/EffectFormatter;->format$CutSame_release(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 123
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    move v2, p5

    move-object p5, p4

    move-wide p3, p2

    move p2, v2

    # invokes: Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxyKt;->setKeyframe(Lcom/ss/android/vesdk/VEEditor;IIJLjava/lang/String;)I
    invoke-static/range {p0 .. p5}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxyKt;->access$setKeyframe(Lcom/ss/android/vesdk/VEEditor;IIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic setKeyframe$default(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I
    .registers 21

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_11

    .line 109
    const-string v0, ""

    move-object v9, v0

    :goto_7
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    goto :goto_14

    :cond_11
    move-object/from16 v9, p8

    goto :goto_7

    .line 102
    :goto_14
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final setVideoKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)I
    .registers 12

    .line 165
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getVideoClipIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v0, -0x2b03

    if-ne v3, v0, :cond_14

    .line 167
    const-string p0, "cut.VEEditorAdapter.keyframe"

    const-string p1, "setKeyframe: index error"

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 170
    :cond_14
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getVideoFilters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 325
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v4, p1, v2, v1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-gez v2, :cond_34

    goto :goto_1e

    .line 176
    :cond_34
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->formatter:Lcom/bytedance/ies/cutsame/util/EffectFormatter;

    invoke-virtual {v4, p4, v1}, Lcom/bytedance/ies/cutsame/util/EffectFormatter;->format$CutSame_release(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    move-wide v4, p2

    # invokes: Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxyKt;->setKeyframe(Lcom/ss/android/vesdk/VEEditor;IIJLjava/lang/String;)I
    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxyKt;->access$setKeyframe(Lcom/ss/android/vesdk/VEEditor;IIJLjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_45

    const/4 p0, -0x1

    return p0

    :cond_45
    move-wide p2, v4

    goto :goto_1e

    :cond_47
    return v2
.end method


# virtual methods
.method public final getSegmentKeyframe(Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
    .registers 15

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "SEGMENT_ID_VIDEO_MAIN_TRACK"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_de

    .line 244
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected keyframe type:"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :pswitch_25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 227
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    invoke-direct {v4, p3, p1, p2, v3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;-><init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V

    .line 228
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getAdjustTypes()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 328
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 229
    iget-object v6, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-interface {v6, v2, v3, v7}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    if-gez v6, :cond_62

    goto :goto_39

    .line 235
    :cond_62
    iget-object v7, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v7, v6, p3}, Lcom/ss/android/vesdk/VEEditor;->getKeyFrameParam(II)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6b

    goto :goto_39

    .line 236
    :cond_6b
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72

    goto :goto_73

    :cond_72
    move-object v6, v1

    :goto_73
    if-nez v6, :cond_76

    goto :goto_39

    .line 238
    :cond_76
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 241
    :cond_7a
    invoke-virtual {v4, v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->setParams(Ljava/util/Map;)V

    return-object v4

    .line 208
    :pswitch_7e
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 209
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    invoke-direct {v4, p3, p1, p2, v3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;-><init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V

    .line 210
    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    .line 213
    const-string v5, "global_color_filter&"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-interface {p2, v2, v3, p1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_ae

    .line 216
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p1, p3}, Lcom/ss/android/vesdk/VEEditor;->getKeyFrameParam(II)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9f

    goto :goto_ae

    .line 217
    :cond_9f
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a6

    move-object v1, p0

    :cond_a6
    if-nez v1, :cond_a9

    goto :goto_ae

    .line 219
    :cond_a9
    const-string p0, "global_color_filter"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_ae
    :goto_ae
    invoke-virtual {v4, v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->setParams(Ljava/util/Map;)V

    return-object v4

    :pswitch_b2
    const/4 v8, 0x2

    .line 204
    const-string v9, "text_sticker"

    move-object v5, p0

    move-object v6, p1

    move-object v10, p2

    move v7, p3

    .line 200
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getKeyframe(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0

    :pswitch_be
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v2, p3

    const/4 v3, 0x2

    .line 197
    const-string v4, "info_sticker"

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getKeyframe(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0

    :pswitch_ca
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v2, p3

    const/4 v3, 0x1

    .line 190
    const-string v4, "audio volume filter"

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getKeyframe(Ljava/lang/String;IILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0

    :pswitch_d6
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    .line 185
    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getVideoKeyframe(Ljava/lang/String;I)Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;

    move-result-object p0

    return-object p0

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_ca
        :pswitch_be
        :pswitch_b2
        :pswitch_7e
        :pswitch_25
    .end packed-switch
.end method

.method public final removeKeyframe(Ljava/lang/String;JILjava/lang/String;I)I
    .registers 9

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v0, p1, p4, p5}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 135
    const-string p4, " playHead:"

    const-string v0, "cut.VEEditorAdapter.keyframe"

    if-gez p1, :cond_32

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeKeyframe fail. filterType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 139
    :cond_32
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v1, p2

    invoke-virtual {p0, p1, p6, v1}, Lcom/ss/android/vesdk/VEEditor;->removeKeyFrameParam(III)I

    move-result p0

    if-eqz p0, :cond_5d

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "removeKeyframe fail. ret:"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " filterType:"

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return p0
.end method

.method public final removeVideoKeyframe(Ljava/lang/String;J)I
    .registers 10

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v0, p1}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getVideoClipIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x2b03

    .line 148
    const-string v2, "cut.VEEditorAdapter.keyframe"

    if-ne v0, v1, :cond_19

    .line 149
    const-string p0, "removeVideoKeyframe: index error"

    invoke-static {v2, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x14

    return p0

    .line 152
    :cond_19
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->getVideoFilters()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 323
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->keyframeProxyCallback:Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;

    invoke-interface {v5, p1, v4, v3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy$KeyframeProxyCallback;->getFilterIndex(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-gez v4, :cond_42

    .line 156
    const-string v4, "removeVideoKeyframe ignore filter:"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 159
    :cond_42
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->editor:Lcom/ss/android/vesdk/VEEditor;

    long-to-int v5, p2

    invoke-virtual {v3, v4, v0, v5}, Lcom/ss/android/vesdk/VEEditor;->removeKeyFrameParam(III)I

    goto :goto_23

    :cond_49
    return v4
.end method

.method public final setKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)I
    .registers 16

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    if-eqz v0, :cond_16

    move-object v0, p4

    check-cast v0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setVideoKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)I

    move-result v0

    return v0

    .line 48
    :cond_16
    instance-of v0, p4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;

    if-eqz v0, :cond_2b

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    const-string v7, "text_sticker"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe$default(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    return v0

    .line 56
    :cond_2b
    instance-of v0, p4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;

    if-eqz v0, :cond_40

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "audio volume filter"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe$default(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    return v0

    .line 64
    :cond_40
    instance-of v0, p4, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;

    if-eqz v0, :cond_55

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    const-string v7, "info_sticker"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v10}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe$default(Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_55
    const/4 v0, -0x1

    return v0
.end method

.method public final setKeyframe(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;)I
    .registers 16

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSegmentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frame"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p6, Lcom/bytedance/ies/cutsameconsumer/templatemodel/FilterKeyframe;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1c

    .line 89
    :cond_1a
    instance-of v0, p6, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AdjustKeyframe;

    :goto_1c
    if-eqz v0, :cond_2b

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    move-wide v2, p3

    move-object v7, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProxy;->setKeyframe(Ljava/lang/String;JLcom/bytedance/ies/cutsameconsumer/templatemodel/Keyframe;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2b
    const/4 v0, -0x1

    return v0
.end method
