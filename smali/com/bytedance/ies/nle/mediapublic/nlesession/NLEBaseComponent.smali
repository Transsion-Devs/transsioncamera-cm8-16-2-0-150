.class public Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nlemedia/nlesession/basecomponent/INLEBaseComponent;


# instance fields
.field private asyncHandlerThread:Landroid/os/HandlerThread;

.field private innerAsyncHandler:Landroid/os/Handler;

.field private nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field protected nleEditorPublic:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

.field private nleLiftCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized getAsyncHandler()Landroid/os/Handler;
    .registers 4

    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_36

    .line 36
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->asyncHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_25

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "nle-ve-async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;

    .line 38
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->asyncHandlerThread:Landroid/os/HandlerThread;

    goto :goto_30

    :catchall_23
    move-exception v0

    goto :goto_3b

    .line 43
    :cond_25
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;

    .line 45
    :goto_30
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_39

    .line 47
    :cond_36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_23

    .line 35
    :goto_39
    monitor-exit p0

    return-object v0

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_23

    throw v0
.end method

.method protected final getNleEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-object p0
.end method

.method protected final getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleEditorPublic:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "nleEditorPublic"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getNleLiftCycleManager()Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleLiftCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    return-object p0
.end method

.method public injectCoreReplayEditor(Ljava/lang/Object;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEEditor;",
            ")V"
        }
    .end annotation

    .line 23
    instance-of v0, p1, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    if-eqz v0, :cond_b

    .line 24
    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->setNleEditorPublic(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)V

    .line 25
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    :cond_b
    return-void
.end method

.method protected final onDestroy()V
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleLiftCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->releaseCallback()V

    return-void
.end method

.method protected final declared-synchronized releaseAsyncHandler()V
    .registers 5

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    :goto_a
    iput-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->innerAsyncHandler:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 56
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->asyncHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 57
    :goto_14
    iput-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->asyncHandlerThread:Landroid/os/HandlerThread;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_19
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_32

    :catchall_17
    move-exception v0

    goto :goto_34

    :catch_19
    move-exception v0

    .line 59
    :try_start_1a
    sget-object v1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_32

    :cond_23
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v3, "NLEVEPublic2: asyncHandlerThread quit failed "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_17

    .line 61
    :goto_32
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_17

    throw v0
.end method

.method public final setLifecyleManager(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)V
    .registers 3

    const-string v0, "nleMediaLifeCycleManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleLiftCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    return-void
.end method

.method protected final setNleEditor(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-void
.end method

.method protected final setNleEditorPublic(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleEditorPublic:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    return-void
.end method

.method protected final setNleLiftCycleManager(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->nleLiftCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    return-void
.end method
