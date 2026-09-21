.class public final Lcom/cutsame/solution/source/AdvanceEditorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/source/AdvanceEditorCompat$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

.field public static final aiMattingCache:Ljava/lang/String;

.field public static final jsonParser$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;

    invoke-direct {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v1}, Lcom/cutsame/solution/init/CutSameSolution;->getWorkSpaceConfig$CutSameIF_release()Lcom/cutsame/solution/config/WorkSpaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/config/WorkSpaceConfig;->getWorkSpaceDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->GAME_PLAY:Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateFilesManager$Directory;->getDirName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ai_matting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->aiMattingCache:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->jsonParser$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/JsonParser;
    .registers 1

    .line 1
    sget-object p0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->jsonParser$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonParser;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "MD5"

    .line 2
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_31

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigInteger(1, md.digest(\u2026yteArray())).toString(16)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x20

    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final compatibleAdvanceEditor(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Z)V
    .registers 21

    move-object/from16 v1, p1

    const-string v0, "nleModel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCover()Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v0, :cond_44

    .line 2
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>()V

    .line 3
    invoke-virtual {v0, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 4
    sget-object v6, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v0, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 5
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    new-instance v6, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;

    invoke-direct {v6}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;-><init>()V

    .line 8
    new-instance v7, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    invoke-direct {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;-><init>()V

    .line 9
    sget-object v8, Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;->VIDEO_FRAME:Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;

    invoke-virtual {v7, v8}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->setType(Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;)V

    .line 10
    invoke-virtual {v7, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->setImage(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    .line 12
    invoke-virtual {v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->setCoverMaterial(Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;)V

    .line 16
    invoke-virtual {v6, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->setVideoFrameTime(J)V

    const/high16 v0, 0x3f100000    # 0.5625f

    .line 17
    invoke-virtual {v6, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;->setCanvasRatio(F)V

    .line 18
    invoke-virtual {v6, v5}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setEnable(Z)V

    .line 20
    invoke-virtual {v1, v6}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->setCover(Lcom/bytedance/ies/nle/editor_jni/NLEVideoFrameModel;)V

    .line 33
    :cond_44
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v0

    if-nez v0, :cond_4b

    return-void

    .line 220
    :cond_4b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_621

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 221
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v8

    sget-object v9, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->NONE:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v8, v9, :cond_73

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 222
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    goto/16 :goto_61a

    .line 225
    :cond_73
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->setExtraTrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrackType;)V

    .line 226
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v8

    if-nez v8, :cond_82

    const/4 v8, -0x1

    goto :goto_8a

    :cond_82
    sget-object v9, Lcom/cutsame/solution/source/AdvanceEditorCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    :goto_8a
    const-string v9, ".dat"

    const-string v10, "file.path"

    const-string v11, "track"

    const/4 v12, 0x2

    const-string v13, "track.slots"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v8, v14, :cond_3ed

    if-eq v8, v12, :cond_33a

    const/4 v9, 0x3

    if-eq v8, v9, :cond_167

    const/4 v9, 0x4

    if-eq v8, v9, :cond_a1

    goto/16 :goto_61a

    .line 367
    :cond_a1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "zh"

    .line 368
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b4

    const-string v8, "Adjust"

    goto :goto_b6

    :cond_b4
    const-string v8, "\u8c03\u8282"

    :goto_b6
    add-int/lit8 v7, v7, 0x1

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v9

    if-nez v9, :cond_c7

    goto :goto_126

    .line 376
    :cond_c7
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v10

    if-lez v10, :cond_ce

    goto :goto_cf

    :cond_ce
    move-object v9, v15

    :goto_cf
    if-nez v9, :cond_d2

    goto :goto_126

    .line 377
    :cond_d2
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v9, :cond_db

    goto :goto_126

    .line 378
    :cond_db
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v10

    const-string v11, "it.filters"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_103

    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object v10

    sget-object v11, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->ADJUST:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    if-ne v10, v11, :cond_103

    goto :goto_104

    :cond_103
    move-object v9, v15

    :goto_104
    if-nez v9, :cond_107

    goto :goto_126

    .line 380
    :cond_107
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->setFilterName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v9

    invoke-static {v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v9

    if-nez v9, :cond_121

    goto :goto_126

    .line 382
    :cond_121
    invoke-virtual {v9, v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->setFilterName(Ljava/lang/String;)V

    .line 383
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 386
    :goto_126
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v8

    if-lez v8, :cond_131

    move-object v15, v0

    :cond_131
    if-nez v15, :cond_135

    goto/16 :goto_50

    .line 388
    :cond_135
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-nez v0, :cond_13f

    goto/16 :goto_50

    .line 389
    :cond_13f
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v8

    if-eqz v8, :cond_14b

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_163

    .line 390
    :cond_14b
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v8

    if-nez v8, :cond_156

    goto :goto_163

    .line 391
    :cond_156
    new-instance v9, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    invoke-direct {v9}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;-><init>()V

    .line 392
    invoke-virtual {v9, v8}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->setSegment(Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;)V

    .line 393
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 394
    invoke-virtual {v0, v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->addFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)V

    .line 399
    :cond_163
    :goto_163
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_50

    .line 400
    :cond_167
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "sticker"

    invoke-static {v0, v8}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setVETrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_17a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    if-eqz p2, :cond_1c2

    .line 529
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object v0

    if-nez v0, :cond_194

    goto :goto_1c2

    .line 530
    :cond_194
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getFonts()Lcom/bytedance/ies/nle/editor_jni/VecNLEResourceNodeSPtr;

    move-result-object v0

    const-string v10, "fonts"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a1
    :goto_1a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    const-string v11, "origin_res_id"

    .line 656
    invoke-virtual {v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a1

    .line 657
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_1bc

    goto :goto_1a1

    .line 658
    :cond_1bc
    invoke-virtual {v10, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceId(Ljava/lang/String;)V

    goto :goto_1a1

    .line 661
    :cond_1c0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 664
    :cond_1c2
    :goto_1c2
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object v10

    const-string v11, "fallback_font_path"

    if-nez v10, :cond_1d0

    goto/16 :goto_276

    .line 665
    :cond_1d0
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v12, "slot.uuid"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    if-eqz p2, :cond_20c

    .line 667
    :try_start_1de
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 669
    sget-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->a()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v1, v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 670
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f6
    .catchall {:try_start_1de .. :try_end_1f6} :catchall_1f7

    goto :goto_202

    :catchall_1f7
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 673
    :goto_202
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_209

    move-object v0, v15

    :cond_209
    check-cast v0, Lcom/google/gson/JsonArray;

    goto :goto_241

    .line 676
    :cond_20c
    :try_start_20c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 677
    sget-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->a()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->getFallbackFont()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_22c
    .catchall {:try_start_20c .. :try_end_22c} :catchall_22d

    goto :goto_238

    :catchall_22d
    move-exception v0

    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 680
    :goto_238
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23f

    move-object v0, v15

    :cond_23f
    check-cast v0, Lcom/google/gson/JsonArray;

    :goto_241
    if-nez v0, :cond_244

    goto :goto_274

    .line 786
    :cond_244
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_248
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_272

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    .line 787
    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyText;

    move-result-object v13

    if-nez v13, :cond_25b

    goto :goto_248

    :cond_25b
    new-instance v14, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    invoke-direct {v14}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>()V

    .line 788
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 789
    sget-object v12, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->FONT:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v14, v12}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 790
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 791
    invoke-virtual {v13, v14}, Lcom/bytedance/ies/nle/editor_jni/NLEStyText;->addFallbackFontList(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    goto :goto_248

    .line 895
    :cond_272
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 896
    :goto_274
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 897
    :goto_276
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object v9

    if-nez v9, :cond_282

    goto/16 :goto_17a

    .line 898
    :cond_282
    invoke-virtual {v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getTextClips()Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;

    move-result-object v0

    if-nez v0, :cond_289

    goto :goto_2ad

    .line 996
    :cond_289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;

    const-string v12, "textClip"

    .line 997
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v12

    const-string v13, "textClip.uuid"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    goto :goto_28d

    .line 1095
    :cond_2ab
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2ad
    if-eqz p2, :cond_2dd

    .line 1096
    :try_start_2af
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1098
    sget-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->a()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v1, v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1099
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2c7
    .catchall {:try_start_2af .. :try_end_2c7} :catchall_2c8

    goto :goto_2d3

    :catchall_2c8
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1102
    :goto_2d3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2da

    move-object v0, v15

    :cond_2da
    check-cast v0, Lcom/google/gson/JsonArray;

    goto :goto_30a

    .line 1104
    :cond_2dd
    :try_start_2dd
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1106
    sget-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    invoke-virtual {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->a()Lcom/google/gson/JsonParser;

    move-result-object v0

    invoke-virtual {v9, v11}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2f5
    .catchall {:try_start_2dd .. :try_end_2f5} :catchall_2f6

    goto :goto_301

    :catchall_2f6
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1110
    :goto_301
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_308

    move-object v0, v15

    :cond_308
    check-cast v0, Lcom/google/gson/JsonArray;

    :goto_30a
    if-nez v0, :cond_30d

    goto :goto_336

    .line 1197
    :cond_30d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_311
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_334

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 1198
    new-instance v11, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    invoke-direct {v11}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;-><init>()V

    .line 1199
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 1200
    sget-object v10, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->FONT:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    invoke-virtual {v11, v10}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 1201
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1202
    invoke-virtual {v9, v11}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->addFallbackFontList(Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;)V

    goto :goto_311

    .line 1287
    :cond_334
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1288
    :goto_336
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_17a

    .line 1289
    :cond_33a
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "audio"

    invoke-static {v0, v8}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setVETrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_352
    :goto_352
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_369

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1430
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v13

    if-eqz v13, :cond_352

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_352

    .line 1571
    :cond_369
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v11, v5

    :goto_36e
    if-ge v11, v0, :cond_61a

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1572
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_396

    const-wide/16 v2, 0x0

    goto :goto_36e

    .line 1712
    :cond_396
    array-length v3, v2

    move v14, v5

    :goto_398
    if-ge v14, v3, :cond_3e2

    aget-object v16, v2, v14

    move/from16 p0, v0

    .line 1713
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9, v5, v12, v15}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d7

    .line 1714
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v0

    .line 1715
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1716
    invoke-virtual {v0, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v0

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 1720
    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_3d9

    :cond_3d7
    move-object/from16 v16, v13

    :goto_3d9
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p0

    move-object/from16 v13, v16

    const/4 v5, 0x0

    const/4 v12, 0x2

    goto :goto_398

    :cond_3e2
    move/from16 p0, v0

    .line 1853
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v0, p0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x2

    goto :goto_36e

    .line 1854
    :cond_3ed
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "video"

    invoke-static {v0, v2}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setVETrackType(Lcom/bytedance/ies/nle/editor_jni/NLETrack;Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    if-nez v2, :cond_3ff

    move-object/from16 v17, v0

    goto/16 :goto_4e8

    .line 2034
    :cond_3ff
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_403
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 2035
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getMainTrack()Z

    move-result v8

    if-eqz v8, :cond_471

    .line 2036
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v8

    if-nez v8, :cond_420

    goto :goto_471

    .line 2038
    :cond_420
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object v11

    if-nez v11, :cond_428

    move-object v11, v15

    goto :goto_42c

    :cond_428
    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getType()Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;

    move-result-object v11

    :goto_42c
    sget-object v12, Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLECanvasType;

    if-ne v11, v12, :cond_46f

    .line 2039
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object v11

    if-nez v11, :cond_437

    goto :goto_46f

    :cond_437
    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getImage()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v11

    if-nez v11, :cond_43e

    goto :goto_46f

    :cond_43e
    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_445

    goto :goto_46f

    :cond_445
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_451

    goto :goto_452

    :cond_451
    move-object v11, v15

    :goto_452
    if-nez v11, :cond_455

    goto :goto_46f

    .line 2041
    :cond_455
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCanvasStyle()Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;

    move-result-object v8

    if-nez v8, :cond_45d

    move-object v8, v15

    goto :goto_461

    :cond_45d
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLEStyCanvas;->getImage()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v8

    :goto_461
    if-nez v8, :cond_464

    goto :goto_46d

    .line 2042
    :cond_464
    sget-object v12, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v12, v11}, Lcom/bytedance/ies/cutsame/util/FileUtils;->findImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2043
    invoke-virtual {v8, v11}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 2045
    :goto_46d
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2047
    :cond_46f
    :goto_46f
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2050
    :cond_471
    :goto_471
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v8

    if-nez v8, :cond_478

    goto :goto_403

    .line 2052
    :cond_478
    new-instance v11, Ljava/io/File;

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_493

    move-object/from16 v17, v0

    move-object v0, v2

    goto :goto_4db

    .line 2218
    :cond_493
    array-length v12, v11

    const/4 v14, 0x0

    :goto_495
    if-ge v14, v12, :cond_4d6

    aget-object v16, v11, v14

    .line 2219
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v5, v9, v1, v0, v15}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4cd

    .line 2220
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAudioFilter()Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentFilter;->getEffectSDKFilter()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v5

    .line 2221
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2222
    invoke-virtual {v5, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    move-object v0, v2

    .line 2225
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 2226
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_4ce

    :cond_4cd
    move-object v0, v2

    :goto_4ce
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v0, v17

    goto :goto_495

    :cond_4d6
    move-object/from16 v17, v0

    move-object v0, v2

    .line 2385
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2386
    :goto_4db
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v0, v17

    goto/16 :goto_403

    :cond_4e4
    move-object/from16 v17, v0

    .line 2542
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2543
    :goto_4e8
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2697
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4f8
    :goto_4f8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 2698
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    move-result-object v3

    if-eqz v3, :cond_4f8

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4f8

    .line 2854
    :cond_50f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_514
    if-ge v2, v0, :cond_59c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 2855
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v5

    .line 2856
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/cutsame/solution/source/AdvanceEditorCompat;->aiMattingCache:Ljava/lang/String;

    sget-object v10, Lcom/cutsame/solution/source/AdvanceEditorCompat;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat;

    const-string v11, "resourceFile"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/cutsame/solution/source/AdvanceEditorCompat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_545

    .line 2858
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 2860
    :cond_545
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setWorkSpace(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v5

    .line 2862
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v8

    if-nez v8, :cond_569

    const-wide/16 v8, 0x0

    goto :goto_56d

    :cond_569
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v8

    .line 2863
    :goto_56d
    invoke-virtual {v5, v8, v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setAiMattingCilpStart(J)V

    .line 2865
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v5

    .line 2866
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v8

    if-nez v8, :cond_584

    move-object v8, v15

    goto :goto_58c

    :cond_584
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_58c
    if-nez v8, :cond_593

    .line 2867
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v8

    goto :goto_597

    .line 2868
    :cond_593
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2869
    :goto_597
    invoke-virtual {v5, v8, v9}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setAiMattingCilpEnd(J)V

    goto/16 :goto_514

    .line 2875
    :cond_59c
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3018
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5ac
    :goto_5ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 3020
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;->size()I

    move-result v3

    if-lez v3, :cond_5ac

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5ac

    .line 3166
    :cond_5c7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5cc
    if-ge v2, v0, :cond_61a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 3167
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v5

    if-nez v5, :cond_5e1

    goto :goto_5cc

    .line 3168
    :cond_5e1
    invoke-static {v5}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMutable(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5ee

    goto :goto_5ef

    :cond_5ee
    move-object v5, v15

    :goto_5ef
    if-nez v5, :cond_5f2

    goto :goto_5cc

    .line 3170
    :cond_5f2
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    move-result-object v3

    const-string v5, "slot.chromaChannels"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3313
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_617

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;

    .line 3314
    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentChromaChannel;->getEffectSDKChroma()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    goto :goto_5ff

    .line 3316
    :cond_617
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5cc

    :cond_61a
    :goto_61a
    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_50

    .line 3477
    :cond_621
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method
