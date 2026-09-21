.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEBrushRuntime;


# instance fields
.field private final brushRuntimeController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 14
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic$brushRuntimeController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic$brushRuntimeController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->brushRuntimeController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;
    .registers 2

    .line 14
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->brushRuntimeController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-brushRuntimeController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    return-object p0
.end method


# virtual methods
.method public begin2DBrush()I
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->begin2DBrush()I

    move-result p0

    return p0
.end method

.method public end2DBrush(Ljava/lang/String;)I
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->end2DBrush(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public get2DBrushStrokeCount()I
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->get2DBrushStrokeCount()I

    move-result p0

    return p0
.end method

.method public is2DBrushEmpty()Z
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->is2DBrushEmpty()Z

    move-result p0

    return p0
.end method

.method public processPanEvent(FFFFF)I
    .registers 6

    .line 65
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->processPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public processTouchDownEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->processTouchDownEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I

    move-result p0

    return p0
.end method

.method public processTouchUpEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I
    .registers 4

    .line 55
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->processTouchUpEvent(FFLcom/bytedance/ies/nle/editor_jni/NLEGestureType;)I

    move-result p0

    return p0
.end method

.method public set2DBrushCanvasAlpha(F)I
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->set2DBrushCanvasAlpha(F)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(I)I
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->set2DBrushColor(I)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->set2DBrushSize(F)I

    move-result p0

    return p0
.end method

.method public undo2DBrush()I
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;->getBrushRuntimeController()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;->undo2DBrush()I

    move-result p0

    return p0
.end method
