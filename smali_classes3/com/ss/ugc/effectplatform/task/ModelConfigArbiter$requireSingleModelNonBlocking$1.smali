.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;
.super Lcom/ss/ugc/effectplatform/task/BaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModelNonBlocking(ILjava/lang/String;Z)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $businessId:I

.field final synthetic $modelName:Ljava/lang/String;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 111
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->$businessId:I

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->$modelName:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-direct {p0, p4, p1, p2, p1}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iget v1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->$businessId:I

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireSingleModelNonBlocking$1;->$modelName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireSingleModel(ILjava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-void
.end method
