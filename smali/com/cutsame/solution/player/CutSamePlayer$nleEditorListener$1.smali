.class public final Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;
.super Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/player/CutSamePlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceView;Lcom/cutsame/solution/source/CutSameSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cutsame/solution/player/CutSamePlayer;


# direct methods
.method public constructor <init>(Lcom/cutsame/solution/player/CutSamePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;->a:Lcom/cutsame/solution/player/CutSamePlayer;

    .line 1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    const-string v0, "CutSamePlayer"

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;->a:Lcom/cutsame/solution/player/CutSamePlayer;

    # getter for: Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    invoke-static {v1}, Lcom/cutsame/solution/player/CutSamePlayer;->access$getNleEditor$p(Lcom/cutsame/solution/player/CutSamePlayer;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    const-string v1, "model onChanged"

    .line 4
    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;->a:Lcom/cutsame/solution/player/CutSamePlayer;

    # getter for: Lcom/cutsame/solution/player/CutSamePlayer;->d:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    invoke-static {v1}, Lcom/cutsame/solution/player/CutSamePlayer;->access$getNleSession$p(Lcom/cutsame/solution/player/CutSamePlayer;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object v1

    iget-object p0, p0, Lcom/cutsame/solution/player/CutSamePlayer$nleEditorListener$1;->a:Lcom/cutsame/solution/player/CutSamePlayer;

    # getter for: Lcom/cutsame/solution/player/CutSamePlayer;->e:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    invoke-static {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->access$getNleEditor$p(Lcom/cutsame/solution/player/CutSamePlayer;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "onChanged Throwable: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
