.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEExporter;


# instance fields
.field private final exportController$delegate:Lkotlin/Lazy;

.field private infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

.field private internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

.field private nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 15
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$exportController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$exportController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->exportController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAsyncHandler(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Landroid/os/Handler;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getAsyncHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    return-object p0
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInternalCompileListener$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    return-void
.end method

.method private final ensureCallback()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez v0, :cond_18

    .line 145
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->addMessageListener(Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;)V

    .line 147
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    :cond_18
    return-void
.end method

.method private final getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;
    .registers 2

    .line 15
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->exportController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-exportController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    return-object p0
.end method

.method private final declared-synchronized innerSetInfoListener()V
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;

    if-nez v0, :cond_1c

    .line 97
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->ensureCallback()V

    .line 98
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic$innerSetInfoListener$1;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;)V

    .line 137
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez v1, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;->addMessageListener(Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;)V

    .line 138
    :goto_15
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->infoListener:Lcom/bytedance/ies/nle/mediapublic/NLEVEMessageListener;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 140
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1a

    throw v0
.end method

.method private final setCompileListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 88
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->internalCompileListener:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;

    .line 89
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->innerSetInfoListener()V

    :cond_7
    return-void
.end method


# virtual methods
.method public cancelCompile()I
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->cancelCompile()I

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)Z
    .registers 4

    .line 45
    invoke-direct {p0, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->setCompileListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)V

    .line 46
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 4

    .line 54
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)Z
    .registers 5

    .line 63
    invoke-direct {p0, p4}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->setCompileListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)V

    .line 64
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public delete()V
    .registers 2

    .line 158
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->delete()V

    .line 159
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->nleCallbackClient:Lcom/bytedance/ies/nle/mediapublic/NLEMediaJNIClient;

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaMessageListener;->delete()V

    return-void
.end method

.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->onDestroy()V

    .line 154
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->releaseAsyncHandler()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 155
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getRemuxErrorCode(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 69
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->getRemuxErrorCode(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)I

    move-result p0

    return p0
.end method

.method public isEnableRemuxVideo(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->isEnableRemuxVideo(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public isWatermarkCompileEncode()I
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;->getExportController()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;->isWatermarkCompileEncode()I

    move-result p0

    return p0
.end method
