.class public final Lcom/bytedance/ugc/nlerecorder/NLEExtentionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getCanvasWidth(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, "canvasWidth"

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getTransientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_22

    .line 36
    :cond_14
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getTransientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getTransientExtra(\"canvasWidth\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/16 p0, 0x2d0

    return p0
.end method

.method public static final getVideoPath(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "small_window_video_path"

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getTransientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getTransientExtra(\"small_window_video_path\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;)Lcom/bytedance/ugc/nlerecorder/VideoSourceType;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "VideoSourceType"

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getTransientExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "camera"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 20
    sget-object p0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    return-object p0

    .line 22
    :cond_16
    sget-object p0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->MEDIA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    return-object p0
.end method

.method public static final setCanvasWidth(Lcom/bytedance/ies/nle/editor_jni/NLEModel;I)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, "canvasWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setVideoPath(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Ljava/lang/String;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, "small_window_video_path"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setVideoSourceType(Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;Lcom/bytedance/ugc/nlerecorder/VideoSourceType;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/bytedance/ugc/nlerecorder/VideoSourceType;->CAMERA:Lcom/bytedance/ugc/nlerecorder/VideoSourceType;

    const-string v1, "VideoSourceType"

    if-ne p1, v0, :cond_16

    .line 12
    const-string p1, "camera"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_16
    const-string p1, "media"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->setTransientExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
