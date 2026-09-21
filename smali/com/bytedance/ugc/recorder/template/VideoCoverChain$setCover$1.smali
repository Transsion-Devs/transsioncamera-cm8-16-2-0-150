.class final Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->setCover(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.bytedance.ugc.recorder.template.VideoCoverChain"
    f = "VideoCoverChain.kt"
    l = {
        0x2e
    }
    m = "setCover"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;


# direct methods
.method constructor <init>(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->label:I

    iget-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$setCover$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    const/4 v0, 0x0

    # invokes: Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->setCover(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v0, p0}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->access$setCover(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
