.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEMattingRuntime;


# instance fields
.field private final mediaRuntimeController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 8
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic$mediaRuntimeController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;->mediaRuntimeController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;
    .registers 2

    .line 8
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;->mediaRuntimeController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mediaRuntimeController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    return-object p0
.end method


# virtual methods
.method public removeMattingListener()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;->removeMattingListener()V

    return-void
.end method

.method public setMattingListener(Lcom/bytedance/ies/nle/editor_jni/INLEMattingListener;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;->getMediaRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;->setMattingListener(Lcom/bytedance/ies/nle/editor_jni/INLEMattingListener;)V

    return-void
.end method
