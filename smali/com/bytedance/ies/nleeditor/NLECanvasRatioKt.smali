.class public final Lcom/bytedance/ies/nleeditor/NLECanvasRatioKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getCanvasRatioEnum(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Lcom/bytedance/ies/nleeditor/NLECanvasRatio;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->values()[Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    move-result-object v0

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCanvasRatio()F

    move-result v4

    invoke-virtual {v3}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->getRatio()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1c

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 24
    :cond_1f
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_OTHER:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    return-object p0
.end method

.method public static final setCanvasRatioEnum(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/bytedance/ies/nleeditor/NLECanvasRatio;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->CANVAS_OTHER:Lcom/bytedance/ies/nleeditor/NLECanvasRatio;

    if-eq p1, v0, :cond_16

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLECanvasRatio;->getRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->setCanvasRatio(F)V

    return-void

    .line 28
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not allow input CANVAS_OTHER"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
