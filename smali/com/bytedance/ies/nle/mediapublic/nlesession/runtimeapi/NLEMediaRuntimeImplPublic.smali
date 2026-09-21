.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;


# instance fields
.field private encoderListener:Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;

.field private getImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

.field private final mediaRuntimeController$delegate:Lkotlin/Lazy;

.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;-><init>(Landroid/view/SurfaceView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->surfaceView:Landroid/view/SurfaceView;

    .line 17
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$mediaRuntimeController$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$mediaRuntimeController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->mediaRuntimeController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 15
    :cond_5
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;-><init>(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public static final synthetic access$getAsyncHandler(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)Landroid/os/Handler;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getAsyncHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMediaRuntimeController(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setGetImageCallback$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    return-void
.end method

.method private final getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
    .registers 2

    .line 17
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->mediaRuntimeController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mediaRuntimeController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    return-object p0
.end method

.method private final innerSetEncoderListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 187
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$innerSetEncoderListener$1;

    invoke-direct {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$innerSetEncoderListener$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->encoderListener:Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;

    :cond_9
    return-void
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 276
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->addMetadata(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelGetVideoFrames()I
    .registers 1

    .line 210
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->cancelGetVideoFrames()I

    move-result p0

    return p0
.end method

.method public delete()V
    .registers 2

    .line 366
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->delete()V

    .line 367
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;->delete()V

    .line 368
    :goto_f
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->encoderListener:Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;

    if-nez p0, :cond_14

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;->delete()V

    return-void
.end method

.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    .line 361
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->onDestroy()V

    .line 362
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->releaseAsyncHandler()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 363
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

.method public findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 260
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->findVEParentIdByNLESlotUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediaRuntimeController.f\u2026yNLESlotUUID(nleSlotUUID)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_93

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_93

    .line 127
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getCurrDecodeImageSize(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v2

    if-lez v2, :cond_82

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v2

    if-gtz v2, :cond_20

    goto :goto_82

    .line 138
    :cond_20
    :try_start_20
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_6c

    if-nez v2, :cond_31

    goto :goto_6b

    .line 147
    :cond_31
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    .line 150
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v3

    .line 151
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v1

    .line 147
    invoke-virtual {p0, v2, p1, v3, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getCurrDecodeImage(Ljava/lang/Object;Ljava/lang/String;II)I

    move-result p0

    .line 152
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLEError;->SUCCESS:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result p1

    if-eq p0, p1, :cond_6b

    .line 153
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_61

    .line 154
    :cond_52
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 155
    const-string v3, "NLEVEPublic2: getCurrDecodeImage failed! getCurrDecodeImage failed! "

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-virtual {p1, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 157
    :goto_61
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6a

    .line 158
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6a
    return-object v0

    :cond_6b
    :goto_6b
    return-object v2

    :catch_6c
    move-exception p0

    .line 140
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_76

    goto :goto_81

    .line 141
    :cond_76
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 142
    const-string v2, "NLEVEPublic2: getCurrDecodeImage failed! createBitmap failed! "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p1, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_81
    return-object v0

    .line 129
    :cond_82
    :goto_82
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p0

    if-nez p0, :cond_8b

    goto :goto_92

    .line 130
    :cond_8b
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 131
    const-string v1, "NLEVEPublic2: getCurrDecodeImage failed! getCurrDecodeImageSize failed!"

    .line 129
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_92
    return-object v0

    .line 121
    :cond_93
    :goto_93
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p0

    if-nez p0, :cond_9c

    goto :goto_a3

    .line 122
    :cond_9c
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 123
    const-string v1, "NLEVEPublic2: getCurrDecodeImage failed! empty uuid"

    .line 121
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_a3
    return-object v0
.end method

.method public getCurrDisplayImage()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, -0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getCurrDisplayImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCurrDisplayImage(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_92

    :cond_12
    if-lez p1, :cond_26

    .line 51
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    if-lt p1, v1, :cond_1b

    goto :goto_26

    .line 55
    :cond_1b
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v0

    div-int/2addr v1, v0

    goto :goto_2e

    .line 52
    :cond_26
    :goto_26
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result p1

    .line 53
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v1

    .line 58
    :goto_2e
    rem-int/lit8 v0, p1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    add-int/lit8 p1, p1, 0x1

    .line 61
    :cond_35
    rem-int/lit8 v0, v1, 0x2

    if-ne v0, v2, :cond_3b

    add-int/lit8 v1, v1, 0x1

    :cond_3b
    const/4 v0, 0x0

    .line 67
    :try_start_3c
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_78

    if-eqz p1, :cond_77

    .line 73
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getDisplayImage(Ljava/lang/Object;)I

    move-result p0

    .line 74
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEError;->SUCCESS:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result v1

    if-eq p0, v1, :cond_76

    .line 75
    sget-object v1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v1

    if-nez v1, :cond_5d

    goto :goto_6c

    :cond_5d
    sget-object v2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v3, "NLEVEPublic2: getCurrDisplayImage getDisplayImage failed! "

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 76
    :goto_6c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_76

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_76
    return-object p1

    :cond_77
    return-object v0

    :catchall_78
    move-exception p0

    .line 69
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_82

    goto :goto_91

    :cond_82
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: getCurrDisplayImage createBitmap failed! "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_91
    return-object v0

    :cond_92
    :goto_92
    const/4 p0, 0x0

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getFileInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediaRuntimeController.g\u2026fo(nleSlotUUID, filePath)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getImages(Lcom/bytedance/ies/nle/editor_jni/VecLongLong;IILcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)I
    .registers 7

    .line 220
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;

    invoke-direct {v0, p5, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    move-object p5, p0

    .line 252
    invoke-direct {p5}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    iget-object p5, p5, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getImageCallback:Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getImages(Lcom/bytedance/ies/nle/editor_jni/VecLongLong;IILcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)I

    move-result p0

    return p0
.end method

.method public getInitSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 4

    .line 284
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getInitSize()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result v1

    if-nez v1, :cond_37

    .line 286
    :cond_14
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->surfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_19

    goto :goto_37

    .line 287
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v2, :cond_37

    if-lez v1, :cond_37

    .line 290
    invoke-virtual {p0, v2, v1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getInitSize(II)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->setFirst(I)V

    .line 292
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->setSecond(I)V

    .line 296
    :cond_37
    :goto_37
    const-string p0, "result"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitSize(II)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 3

    .line 301
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getInitSize(II)Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object p0

    const-string p1, "mediaRuntimeController.g\u2026faceWidth, surfaceHeight)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getKeyFrameParam(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getKeyFrameParam(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediaRuntimeController.g\u2026eParam(nleSlotUUID, time)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 264
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediaRuntimeController.getMetadata(key)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPlayFps()F
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getPlayFps()F

    move-result p0

    return p0
.end method

.method public getPreviewFillMode()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;
    .registers 2

    .line 356
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getPreviewFillMode()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;

    move-result-object p0

    const-string v0, "mediaRuntimeController.previewFillMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSingleSlotProcessedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, -0x1

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getSingleSlotProcessedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSingleSlotProcessedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 p2, -0x1

    .line 167
    invoke-virtual {p0, p1, p2, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getSingleSlotProcessedImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSingleSlotProcessedImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-lez p2, :cond_5b

    if-gtz p3, :cond_6

    goto :goto_5b

    .line 100
    :cond_6
    :try_start_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_42

    if-eqz p2, :cond_41

    .line 106
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getSingleTrackProcessedImage(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    .line 107
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLEError;->SUCCESS:Lcom/bytedance/ies/nle/editor_jni/NLEError;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEError;->swigValue()I

    move-result p1

    if-eq p0, p1, :cond_40

    .line 108
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_27

    goto :goto_36

    :cond_27
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v1, "NLEVEPublic2: getCurrDisplayImage getDisplayImage failed! "

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 109
    :goto_36
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_40

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_40
    return-object p2

    :cond_41
    return-object v0

    :catchall_42
    move-exception p0

    .line 102
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_4c

    goto :goto_5b

    :cond_4c
    sget-object p2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string p3, "NLEVEPublic2: getCurrDisplayImage createBitmap failed! "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .registers 2

    .line 348
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getUniqueKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mediaRuntimeController.uniqueKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object p0

    const-string v0, "mediaRuntimeController.videoResolution"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public isUseFilterProcess()Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->isUseFilterProcess()Z

    move-result p0

    return p0
.end method

.method public lockSeekVideoClip(Ljava/lang/String;)I
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->lockSeekVideoClip(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 272
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setBackgroundColor(I)V

    return-void
.end method

.method public setCanvasMinDuration(JZ)I
    .registers 4

    .line 344
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setCanvasMinDuration(JZ)I

    move-result p0

    return p0
.end method

.method public setCanvasSize(II)V
    .registers 3

    .line 340
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setCanvasSize(II)V

    return-void
.end method

.method public setDisplayPos(IIII)V
    .registers 5

    .line 26
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setDisplayPos(IIII)V

    return-void
.end method

.method public setDisplayState(FFFII)V
    .registers 6

    .line 311
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setDisplayState(FFFII)V

    return-void
.end method

.method public setEncoderListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V
    .registers 2

    .line 179
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->innerSetEncoderListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerEncoder;)V

    .line 180
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->encoderListener:Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;

    if-nez p1, :cond_8

    return-void

    .line 181
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setEncoderListener(Lcom/bytedance/ies/nle/editor_jni/NLEEncodeListenerWrapper;)V

    return-void
.end method

.method public setFilterEnable(Ljava/lang/String;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 4

    .line 175
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setFilterEnable(Ljava/lang/String;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    const-string p1, "mediaRuntimeController.s\u2026rEnable(uuid,enable,sync)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHeightWidthRatio(F)I
    .registers 2

    .line 323
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setHeightWidthRatio(F)I

    move-result p0

    return p0
.end method

.method public setMaxWidthAndHeight(JJ)I
    .registers 5

    .line 319
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setMaxWidthAndHeight(JJ)I

    move-result p0

    return p0
.end method

.method public setMetadata(Lcom/bytedance/ies/nle/editor_jni/MapStrStr;)I
    .registers 3

    .line 280
    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Not yet implemented"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlayFps(F)V
    .registers 2

    .line 205
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setPlayFps(F)V

    return-void
.end method

.method public setPreviewFillMode(Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;)Lcom/bytedance/ies/nle/editor_jni/NLEError;
    .registers 2

    .line 352
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setPreviewFillMode(Lcom/bytedance/ies/nle/editor_jni/NLEPlayerPreviewMode;)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    move-result-object p0

    const-string p1, "mediaRuntimeController.setPreviewFillMode(mode)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPreviewSurfaceImage(Landroid/graphics/Bitmap;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 328
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setPreviewSurfaceImage(Ljava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public setPreviewSurfaceImage(Landroid/graphics/Bitmap;Z)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 336
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->setPreviewSurfaceImage(Ljava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public unlockSeekVideoClip()I
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->unlockSeekVideoClip()I

    move-result p0

    return p0
.end method
