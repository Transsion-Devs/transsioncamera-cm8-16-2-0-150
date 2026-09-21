.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

.field private final surfaceCallback:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string v0, "mediaSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    .line 16
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 19
    new-instance p2, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

    invoke-direct {p2, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)V

    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceCallback:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

    .line 59
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_18

    goto :goto_26

    :cond_18
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_26

    .line 60
    :cond_1f
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setAndroidSurface(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    .line 62
    :goto_26
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p0, :cond_2b

    return-void

    :cond_2b
    invoke-interface {p0, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Landroid/view/SurfaceHolder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 14
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public static final synthetic access$getMediaSession$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    return-object p0
.end method


# virtual methods
.method public final releaseCallback()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceCallback:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final updateCallback(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_5

    goto :goto_a

    :cond_5
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceCallback:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    :goto_a
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_f

    goto :goto_25

    .line 72
    :cond_f
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_25

    .line 73
    :cond_16
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 74
    iget-object v1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->mediaSession:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;->setAndroidSurface(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLEError;

    :cond_25
    :goto_25
    if-nez p1, :cond_28

    return-void

    .line 77
    :cond_28
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->surfaceCallback:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager$surfaceCallback$1;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
