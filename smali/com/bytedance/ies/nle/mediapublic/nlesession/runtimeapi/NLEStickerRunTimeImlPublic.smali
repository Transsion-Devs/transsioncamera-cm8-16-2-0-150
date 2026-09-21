.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEStickerRuntime;


# instance fields
.field private infoStickerBufferCallback:Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;

.field private final stickerController$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    .line 13
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$stickerController$2;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$stickerController$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->stickerController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method private final getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;
    .registers 2

    .line 13
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->stickerController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-stickerController>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    return-object p0
.end method

.method private final setInnerInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 46
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$setInnerInfoStickerBufferCallback$1;

    invoke-direct {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic$setInnerInfoStickerBufferCallback$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)V

    iput-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->infoStickerBufferCallback:Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;

    :cond_9
    return-void
.end method


# virtual methods
.method public beginInfoStickerPin(Ljava/lang/String;)I
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->beginInfoStickerPin(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelInfoStickerPin(Ljava/lang/String;)I
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->cancelInfoStickerPin(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableStickerAnimationPreview(Ljava/lang/String;Z)I
    .registers 3

    .line 100
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->enableStickerAnimationPreview(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public getInfoStickerBoundingBox(Ljava/lang/String;Z)Lcom/bytedance/ies/nle/editor_jni/NLERectF;
    .registers 4

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerBoundingBox(Ljava/lang/String;Z)Lcom/bytedance/ies/nle/editor_jni/NLERectF;

    move-result-object p0

    const-string p1, "stickerController.getInf\u2026(nleSlotUUID, withRotate)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getInfoStickerPinData(Ljava/lang/String;)[B
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerPinData(Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "stickerController.getInf\u2026ickerPinData(nleSlotUUID)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getInfoStickerPinState(Ljava/lang/String;)I
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerPinState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInfoStickerRotate(Ljava/lang/String;)F
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerRotate(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInfoStickerScale(Ljava/lang/String;)F
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerScale(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "stickerController.getInf\u2026mplateParams(nleSlotUUID)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getInfoStickerVisible(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getInfoStickerVisible(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSrtInfoStickerInitPosition(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEPosition;
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getSrtInfoStickerInitPosition(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/NLEPosition;

    move-result-object p0

    const-string p1, "stickerController.getSrt\u2026InitPosition(nleSlotUUID)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getStickerIsDynamic(Ljava/lang/String;)Z
    .registers 2

    .line 105
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->getStickerIsDynamic(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInfoStickerAnimatable(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->isInfoStickerAnimatable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)I
    .registers 2

    if-nez p1, :cond_3

    goto :goto_f

    .line 37
    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->setInnerInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/INLEListenerInfoStickerBuffer;)V

    .line 38
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p1

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->infoStickerBufferCallback:Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->setInfoStickerBufferCallback(Lcom/bytedance/ies/nle/editor_jni/NLEInfoStickerBufferCallbackWrapper;)I

    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public setInfoStickerRestoreMode(I)I
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->setInfoStickerRestoreMode(I)I

    move-result p0

    return p0
.end method

.method public setInfoStickerTransform(Ljava/lang/String;FFFF)I
    .registers 13

    const/high16 v6, -0x40000000    # -2.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 126
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->setInfoStickerTransform(Ljava/lang/String;FFFFF)I

    move-result p0

    return p0
.end method

.method public setInfoStickerTransform(Ljava/lang/String;FFFFF)I
    .registers 7

    .line 116
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->setInfoStickerTransform(Ljava/lang/String;FFFFF)I

    move-result p0

    return p0
.end method

.method public setSrtManipulateState(Ljava/lang/String;Z)I
    .registers 4

    const-string v0, "nleSlotUUID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->setSrtManipulateState(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public startStickerAnimationPreview(JI)I
    .registers 4

    .line 91
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->startStickerAnimationPreview(JI)I

    move-result p0

    return p0
.end method

.method public stopStickerAnimationPreview()I
    .registers 1

    .line 95
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;->getStickerController()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;->stopStickerAnimationPreview()I

    move-result p0

    return p0
.end method
