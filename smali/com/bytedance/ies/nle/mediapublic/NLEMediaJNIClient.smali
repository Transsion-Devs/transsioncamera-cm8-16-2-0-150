.class public final Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;
.super Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;
.source "SourceFile"


# instance fields
.field private final messageListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addMessageListener(Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;)V
    .registers 3

    const-string v0, "nleveMessageListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearListener()V
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onError(IIFLjava/lang/String;)V
    .registers 7

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 93
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    if-nez p4, :cond_19

    .line 45
    const-string v1, ""

    goto :goto_1a

    :cond_19
    move-object v1, p4

    :goto_1a
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;->onErrorCallback(IIFLjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    goto :goto_8

    :catchall_1e
    move-exception p0

    .line 48
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 49
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_2c

    goto :goto_4e

    .line 50
    :cond_2c
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NLEVEPublic2: onError exception! errorMsg: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onInfo(IIFLjava/lang/String;)V
    .registers 6

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 91
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    .line 29
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;->onInfoCallback(IIFLjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_8

    :catchall_18
    move-exception p0

    .line 32
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_26

    goto :goto_48

    .line 34
    :cond_26
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 35
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NLEVEPublic2: onInfo exception! errorMsg: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    const-string v0, "parentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :try_start_5
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 95
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 61
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;->onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    goto :goto_d

    :catchall_25
    move-exception v0

    move-object p0, v0

    .line 64
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 65
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_34

    goto :goto_56

    .line 66
    :cond_34
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 67
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NLEVEPublic2: onError exception! errorMsg: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public onKeyFrameProcessWithType(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    .registers 13

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->messageListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    .line 80
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;->onKeyFrameProcess(Ljava/lang/String;JLjava/lang/String;Lcom/bytedance/ies/nle/editor_jni/KeyframeType;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_21

    move-object p1, v2

    move-wide p2, v3

    move-object p4, v5

    move-object p5, v6

    goto :goto_8

    :catchall_21
    move-exception v0

    move-object p0, v0

    .line 83
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 84
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_52

    .line 85
    :cond_30
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 86
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "NLEVEPublic2: onError exception! errorMsg: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method
