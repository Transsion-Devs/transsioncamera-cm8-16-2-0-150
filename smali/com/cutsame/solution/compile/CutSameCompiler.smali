.class public final Lcom/cutsame/solution/compile/CutSameCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const-string v0, "workSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_f

    .line 2
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    .line 3
    iget-object v1, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p1

    iput-object p1, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    .line 10
    :cond_f
    sget-object p1, Lcom/cutsame/solution/tob/LicenseManager;->INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;

    invoke-virtual {p1}, Lcom/cutsame/solution/tob/LicenseManager;->getBufferinfo$CutSameIF_release()[B

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 12
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->initVeBufferAuth(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void

    :cond_2b
    const-string p0, "CutSameCompiler"

    const-string p1, "LicenseManager.getBufferinfo failed"

    .line 14
    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cancelCompile()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez p0, :cond_5

    goto :goto_b

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getExporterApi()Lcom/bytedance/ies/nle/editor_jni/INLEExporter;

    move-result-object p0

    if-nez p0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-interface {p0}, Lcom/bytedance/ies/nle/editor_jni/INLEExporter;->cancelCompile()I

    return-void
.end method

.method public final compileOriginal(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Lcom/cutsame/solution/compile/CompileParam;Lcom/bytedance/ies/nle/editor_jni/PairIntInt;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V
    .registers 9

    const-string v0, "nleEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoResolution"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_1b

    .line 2
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/compile/CutSameCompiler;->a(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    .line 4
    :cond_1b
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    .line 5
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_23

    goto :goto_2a

    :cond_23
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 7
    :goto_2a
    iget-object p1, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->d:Ljava/util/Map;

    if-nez p1, :cond_2f

    goto :goto_5f

    .line 102
    :cond_2f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    iget-object v1, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v1, :cond_48

    goto :goto_37

    :cond_48
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object v1

    if-nez v1, :cond_4f

    goto :goto_37

    :cond_4f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->addMetadata(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_5f
    :goto_5f
    const/4 p1, 0x2

    if-nez p3, :cond_c4

    .line 107
    sget-object p3, Lcom/cutsame/solution/compile/ExportResolution;->V_1080P:Lcom/cutsame/solution/compile/ExportResolution;

    invoke-virtual {p3}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v0

    .line 108
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/ExportResolution;->getHeight()I

    move-result v1

    .line 109
    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v2

    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result p4

    if-ge v2, p4, :cond_7e

    .line 110
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/ExportResolution;->getHeight()I

    move-result v0

    .line 111
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v1

    .line 114
    :cond_7e
    new-instance p3, Lcom/cutsame/solution/compile/CompileSize;

    invoke-direct {p3, v0, v1}, Lcom/cutsame/solution/compile/CompileSize;-><init>(II)V

    .line 116
    new-instance p4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p4, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 117
    sget-object p1, Lcom/cutsame/solution/compile/CompileHelper;->INSTANCE:Lcom/cutsame/solution/compile/CompileHelper;

    invoke-virtual {p1}, Lcom/cutsame/solution/compile/CompileHelper;->getFps()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p4

    .line 118
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileSize;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileSize;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/cutsame/solution/compile/CompileHelper;->calculatorBps(II)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p4

    .line 119
    invoke-virtual {p1}, Lcom/cutsame/solution/compile/CompileHelper;->getGopSize()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p4

    .line 120
    invoke-virtual {p1}, Lcom/cutsame/solution/compile/CompileHelper;->getHwEncoder()Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileSize;->getWidth()I

    move-result p4

    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileSize;->getHeight()I

    move-result p3

    invoke-virtual {p1, p4, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    goto/16 :goto_156

    .line 124
    :cond_c4
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getResolution()Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v0

    .line 125
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getResolution()Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/compile/ExportResolution;->getHeight()I

    move-result v1

    .line 126
    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v2

    invoke-virtual {p4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result p4

    if-ge v2, p4, :cond_ee

    .line 127
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getResolution()Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cutsame/solution/compile/ExportResolution;->getHeight()I

    move-result v0

    .line 128
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getResolution()Lcom/cutsame/solution/compile/ExportResolution;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cutsame/solution/compile/ExportResolution;->getWidth()I

    move-result v1

    .line 131
    :cond_ee
    new-instance p4, Lcom/cutsame/solution/compile/CompileSize;

    invoke-direct {p4, v0, v1}, Lcom/cutsame/solution/compile/CompileSize;-><init>(II)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compileinfo compileParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/cutsame/solution/compile/CompileSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/cutsame/solution/compile/CompileSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSameCompiler"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 135
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getFps()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getBps()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getGopSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p3}, Lcom/cutsame/solution/compile/CompileParam;->getSupportHwEncoder()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p4}, Lcom/cutsame/solution/compile/CompileSize;->getWidth()I

    move-result p3

    invoke-virtual {p4}, Lcom/cutsame/solution/compile/CompileSize;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    .line 142
    :goto_156
    iget-object p0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez p0, :cond_15b

    goto :goto_161

    :cond_15b
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getExporterApi()Lcom/bytedance/ies/nle/editor_jni/INLEExporter;

    move-result-object p0

    if-nez p0, :cond_162

    :goto_161
    return-void

    :cond_162
    const-string p3, "settings"

    .line 143
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;->toNLEVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;

    move-result-object p1

    new-instance p3, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;

    invoke-direct {p3, p5, p2}, Lcom/cutsame/solution/compile/CutSameCompiler$compileOriginal$2;-><init>(Lcom/bytedance/ies/cutsame/veadapter/CompileListener;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1, p3}, Lcom/bytedance/ies/nle/editor_jni/INLEExporter;->compile(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLEVideoEncodeSettings;Lcom/bytedance/ies/nle/editor_jni/INLEListenerCompile;)Z

    return-void
.end method

.method public final release()V
    .registers 3

    const-string v0, "CutSameCompiler"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->hasDelete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_72

    .line 3
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_21

    goto :goto_2b

    :cond_21
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    .line 4
    :goto_2b
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_30

    goto :goto_3a

    :cond_30
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    if-nez v0, :cond_37

    goto :goto_3a

    :cond_37
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->destroy()I

    .line 5
    :goto_3a
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_3f

    goto :goto_49

    :cond_3f
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    if-nez v0, :cond_46

    goto :goto_49

    :cond_46
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->delete()V

    .line 6
    :goto_49
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_4e

    goto :goto_58

    :cond_4e
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getExporterApi()Lcom/bytedance/ies/nle/editor_jni/INLEExporter;

    move-result-object v0

    if-nez v0, :cond_55

    goto :goto_58

    :cond_55
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEExporter;->destroy()V

    .line 7
    :goto_58
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_5d

    goto :goto_67

    :cond_5d
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getExporterApi()Lcom/bytedance/ies/nle/editor_jni/INLEExporter;

    move-result-object v0

    if-nez v0, :cond_64

    goto :goto_67

    :cond_64
    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEExporter;->delete()V

    .line 8
    :goto_67
    iget-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    if-nez v0, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->delete()V

    :goto_6f
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/cutsame/solution/compile/CutSameCompiler;->c:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    :cond_72
    return-void
.end method
