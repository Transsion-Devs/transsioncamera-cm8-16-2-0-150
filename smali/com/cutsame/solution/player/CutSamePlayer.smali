.class public final Lcom/cutsame/solution/player/CutSamePlayer;
.super Lcom/cutsame/solution/player/BasePlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/player/CutSamePlayer$WhenMappings;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/cutsame/solution/source/CutSameSource;

.field public final d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

.field public final e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field public f:Lcom/cutsame/solution/compile/CutSameCompiler;

.field public final g:Ljava/util/Set;

.field public i:Ljava/util/HashMap;

.field public final j:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

.field public final k:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

.field public final l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

.field public final m:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

.field public final n:Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;

.field public final o:Lcom/cutsame/solution/player/audio/ICutSameAudio;

.field public final p:Lcom/cutsame/solution/player/video/ICutSameVideo;

.field public q:Lcom/cutsame/solution/draft/ICutSameDraft;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceView;Lcom/cutsame/solution/source/CutSameSource;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/cutsame/solution/player/BasePlayer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/cutsame/solution/player/CutSamePlayer;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->c:Lcom/cutsame/solution/source/CutSameSource;

    .line 8
    sget-object v1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create$default(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p2

    iput-object p2, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    .line 9
    new-instance p3, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    iput-object p3, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 11
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->g:Ljava/util/Set;

    .line 13
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->i:Ljava/util/HashMap;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "context.packageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cutsame/solution/tob/LicenseManager;->INSTANCE:Lcom/cutsame/solution/tob/LicenseManager;

    invoke-virtual {v0}, Lcom/cutsame/solution/tob/LicenseManager;->getBufferinfo$CutSameIF_release()[B

    move-result-object v0

    invoke-virtual {p2, p1, p4, v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->initVeBufferAuth(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 18
    new-instance p4, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/cutsame/solution/player/CutSamePlayer;)V

    iput-object p4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->j:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    .line 39
    new-instance v0, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda1;-><init>(Lcom/cutsame/solution/player/CutSamePlayer;)V

    iput-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->k:Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;

    .line 47
    new-instance v1, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda2;-><init>(Lcom/cutsame/solution/player/CutSamePlayer;)V

    iput-object v1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->l:Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;

    .line 55
    new-instance v2, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda3;-><init>(Lcom/cutsame/solution/player/CutSamePlayer;)V

    iput-object v2, p0, Lcom/cutsame/solution/player/CutSamePlayer;->m:Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;

    .line 61
    new-instance v3, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;

    invoke-direct {v3, p0}, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;-><init>(Lcom/cutsame/solution/player/CutSamePlayer;)V

    iput-object v3, p0, Lcom/cutsame/solution/player/CutSamePlayer;->n:Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;

    .line 77
    new-instance v4, Lcom/cutsame/solution/player/audio/CutSameAudioManager;

    invoke-direct {v4, p3}, Lcom/cutsame/solution/player/audio/CutSameAudioManager;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    iput-object v4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->o:Lcom/cutsame/solution/player/audio/ICutSameAudio;

    .line 80
    new-instance v4, Lcom/cutsame/solution/player/video/CutSameVideoManager;

    invoke-direct {v4, p3, p1}, Lcom/cutsame/solution/player/video/CutSameVideoManager;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cutsame/solution/player/CutSamePlayer;->p:Lcom/cutsame/solution/player/video/ICutSameVideo;

    .line 82
    new-instance p1, Lcom/cutsame/solution/draft/CutSameDraft;

    invoke-direct {p1}, Lcom/cutsame/solution/draft/CutSameDraft;-><init>()V

    invoke-virtual {p1, p3}, Lcom/cutsame/solution/draft/CutSameDraft;->initWith(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->q:Lcom/cutsame/solution/draft/ICutSameDraft;

    .line 85
    invoke-virtual {p3, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->addConsumer(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    .line 86
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->addOnInfoListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V

    .line 87
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->setVideoOutputListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerVideoOutput;)V

    .line 88
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->setOnErrorListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerCommon;)V

    .line 89
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->setFirstFrameListener(Lcom/bytedance/ies/nle/editor_jni/INLEListenerFirstFrame;)V

    .line 90
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;->setLoopPlay(Z)V

    return-void
.end method

.method public static final a(Lcom/cutsame/solution/player/CutSamePlayer;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerFirstFrame$1$1;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$nleListenerFirstFrame$1$1;

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final a(Lcom/cutsame/solution/player/CutSamePlayer;IIFLjava/lang/String;)V
    .registers 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "vesdk error msg: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CutSamePlayer"

    invoke-static {p3, p2}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;

    invoke-direct {p2, p1, p4}, Lcom/cutsame/solution/player/CutSamePlayer$nleErrorListenerCommon$1$1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final a(Lcom/cutsame/solution/player/CutSamePlayer;IJ)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;

    invoke-direct {p1, p2, p3}, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerVideoOutput$1$1;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;I)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getNleEditor$p(Lcom/cutsame/solution/player/CutSamePlayer;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-object p0
.end method

.method public static final synthetic access$getNleSession$p(Lcom/cutsame/solution/player/CutSamePlayer;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    return-object p0
.end method

.method public static final b(Lcom/cutsame/solution/player/CutSamePlayer;IIFLjava/lang/String;)V
    .registers 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x1002

    const-string p3, "CutSamePlayer"

    if-eq p1, p2, :cond_25

    const/16 p2, 0x1014

    if-eq p1, p2, :cond_1a

    const/16 p0, 0x1032

    if-eq p1, p0, :cond_14

    return-void

    .line 0
    :cond_14
    const-string p0, "PlayerState: TE_INFO_SEEK_FLUSH_DONE"

    .line 1
    invoke-static {p3, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    const-string p1, "PlayerState: TE_INFO_VIDEO_PROCESSOR_PREPARED"

    .line 2
    invoke-static {p3, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerCommon$1$1;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$nleListenerCommon$1$1;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_25
    const-string p1, "PlayerState: TE_INFO_EOF"

    .line 8
    invoke-static {p3, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/cutsame/solution/player/CutSamePlayer$nleListenerCommon$1$2;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$nleListenerCommon$1$2;

    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 21
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->g:Ljava/util/Set;

    .line 252
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cutsame/solution/player/PlayerStateListener;

    .line 253
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final cancelCompile()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/cutsame/solution/compile/CutSameCompiler;->cancelCompile()V

    return-void
.end method

.method public final compileNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Lcom/cutsame/solution/compile/CompileParam;Lcom/bytedance/ies/cutsame/util/Size;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V
    .registers 14

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    if-nez v0, :cond_1e

    .line 2
    new-instance v0, Lcom/cutsame/solution/compile/CutSameCompiler;

    iget-object v1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cutsame/solution/player/CutSamePlayer;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/cutsame/solution/compile/CutSameCompiler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    .line 4
    :cond_1e
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object v0

    if-eqz p4, :cond_33

    .line 6
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    iget v1, p4, Lcom/bytedance/ies/cutsame/util/Size;->width:I

    iget p4, p4, Lcom/bytedance/ies/cutsame/util/Size;->height:I

    invoke-direct {v0, v1, p4}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;-><init>(II)V

    :cond_33
    move-object v6, v0

    .line 9
    iget-object v2, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    if-nez v2, :cond_39

    return-void

    :cond_39
    const-string p0, "videoResolution"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/cutsame/solution/compile/CutSameCompiler;->compileOriginal(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Lcom/cutsame/solution/compile/CompileParam;Lcom/bytedance/ies/nle/editor_jni/PairIntInt;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V

    return-void
.end method

.method public final getConfigCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->getVideoResolution()Lcom/bytedance/ies/nle/editor_jni/PairIntInt;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/bytedance/ies/cutsame/util/Size;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getFirst()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/PairIntInt;->getSecond()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/bytedance/ies/cutsame/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getExportDraft()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->done()Z

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->store()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public pause()V
    .registers 3

    const-string v0, "CutSamePlayer"

    const-string v1, "pause"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->pause()I

    .line 3
    sget-object v0, Lcom/cutsame/solution/player/CutSamePlayer$pause$1;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$pause$1;

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final preparePlay(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 4

    const-string v0, "playModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CutSamePlayer"

    const-string v1, "preparePlay nleModel"

    .line 3249
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->setModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 3251
    iget-object p1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    .line 3252
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->prepare()I

    return-void
.end method

.method public final preparePlay(Ljava/util/List;Ljava/util/List;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->c:Lcom/cutsame/solution/source/CutSameSource;

    const-string v1, "CutSamePlayer"

    if-nez v0, :cond_c

    const-string p0, "preparePlay cutSameSource is null!"

    .line 2
    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_c
    invoke-virtual {v0, p1, p2}, Lcom/cutsame/solution/source/CutSameSource;->prepareNLEModel$CutSameIF_release(Ljava/util/List;Ljava/util/List;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p2

    if-nez p2, :cond_18

    const-string p0, "preparePlay nleModel is null!"

    .line 9
    invoke-static {v1, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 11
    invoke-virtual {v3}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_3f

    :cond_38
    const-string p1, "getSplitModel mediaItems isFull, return ori nleModel..."

    .line 12
    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31c

    :cond_3f
    :goto_3f
    const-string v2, ""

    if-nez p1, :cond_44

    goto :goto_7c

    .line 225
    :cond_44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 227
    invoke-virtual {v5}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMediaSrcPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 438
    :cond_68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v4, v0

    :goto_6d
    if-ge v4, p1, :cond_7c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/ss/android/ugc/cut_ui/MediaItem;

    .line 439
    invoke-virtual {v2}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getMaterialId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    .line 440
    :cond_7c
    :goto_7c
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    const-string v3, "nleModel.tracks"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8e
    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 580
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v7

    if-lez v7, :cond_8e

    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v6

    sget-object v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v6, v7, :cond_8e

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 721
    :cond_b1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v5, v0

    :cond_b6
    if-ge v5, p1, :cond_ff

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 722
    invoke-virtual {v6}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v6

    const-string v7, "it.sortedSlots"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_cd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 863
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v8

    const-string v9, "segment"

    .line 864
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    const-string v9, "is_mutable"

    invoke-virtual {v8, v9}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    goto :goto_100

    :cond_ff
    const/4 v7, 0x0

    :goto_100
    const-wide/16 v4, 0x0

    if-nez v7, :cond_106

    move-wide v6, v4

    goto :goto_10a

    .line 865
    :cond_106
    invoke-virtual {v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getMeasuredEndTime()J

    move-result-wide v6

    .line 866
    :goto_10a
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "getSplitModel nleModel\uff1a"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSplitModel materialId\uff1a"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endTime: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v6, v4

    if-nez p1, :cond_139

    goto/16 :goto_31c

    .line 872
    :cond_139
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getSortedTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    const-string v1, "nleModel.sortedTracks"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_146
    :goto_146
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 1072
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    if-nez v2, :cond_159

    goto :goto_189

    .line 1271
    :cond_159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15d
    :goto_15d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_189

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1272
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-ltz v5, :cond_175

    .line 1273
    invoke-virtual {v1, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->removeVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    goto :goto_15d

    .line 1274
    :cond_175
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_15d

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_15d

    .line 1275
    invoke-virtual {v4, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_15d

    .line 1279
    :cond_189
    :goto_189
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSortedSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    if-nez v2, :cond_190

    goto :goto_146

    .line 1472
    :cond_190
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_194
    :goto_194
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_146

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 1473
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1e0

    .line 1474
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v5

    sget-object v8, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    if-ne v5, v8, :cond_1cc

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getResourceFile()Ljava/lang/String;

    move-result-object v5

    const-string v8, "dynamicCast(slot.mainSegment).avFile.resourceFile"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1cc

    goto :goto_1e0

    .line 1476
    :cond_1cc
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1e3

    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_1e3

    .line 1477
    invoke-virtual {v4, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_1e3

    .line 1478
    :cond_1e0
    :goto_1e0
    invoke-virtual {v1, v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->removeSlot(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    .line 1483
    :cond_1e3
    :goto_1e3
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getVideoEffects()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoEffectSPtr;

    move-result-object v5

    if-nez v5, :cond_1ea

    goto :goto_21a

    .line 1669
    :cond_1ea
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1ee
    :goto_1ee
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;

    .line 1670
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_206

    .line 1671
    invoke-virtual {v4, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->removeVideoEffect(Lcom/bytedance/ies/nle/editor_jni/NLEVideoEffect;)Z

    goto :goto_1ee

    .line 1672
    :cond_206
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_1ee

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_1ee

    .line 1673
    invoke-virtual {v8, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_1ee

    .line 1677
    :cond_21a
    :goto_21a
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getVideoAnims()Lcom/bytedance/ies/nle/editor_jni/VecNLEVideoAnimationSPtr;

    move-result-object v5

    if-nez v5, :cond_221

    goto :goto_251

    .line 1857
    :cond_221
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_225
    :goto_225
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_251

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;

    .line 1858
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_23d

    .line 1859
    invoke-virtual {v4, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->removeVideoAnim(Lcom/bytedance/ies/nle/editor_jni/NLEVideoAnimation;)Z

    goto :goto_225

    .line 1860
    :cond_23d
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_225

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_225

    .line 1861
    invoke-virtual {v8, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_225

    .line 1865
    :cond_251
    :goto_251
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getKeyframes()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v5

    if-nez v5, :cond_258

    goto :goto_288

    .line 2039
    :cond_258
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25c
    :goto_25c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_288

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 2040
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_274

    .line 2041
    invoke-virtual {v4, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->removeKeyframe(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)Z

    goto :goto_25c

    .line 2042
    :cond_274
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_25c

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_25c

    .line 2043
    invoke-virtual {v8, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_25c

    .line 2047
    :cond_288
    :goto_288
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getFilters()Lcom/bytedance/ies/nle/editor_jni/VecNLEFilterSPtr;

    move-result-object v5

    if-nez v5, :cond_28f

    goto :goto_2bf

    .line 2215
    :cond_28f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_293
    :goto_293
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLEFilter;

    .line 2216
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_2ab

    .line 2217
    invoke-virtual {v4, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->removeFilter(Lcom/bytedance/ies/nle/editor_jni/NLEFilter;)Z

    goto :goto_293

    .line 2218
    :cond_2ab
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_293

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_293

    .line 2219
    invoke-virtual {v8, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_293

    .line 2223
    :cond_2bf
    :goto_2bf
    invoke-virtual {v4}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getChromaChannels()Lcom/bytedance/ies/nle/editor_jni/VecNLEChromaChannelSPtr;

    move-result-object v5

    if-nez v5, :cond_2c7

    goto/16 :goto_194

    .line 2385
    :cond_2c7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2cb
    :goto_2cb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_194

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;

    .line 2386
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_2e3

    .line 2387
    invoke-virtual {v4, v8}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->removeChromaChannel(Lcom/bytedance/ies/nle/editor_jni/NLEChromaChannel;)Z

    goto :goto_2cb

    .line 2388
    :cond_2e3
    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getStartTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-gez v9, :cond_2cb

    invoke-virtual {v8}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->getEndTime()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-lez v9, :cond_2cb

    .line 2389
    invoke-virtual {v8, v6, v7}, Lcom/bytedance/ies/nle/editor_jni/NLETimeSpaceNode;->setEndTime(J)V

    goto :goto_2cb

    .line 2395
    :cond_2f7
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2551
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_302
    :goto_302
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 2552
    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;->size()I

    move-result v2

    if-nez v2, :cond_302

    .line 2553
    invoke-virtual {p2, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->removeTrack(Lcom/bytedance/ies/nle/editor_jni/NLETrack;)Z

    goto :goto_302

    .line 2554
    :cond_31c
    :goto_31c
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getTracks()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSPtr;

    move-result-object p1

    if-nez p1, :cond_323

    goto :goto_388

    .line 2781
    :cond_323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2782
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32c
    :goto_32c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_345

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 2783
    sget-object v4, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->STICKER:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getTrackType()Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v3

    if-ne v4, v3, :cond_32c

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32c

    .line 3013
    :cond_345
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_349
    if-ge v0, p1, :cond_388

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/bytedance/ies/nle/editor_jni/NLETrack;

    .line 3014
    invoke-virtual {v2}, Lcom/bytedance/ies/nle/editor_jni/NLETrack;->getSlots()Lcom/bytedance/ies/nle/editor_jni/VecNLETrackSlotSPtr;

    move-result-object v2

    const-string v3, "track.slots"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3244
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_360
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_349

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;

    .line 3245
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentTextSticker;

    move-result-object v3

    if-nez v3, :cond_377

    goto :goto_360

    .line 3246
    :cond_377
    invoke-virtual {v3}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentSticker;->getAnimation()Lcom/bytedance/ies/nle/editor_jni/NLEStyStickerAnim;

    move-result-object v4

    if-nez v4, :cond_37e

    goto :goto_360

    .line 3247
    :cond_37e
    iget-object v5, p0, Lcom/cutsame/solution/player/CutSamePlayer;->i:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/bytedance/ies/cutsame/util/NLEExtKt;->getMaterialId(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_360

    .line 3248
    :cond_388
    :goto_388
    invoke-virtual {p0, p2}, Lcom/cutsame/solution/player/CutSamePlayer;->preparePlay(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public final registerPlayerStateListener(Lcom/cutsame/solution/player/PlayerStateListener;)V
    .registers 3

    const-string v0, "playerStateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->g:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .registers 3

    const-string v0, "CutSamePlayer release "

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSamePlayer"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {v0}, Lcom/cutsame/solution/compile/CutSameCompiler;->release()V

    .line 5
    :cond_12
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    .line 6
    :goto_1e
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->destroy()I

    .line 7
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->delete()V

    .line 8
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->destroy()V

    .line 9
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->delete()V

    .line 10
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;->delete()V

    .line 11
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->c:Lcom/cutsame/solution/source/CutSameSource;

    if-nez v0, :cond_50

    goto :goto_53

    .line 14
    :cond_50
    invoke-virtual {v0}, Lcom/cutsame/solution/source/CutSameSource;->release()V

    .line 15
    :goto_53
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->delete()V

    .line 16
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    iget-object v1, p0, Lcom/cutsame/solution/player/CutSamePlayer;->n:Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->removeConsumer(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    .line 17
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->n:Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;->delete()V

    .line 18
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_6d

    goto :goto_70

    :cond_6d
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    .line 19
    :goto_70
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->delete()V

    return-void
.end method

.method public final releaseCompile()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/cutsame/solution/compile/CutSameCompiler;->release()V

    :goto_8
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->f:Lcom/cutsame/solution/compile/CutSameCompiler;

    return-void
.end method

.method public final rotateDisplay(Lcom/cutsame/solution/player/RotateDegree;FFII)V
    .registers 12

    const-string v0, "rotateDegree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotateDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSamePlayer"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/cutsame/solution/player/CutSamePlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    const/4 v0, 0x2

    if-eq p1, v0, :cond_52

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4f

    const/4 p1, 0x0

    :goto_4d
    move v3, p1

    goto :goto_58

    :cond_4f
    const/high16 p1, 0x43870000    # 270.0f

    goto :goto_4d

    :cond_52
    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_4d

    :cond_55
    const/high16 p1, 0x42b40000    # 90.0f

    goto :goto_4d

    .line 16
    :goto_58
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;->setDisplayState(FFFII)V

    return-void
.end method

.method public final seekTo(IZLkotlin/jvm/functions/Function1;)V
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seekTo position="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSamePlayer"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/bytedance/ies/nle/mediapublic/util/TimeUtilsKt;->millisToMicros(I)J

    move-result-wide v1

    .line 4
    sget-object p1, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->EDITOR_SEEK_FLAG_LastSeek:Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;

    .line 5
    new-instance v3, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v3, p3}, Lcom/cutsame/solution/player/CutSamePlayer$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->seekTime(JLcom/bytedance/ies/nle/editor_jni/NLESeekFlag;Lcom/bytedance/ies/nle/editor_jni/INLEListenerSeek;)I

    move-result p1

    if-nez p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 10
    invoke-virtual {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->start()V

    return-void

    .line 12
    :cond_2c
    invoke-virtual {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->pause()V

    return-void
.end method

.method public final setLoopPlay(Z)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "setLoopPlay: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CutSamePlayer"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;->setLoopPlay(Z)V

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "CutSamePlayer"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;->play()I

    .line 4
    sget-object v0, Lcom/cutsame/solution/player/CutSamePlayer$start$1;->INSTANCE:Lcom/cutsame/solution/player/CutSamePlayer$start$1;

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/player/CutSamePlayer;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
