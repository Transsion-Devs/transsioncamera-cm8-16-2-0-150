.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;


# instance fields
.field private final settingsController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 15
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->settingsController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;
    .registers 2

    .line 15
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->settingsController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-settingsController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    return-object p0
.end method


# virtual methods
.method public delete()V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->delete()V

    return-void
.end method

.method public enableEffect(Z)I
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->enableEffect(Z)I

    move-result p0

    return p0
.end method

.method public enableHighSpeedForSingle(Z)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->enableHighSpeedForSingle(Z)V

    return-void
.end method

.method public enableImageEditor(Z)V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->enableImageEditor(Z)V

    return-void
.end method

.method public enableSimpleProcessor(Z)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->enableSimpleProcessor(Z)V

    return-void
.end method

.method public setAutoPrepare(Z)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setAutoPrepare(Z)V

    return-void
.end method

.method public setDestroyVersion(Z)I
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setDestroyVersion(Z)I

    move-result p0

    return p0
.end method

.method public setDldEnabled(Z)V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setDldEnabled(Z)V

    return-void
.end method

.method public setDldThrVal(I)V
    .registers 2

    .line 89
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setDldThrVal(I)V

    return-void
.end method

.method public setDleEnabled(Z)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setDleEnabled(Z)V

    return-void
.end method

.method public setDleEnabledPreview(Z)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setDleEnabledPreview(Z)V

    return-void
.end method

.method public setForceDetectForFirstFrameByClip(Z)V
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setForceDetectForFirstFrameByClip(Z)V

    return-void
.end method

.method public setImageResizeInfo(IILcom/bytedance/ies/nle/editor_jni/NLEResFillMode;Lcom/bytedance/ies/nle/editor_jni/NLEResizeAlgorithm;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setImageResizeInfo(IILcom/bytedance/ies/nle/editor_jni/NLEResFillMode;Lcom/bytedance/ies/nle/editor_jni/NLEResizeAlgorithm;)V

    return-void
.end method

.method public setLoopPlay(Z)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setLoopPlay(Z)V

    return-void
.end method

.method public setPageMode(I)V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setPageMode(I)V

    return-void
.end method

.method public setPreviewFps(I)I
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setPreviewFps(I)I

    move-result p0

    return p0
.end method

.method public setSurfaceReDraw(Z)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->getSettingsController()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;->setSurfaceReDraw(Z)V

    return-void
.end method
