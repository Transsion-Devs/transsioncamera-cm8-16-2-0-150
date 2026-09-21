.class public abstract Lcom/cutsame/solution/utils/NLETemplateUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/utils/NLETemplateUtilsKt$WhenMappings;
    }
.end annotation


# static fields
.field public static final aiMattingCache:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

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

    sput-object v0, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->aiMattingCache:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/math/BigInteger;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_31

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {v1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BigInteger(1, md.digest(\u2026yteArray())).toString(16)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static final createMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 48

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v7, p0

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->getMutableAssetItems()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v0

    .line 3
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->getTemplateInfo()Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/TemplateInfo;->getMutableItemss()Lcom/bytedance/ies/nle/editor_jni/VecNLEMappingNode;

    move-result-object v9

    const-string v2, "nleSlots"

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 335
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v13

    if-nez v13, :cond_40

    goto :goto_28

    :cond_40
    const-string v0, "mutableItems"

    .line 336
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;

    .line 666
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;->getKeyUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_67

    :cond_66
    move-object v2, v3

    .line 667
    :goto_67
    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;

    const-string v14, ""

    if-nez v2, :cond_6e

    goto :goto_74

    .line 670
    :cond_6e
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEMappingNode;->getReproductionID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_77

    :goto_74
    move-object/from16 v43, v14

    goto :goto_79

    :cond_77
    move-object/from16 v43, v0

    .line 671
    :goto_79
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slot.uuid"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v0}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    const-string v0, "true"

    .line 672
    invoke-static {v13, v0}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMutable(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v0

    if-nez v0, :cond_92

    move-object v0, v3

    goto :goto_98

    .line 674
    :cond_92
    sget-object v2, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;->clip2ItemCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v0

    :goto_98
    if-nez v0, :cond_b6

    .line 675
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    move-result-object v0

    if-nez v0, :cond_a1

    goto :goto_a7

    .line 676
    :cond_a1
    sget-object v2, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;->crop2ItemCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v3

    :goto_a7
    if-nez v3, :cond_b5

    .line 677
    sget-object v0, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    invoke-direct {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;-><init>()V

    invoke-virtual {v0, v2}, Lcom/bytedance/ies/cutsame/util/CropUtils;->clip2ItemCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v0

    goto :goto_b6

    :cond_b5
    move-object v0, v3

    .line 679
    :cond_b6
    :goto_b6
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    if-nez v2, :cond_c5

    .line 680
    sget-object v2, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;->itemCrop2Clip(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setClip(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V

    .line 683
    :cond_c5
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getCrop()Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    move-result-object v2

    if-nez v2, :cond_d4

    .line 684
    sget-object v2, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    invoke-virtual {v2, v0}, Lcom/bytedance/ies/cutsame/util/CropUtils;->itemCrop2Crop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V

    .line 688
    :cond_d4
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getAlignMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "align_video"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    if-eqz v2, :cond_113

    .line 690
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getRightUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getX()F

    move-result v2

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getLeftUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getX()F

    move-result v15

    sub-float/2addr v2, v15

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    float-to-double v4, v2

    div-double v4, v4, v16

    .line 691
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    move-object/from16 v19, v12

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getWidth()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v11, v4

    double-to-int v2, v11

    move v5, v2

    goto :goto_118

    :cond_113
    move-object/from16 v19, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    .line 695
    :goto_118
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getAlignMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    if-eqz v2, :cond_153

    .line 697
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getLeftUpper()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getY()F

    move-result v2

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->getClip()Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;->getLeftLower()Lcom/bytedance/ies/nle/editor_jni/NLEPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEPoint;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-double v11, v2

    div-double v11, v11, v16

    .line 698
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    move/from16 v27, v5

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getHeight()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v11

    double-to-int v4, v4

    move v6, v4

    goto :goto_156

    :cond_153
    move/from16 v27, v5

    const/4 v6, 0x0

    .line 701
    :goto_156
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getAlignMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    sget-object v2, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    .line 703
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {v2, v1, v3}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 709
    sget-object v0, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    .line 711
    new-instance v2, Lcom/ss/android/ugc/cut_ui/ItemCrop;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4, v4}, Lcom/ss/android/ugc/cut_ui/ItemCrop;-><init>(FFFF)V

    .line 712
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getAlignMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this.alignMode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v4

    const-string v5, "segmentVideo.resource.resourceFile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v5, v27

    .line 714
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/util/CropUtils;->convertCrop(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v0

    :cond_196
    move-object/from16 v37, v0

    .line 725
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    .line 727
    invoke-virtual/range {v19 .. v19}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v11

    div-long v40, v11, v3

    .line 729
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getAlignMode()Ljava/lang/String;

    move-result-object v5

    .line 731
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getRewind()Z

    move-result v22

    const-string v11, "slot"

    move-object/from16 v12, v19

    .line 736
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getGamePlayName(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v24

    .line 737
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getVolume()F

    move-result v42

    .line 738
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v11

    move-wide v15, v1

    invoke-virtual {v11}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getWidth()J

    move-result-wide v1

    long-to-int v1, v1

    .line 739
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    move/from16 v25, v1

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getHeight()J

    move-result-wide v1

    long-to-int v1, v1

    .line 742
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v19

    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v28

    sub-long v19, v19, v28

    div-long v29, v19, v3

    .line 744
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getScale()F

    move-result v36

    .line 746
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceType()Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    move-result-object v2

    if-nez v2, :cond_1f3

    const/4 v2, -0x1

    :goto_1f1
    const/4 v3, 0x1

    goto :goto_1fc

    :cond_1f3
    sget-object v3, Lcom/cutsame/solution/utils/NLETemplateUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    goto :goto_1f1

    :goto_1fc
    if-eq v2, v3, :cond_209

    const/4 v3, 0x2

    if-eq v2, v3, :cond_206

    :goto_201
    move-object/from16 v38, v14

    move-wide/from16 v17, v15

    goto :goto_20c

    :cond_206
    const-string v14, "photo"

    goto :goto_201

    :cond_209
    const-string v14, "video"

    goto :goto_201

    .line 747
    :goto_20c
    new-instance v15, Lcom/ss/android/ugc/cut_ui/MediaItem;

    const-string v2, "uuid"

    .line 748
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "alignMode"

    .line 752
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v44, 0x86000

    const/16 v45, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v39, 0x0

    move-object/from16 v16, v0

    move/from16 v26, v1

    move-object/from16 v20, v5

    move/from16 v28, v6

    .line 753
    invoke-direct/range {v15 .. v45}, Lcom/ss/android/ugc/cut_ui/MediaItem;-><init>(Ljava/lang/String;JZLjava/lang/String;ZZILjava/lang/String;IIIIJJLjava/lang/String;JFLcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "createMediaItem[] = "

    .line 782
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NLETemplateUtils"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 784
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    goto/16 :goto_28

    .line 1068
    :cond_24a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_259

    new-instance v0, Lcom/cutsame/solution/utils/NLETemplateUtilsKt$createMediaItems$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt$createMediaItems$$inlined$sortBy$1;-><init>()V

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1069
    :cond_259
    invoke-static {v8}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final createTextItems(Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;)Ljava/util/ArrayList;
    .registers 32

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->getMutableTextItems()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    const-string v3, "nleSlots"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 246
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object v4

    const-string v5, "true"

    const-string v6, "NLETemplateUtils"

    const/16 v7, 0x3e8

    if-nez v4, :cond_af

    .line 263
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object v4

    if-nez v4, :cond_40

    goto :goto_19

    .line 264
    :cond_40
    invoke-virtual {v0, v3}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateModel;->getAllMutableTextClipsFromSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;

    move-result-object v4

    const-string v8, "textClips"

    .line 266
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;

    .line 488
    new-instance v9, Lcom/ss/android/ugc/cut_ui/TextItem;

    .line 489
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getDuration()J

    move-result-wide v10

    int-to-long v12, v7

    div-long/2addr v10, v12

    move-wide v14, v12

    .line 491
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v13

    const-string v12, "textClip.uuid"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v7

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    float-to-double v2, v7

    .line 493
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v16

    div-long v16, v16, v14

    .line 494
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;->getContent()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_82

    const-string v7, ""

    :cond_82
    move-object/from16 v18, v7

    move-object v7, v12

    const/4 v12, 0x1

    move-wide v14, v2

    .line 495
    invoke-direct/range {v9 .. v18}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

    const-string v2, "createTextTemplateItems "

    .line 503
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "textClip"

    .line 504
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    .line 506
    invoke-static {v8, v5}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMutable(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    .line 507
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    const/16 v7, 0x3e8

    goto :goto_4d

    :cond_af
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .line 508
    new-instance v21, Lcom/ss/android/ugc/cut_ui/TextItem;

    .line 509
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getDuration()J

    move-result-wide v2

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long v22, v2, v7

    .line 511
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slot.uuid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getRotation()F

    move-result v9

    float-to-double v9, v9

    .line 513
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v11

    div-long v28, v11, v7

    .line 514
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->getContent()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nleSegmentText.content"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x1

    move-object/from16 v25, v2

    move-object/from16 v30, v7

    move-wide/from16 v26, v9

    .line 515
    invoke-direct/range {v21 .. v30}, Lcom/ss/android/ugc/cut_ui/TextItem;-><init>(JZLjava/lang/String;DJLjava/lang/String;)V

    move-object/from16 v2, v21

    .line 523
    invoke-virtual/range {v20 .. v20}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getUUID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    .line 525
    invoke-static {v4, v5}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->setMutable(Lcom/bytedance/ies/nle/editor_jni/NLENode;Ljava/lang/String;)V

    const-string v3, "createTextItems "

    .line 526
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    goto/16 :goto_19

    .line 551
    :cond_105
    invoke-static {v1}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final getAiMattingCache()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->aiMattingCache:Ljava/lang/String;

    return-object v0
.end method

.method public static final insertMediaItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Landroid/content/Context;Ljava/util/List;)V
    .registers 20

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_233

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_233

    .line 2
    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object v0

    const-string v1, "this.tracks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 402
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v3, v4, :cond_2a

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 802
    :cond_43
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    :goto_49
    if-ge v1, v0, :cond_233

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v1, 0x1

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 803
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v3, "it.sortedSlots"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1203
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v13

    if-nez v13, :cond_78

    goto :goto_60

    .line 1204
    :cond_78
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ss/android/ugc/cut_ui/MediaItem;

    invoke-virtual {v4}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    goto :goto_99

    :cond_98
    const/4 v3, 0x0

    :goto_99
    move-object v14, v3

    check-cast v14, Lcom/ss/android/ugc/cut_ui/MediaItem;

    if-nez v14, :cond_9f

    goto :goto_60

    .line 1205
    :cond_9f
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getTargetStartTime()J

    move-result-wide v3

    const/16 v1, 0x3e8

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-virtual {v12, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    .line 1206
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCropScale()F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setScale(F)V

    .line 1208
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1209
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getReversedAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getReversedAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getOriDuration()J

    move-result-wide v3

    mul-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setDuration(J)V

    goto :goto_e5

    .line 1213
    :cond_da
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    .line 1215
    :goto_e5
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getWidth()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setWidth(J)V

    .line 1216
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setHeight(J)V

    .line 1217
    sget-object v1, Lcom/bytedance/ies/cutsame/util/CropUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/CropUtils;

    .line 1219
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getCrop()Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v3

    .line 1220
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getAlignMode()Ljava/lang/String;

    move-result-object v4

    move-wide v6, v5

    .line 1221
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v5

    move-wide v15, v6

    .line 1222
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipWidth()I

    move-result v6

    .line 1223
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getClipHeight()I

    move-result v7

    .line 1224
    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/util/CropUtils;->convertCrop(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/ItemCrop;Ljava/lang/String;Ljava/lang/String;II)Lcom/ss/android/ugc/cut_ui/ItemCrop;

    move-result-object v3

    .line 1232
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getOriDuration()J

    move-result-wide v4

    mul-long/2addr v4, v15

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setDuration(J)V

    .line 1233
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    .line 1234
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_138

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    goto :goto_145

    :cond_138
    const-string v5, "photo"

    .line 1235
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_143

    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->IMAGE:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    goto :goto_145

    .line 1236
    :cond_143
    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLEResType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLEResType;

    .line 1237
    :goto_145
    invoke-virtual {v2, v4}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceType(Lcom/bytedance/ies/nle/editor_jni/NLEResType;)V

    .line 1242
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/cutsame/util/CropUtils;->itemCrop2Clip(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setClip(Lcom/bytedance/ies/nle/editor_jni/NLEStyClip;)V

    .line 1243
    invoke-virtual {v1, v3}, Lcom/bytedance/ies/cutsame/util/CropUtils;->itemCrop2Crop(Lcom/ss/android/ugc/cut_ui/ItemCrop;)Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setCrop(Lcom/bytedance/ies/nle/editor_jni/NLEStyCrop;)V

    .line 1244
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSourceStartTime()J

    move-result-wide v1

    mul-long/2addr v1, v15

    invoke-virtual {v13, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipStart(J)V

    .line 1245
    invoke-virtual {v13}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v1

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getDuration()J

    move-result-wide v3

    mul-long/2addr v3, v15

    add-long/2addr v3, v1

    invoke-virtual {v13, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setTimeClipEnd(J)V

    .line 1246
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getVolume()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setVolume(F)V

    .line 1248
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getAIMatting()Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;

    move-result-object v1

    if-nez v1, :cond_179

    goto :goto_1d7

    .line 1249
    :cond_179
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegment;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v2

    .line 1250
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->getAiMattingCache()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceFile"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cutsame/solution/utils/NLETemplateUtilsKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a0

    .line 1252
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1254
    :cond_1a0
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setWorkSpace(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v2

    if-nez v2, :cond_1b2

    goto :goto_1c1

    .line 1259
    :cond_1b2
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipStart()J

    move-result-wide v3

    .line 1260
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setAiMattingCilpStart(J)V

    .line 1262
    :goto_1c1
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEAIMatting;->getSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;

    move-result-object v1

    if-nez v1, :cond_1c8

    goto :goto_1d7

    .line 1263
    :cond_1c8
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getTimeClipEnd()J

    move-result-wide v2

    .line 1264
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAIMatting;->setAiMattingCilpEnd(J)V

    .line 1269
    :goto_1d7
    invoke-virtual {v12}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v1

    const-string v2, "slot.keyframes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1618
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v2

    if-nez v2, :cond_1fb

    goto :goto_1e4

    .line 1619
    :cond_1fb
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getVolume()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->setVolume(F)V

    .line 1620
    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    const/4 v4, 0x1

    if-nez v3, :cond_20e

    move v3, v4

    goto :goto_20f

    :cond_20e
    move v3, v9

    :goto_20f
    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->setEnableAudio(Z)V

    .line 1621
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getResource()Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;

    move-result-object v2

    invoke-virtual {v14}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->setResourceFile(Ljava/lang/String;)V

    goto :goto_1e4

    :cond_21f
    const-string v1, "insertMediaItems[] success:  NLETrackSlot = "

    .line 1625
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NLETemplateUtils"

    invoke-static {v2, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p1

    goto/16 :goto_60

    :cond_22e
    move-object/from16 v2, p1

    move v1, v10

    goto/16 :goto_49

    :cond_233
    :goto_233
    return-void
.end method

.method public static final insertTextItems(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/util/List;)V
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11a

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_11a

    .line 2
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p0

    const-string v0, "this.tracks"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 423
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v2

    sget-object v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v2, v3, :cond_21

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 844
    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :cond_3f
    if-ge v1, p0, :cond_11a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 845
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    const-string v3, "it.sortedSlots"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1265
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object v4

    const-string v5, "NLETemplateUtils"

    const/4 v6, 0x0

    if-nez v4, :cond_70

    goto :goto_95

    .line 1266
    :cond_70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/ss/android/ugc/cut_ui/TextItem;

    invoke-virtual {v9}, Lcom/ss/android/ugc/cut_ui/TextItem;->getMaterialId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    goto :goto_91

    :cond_90
    move-object v8, v6

    :goto_91
    check-cast v8, Lcom/ss/android/ugc/cut_ui/TextItem;

    if-nez v8, :cond_f5

    .line 1275
    :goto_95
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;

    move-result-object v3

    if-nez v3, :cond_a0

    goto :goto_56

    .line 1276
    :cond_a0
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextTemplate;->getTextClips()Lcom/bytedance/ies/nle/editor_jni/VecNLETextTemplateClipSPtr;

    move-result-object v3

    const-string v4, "nleSegmentTextTemplate.textClips"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1685
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;

    .line 1686
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_bd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_de

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/ss/android/ugc/cut_ui/TextItem;

    invoke-virtual {v9}, Lcom/ss/android/ugc/cut_ui/TextItem;->getMaterialId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "textClip"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    goto :goto_df

    :cond_de
    move-object v8, v6

    :goto_df
    check-cast v8, Lcom/ss/android/ugc/cut_ui/TextItem;

    if-nez v8, :cond_e4

    goto :goto_ad

    .line 1688
    :cond_e4
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/TextItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETextTemplateClip;->setContent(Ljava/lang/String;)V

    const-string v7, "insertTextItems[] success: textClip = "

    .line 1689
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 1690
    :cond_f5
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/TextItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->setContent(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/TextItem;->getRotation()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setRotation(F)V

    .line 1692
    invoke-virtual {v8}, Lcom/ss/android/ugc/cut_ui/TextItem;->getTargetStartTime()J

    move-result-wide v6

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setStartTime(J)V

    const-string v3, "insertTextItems[] success: segmentText = "

    .line 1693
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_11a
    :goto_11a
    return-void
.end method
