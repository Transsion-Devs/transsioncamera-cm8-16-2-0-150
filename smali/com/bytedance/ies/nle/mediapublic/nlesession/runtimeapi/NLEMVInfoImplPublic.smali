.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEMVInfo;


# instance fields
.field private final mvController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 17
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic$mvController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic$mvController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;->mvController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getMvController()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;
    .registers 2

    .line 17
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;->mvController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mvController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    return-object p0
.end method


# virtual methods
.method public getMVDuration()J
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;->getMvController()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;->getMVDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMVInfo()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;->getMvController()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;->getMVInfo()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoBean;

    move-result-object p0

    const-string v0, "mvController.mvInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getMVOriginalBackgroundAudio()Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;->getMvController()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;->getMVOriginalBackgroundAudio()Lcom/bytedance/ies/nle/editor_jni/NLEMVAudioInfo;

    move-result-object p0

    const-string v0, "mvController.mvOriginalBackgroundAudio"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMVListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerMVInit;)V
    .registers 2

    return-void
.end method
