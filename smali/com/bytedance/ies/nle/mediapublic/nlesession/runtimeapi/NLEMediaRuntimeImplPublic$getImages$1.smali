.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getImages(Lcom/bytedance/ies/nle/editor_jni/VecLongLong;IILcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;


# direct methods
.method public static synthetic $r8$lambda$eil209HcppaX4JTA89X-lE48MDo(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->onGetImageDataCalled$lambda-0(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V

    return-void
.end method

.method constructor <init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->$l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    .line 220
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;-><init>()V

    return-void
.end method

.method private static final onGetImageDataCalled$lambda-0(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_8

    goto :goto_11

    :cond_8
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    .line 234
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;->onGetImageData([BIIIF)I

    :goto_11
    const/4 p0, 0x0

    .line 235
    invoke-static {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->access$setGetImageCallback$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;Lcom/bytedance/ies/nle/editor_jni/NLEListenerGetImageWrapper;)V

    .line 237
    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->access$getMediaRuntimeController(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;->cancelGetVideoFrames()I

    return-void
.end method


# virtual methods
.method public onGetImageDataCalled([BIIIF)I
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 230
    :try_start_3
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->$l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    if-nez p0, :cond_8

    return v1

    :cond_8
    invoke-interface/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;->onGetImageData([BIIIF)I

    move-result p0

    return p0

    :catchall_d
    move-exception v0

    move-object p0, v0

    goto :goto_23

    .line 233
    :cond_10
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getAsyncHandler()Landroid/os/Handler;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;->access$getAsyncHandler(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->$l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    new-instance p3, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic$getImages$1$$ExternalSyntheticLambda0;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerGetImage;Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_d

    return v1

    .line 242
    :goto_23
    invoke-static {p0}, Lcom/bytedance/ies/nleeditor/NLEExtKt;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 243
    sget-object p2, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p2}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_52

    .line 244
    :cond_30
    sget-object p3, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_ERROR:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 245
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "NLEVEPublic2: getImages onGetImageDataCalled exception! errorMsg: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " stack: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-virtual {p2, p3, p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_52
    return v1
.end method
