.class Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;


# direct methods
.method public static synthetic $r8$lambda$4TzJNfGpGuU6G3mlZRUE-DW69Mo(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;Landroid/opengl/EGLContext;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->lambda$startTextureRecorder$0(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPxiKyw3cOBCHoibHzDDHL69iAw(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->lambda$startTextureRecorder$1()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$startTextureRecorder$0(Landroid/opengl/EGLContext;)V
    .registers 3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    iget-object v0, v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->prepare(Landroid/opengl/EGLContext;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->startMediaRecorder()V

    return-void

    .line 215
    :catch_d
    const-string p1, "prepare failed"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startTextureRecorder$1()V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    iget-object v0, v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-nez v0, :cond_c

    .line 199
    const-string v0, "mRecorderClient is null"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->onError(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_c
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 205
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_1a

    .line 206
    const-string v0, "eglContext invalid"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->onError(Ljava/lang/String;)V

    return-void

    .line 211
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    new-instance v2, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;Landroid/opengl/EGLContext;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTextureRecorder()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->-$$Nest$fgetmPreviewOperator(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    if-nez v0, :cond_e

    .line 193
    const-string v0, "mPreviewOperator is null"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->onError(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->-$$Nest$fgetmPreviewOperator(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 242
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingResult onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->operationPrepared()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->-$$Nest$fgetmTextureHolder(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/featurelibs/media/ITextureHolder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->startTextureRecorder()V

    return-void

    .line 186
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->this$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;

    invoke-static {p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;->-$$Nest$fgetmBufferHolder(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder;)Lcom/transsion/camera/featurelibs/media/IBufferHolder;

    return-void
.end method
