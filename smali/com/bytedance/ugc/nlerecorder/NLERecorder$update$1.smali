.class final Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/nlerecorder/NLERecorder;->update(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $changeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isOnlyBeautyFilter:Z

.field final synthetic $stageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

.field final synthetic this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/nlerecorder/NLERecorder;",
            "Lcom/bytedance/ies/nle/editor_jni/NLEModel;",
            "Z",
            "Ljava/util/List<",
            "Lcom/bytedance/ugc/nlerecorder/diff/NodeChangeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    iput-object p2, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$stageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    iput-boolean p3, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$isOnlyBeautyFilter:Z

    iput-object p4, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$changeInfos:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    # getter for: Lcom/bytedance/ugc/nlerecorder/NLERecorder;->lastStageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    invoke-static {v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->access$getLastStageModel$p(Lcom/bytedance/ugc/nlerecorder/NLERecorder;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$changeInfos:Ljava/util/List;

    .line 91
    # invokes: Lcom/bytedance/ugc/nlerecorder/NLERecorder;->incrementRecorder(Ljava/util/List;)I
    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->access$incrementRecorder(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_16
    if-nez v0, :cond_1f

    .line 92
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$stageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    # invokes: Lcom/bytedance/ugc/nlerecorder/NLERecorder;->rebuild(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->access$rebuild(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 94
    :cond_1f
    iget-boolean v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$isOnlyBeautyFilter:Z

    if-nez v0, :cond_2a

    .line 95
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    iget-object v1, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$stageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    # invokes: Lcom/bytedance/ugc/nlerecorder/NLERecorder;->addOrUpdateSmallWindowTrack(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    invoke-static {v0, v1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->access$addOrUpdateSmallWindowTrack(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 97
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->this$0:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    iget-object p0, p0, Lcom/bytedance/ugc/nlerecorder/NLERecorder$update$1;->$stageModel:Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    invoke-static {v0, p0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->access$setLastStageModel$p(Lcom/bytedance/ugc/nlerecorder/NLERecorder;Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method
