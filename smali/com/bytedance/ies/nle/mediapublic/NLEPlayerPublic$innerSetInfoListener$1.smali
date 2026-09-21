.class public final Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->innerSetInfoListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorCallback(IIFLjava/lang/String;)V
    .registers 6

    const-string v0, "msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerErrorListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getOuterErrorListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    move-result-object p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;->onCallback(IIFLjava/lang/String;)V

    return-void
.end method

.method public onInfoCallback(IIFLjava/lang/String;)V
    .registers 10

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_9a

    const/16 v0, 0x1005

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x1025

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x1030

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x1031

    if-eq p1, v0, :cond_17

    goto/16 :goto_a6

    .line 118
    :cond_17
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_23

    :cond_20
    invoke-interface {v0, p2}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;->onReleaseEngineUnitResourceError(I)V

    .line 119
    :goto_23
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$setReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;)V

    goto/16 :goto_a6

    .line 115
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->releaseEngineListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_36

    :cond_33
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;->onReleaseEngineUnitResourceSuccess()V

    .line 116
    :goto_36
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$setReleaseEngineListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;Lcom/bytedance/ies/nle/editor_jni/INLEListenerAsyncReleaseEngineUnitResource;)V

    goto :goto_a6

    .line 104
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->videoOutputListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getVideoOutputListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_a6

    :cond_45
    float-to-long v1, p3

    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(J)J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;->onRefresh(IJ)V

    goto :goto_a6

    .line 91
    :cond_4e
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getSeekListenerMap$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    .line 607
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    const/16 v4, 0x3e8

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5e

    .line 94
    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->seekListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getSeekListenerMap$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;->onSeekDone(I)V

    goto :goto_5e

    .line 102
    :cond_9a
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->firstFrameListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getFirstFrameListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

    move-result-object v0

    if-nez v0, :cond_a3

    goto :goto_a6

    :cond_a3
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;->onRendered()V

    .line 121
    :cond_a6
    :goto_a6
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->outerInfoListenerList:Ljava/util/List;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getOuterInfoListenerList$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 609
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    if-nez p4, :cond_c3

    .line 122
    const-string v1, ""

    goto :goto_c4

    :cond_c3
    move-object v1, p4

    :goto_c4
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;->onCallback(IIFLjava/lang/String;)V

    goto :goto_b2

    :cond_c8
    return-void
.end method

.method public onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    .registers 12

    .line 134
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$innerSetInfoListener$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->keyframeListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;->access$getKeyframeListener$p(Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerKeyframe;->onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V

    return-void
.end method
