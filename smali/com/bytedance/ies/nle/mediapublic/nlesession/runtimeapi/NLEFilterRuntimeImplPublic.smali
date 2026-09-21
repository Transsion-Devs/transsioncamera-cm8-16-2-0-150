.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;
.super Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEFilterRuntime;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;-><init>()V

    return-void
.end method

.method private final getFilterController()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getFilterApi()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    move-result-object p0

    const-string v0, "nleEditorPublic.filterApi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/VecInt;
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;->getFilterController()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/VecInt;

    move-result-object p0

    const-string p1, "filterController.checkCo\u2026th, oldNodePath, nodeKey)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public doLensOneKeyDetect()I
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;->getFilterController()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->doLensOneKeyDetect()I

    move-result p0

    return p0
.end method

.method public getColorFilterIntensity(Ljava/lang/String;)F
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;->getFilterController()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->getColorFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecFloat;Ljava/lang/String;)I
    .registers 5

    .line 30
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;->getFilterController()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;->updateMultiComposerNodes(Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecString;Lcom/bytedance/ies/nle/editor_jni/VecFloat;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
