.class public final Lcom/bytedance/ies/cutsame/prepare/PrepareExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ignoreAngle(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;
    .registers 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_32

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getRotation()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_18

    goto :goto_32

    .line 18
    :cond_18
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v4

    const/16 v14, 0xff1

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    return-object v0

    .line 16
    :cond_32
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getWidth()I

    move-result v4

    const/16 v14, 0xff1

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v15}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->copy$default(Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;Ljava/lang/String;IIIIIIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object v0

    return-object v0
.end method
