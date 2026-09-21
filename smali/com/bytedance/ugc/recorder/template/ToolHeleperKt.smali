.class public final Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final contain(JJJ)Z
    .registers 8

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    cmp-long p2, p2, p0

    const/4 p3, 0x0

    if-gtz p2, :cond_e

    cmp-long p0, p0, p4

    if-gez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return p3
.end method

.method public static final hit(Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;JJ)Z
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result v0

    if-nez v0, :cond_65

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result v0

    if-nez v0, :cond_65

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v5

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result v0

    if-nez v0, :cond_65

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v5

    move-wide v1, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result v0

    if-nez v0, :cond_65

    add-long v0, p1, p3

    const-wide/16 v2, 0x2

    .line 14
    div-long v4, v0, v2

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result v0

    if-nez v0, :cond_65

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v4

    add-long/2addr v0, v4

    div-long v1, v0, v2

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ugc/recorder/template/ToolHeleperKt;->contain(JJJ)Z

    move-result p0

    if-eqz p0, :cond_63

    goto :goto_65

    :cond_63
    const/4 p0, 0x0

    return p0

    :cond_65
    :goto_65
    const/4 p0, 0x1

    return p0
.end method
