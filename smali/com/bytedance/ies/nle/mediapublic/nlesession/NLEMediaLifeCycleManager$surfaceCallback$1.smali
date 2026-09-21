.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private lastPos:J

.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_2c

    .line 28
    :cond_e
    sget-object p2, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_INFO:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NLEVEPublic2: surfaceChanged, size: width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    :goto_2c
    if-eqz p3, :cond_3e

    if-nez p4, :cond_31

    goto :goto_3e

    .line 32
    :cond_31
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setPreviewSurfaceSize(II)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    :cond_3e
    :goto_3e
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_15

    :cond_e
    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_INFO:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v2, "NLEVEPublic2: surfaceCreated"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 44
    :goto_15
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setAndroidSurface(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    .line 45
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->state()Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    if-ne p1, v0, :cond_57

    .line 47
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->prepare()I

    .line 48
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    .line 49
    iget-wide v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->lastPos:J

    .line 50
    sget-object p0, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->EDITOR_SEEK_FLAG_LastSeek:Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;

    .line 48
    invoke-virtual {p1, v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;)I

    return-void

    .line 52
    :cond_57
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PREPARED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    if-ne p1, v0, :cond_69

    .line 53
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->refreshCurrentFrame(I)I

    :cond_69
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {p1}, Lcom/bytedance/ies/nleeditor/NLE;->getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_15

    :cond_e
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_INFO:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    const-string v1, "NLEVEPublic2: surfaceDestroyed"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;->onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V

    .line 37
    :goto_15
    iget-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->lastPos:J

    .line 38
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->releaseAndroidSurface()V

    return-void
.end method
