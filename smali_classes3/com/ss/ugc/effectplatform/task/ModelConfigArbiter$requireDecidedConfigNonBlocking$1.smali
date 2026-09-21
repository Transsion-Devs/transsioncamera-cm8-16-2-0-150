.class public final Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;
.super Lcom/ss/ugc/effectplatform/task/BaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfigNonBlocking(IZ)Lcom/ss/ugc/effectplatform/model/LoadedModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $businessId:I

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;ILjava/lang/String;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;->$businessId:I

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-direct {p0, p3, p1, p2, p1}, Lcom/ss/ugc/effectplatform/task/BaseTask;-><init>(Ljava/lang/String;Lcom/ss/ugc/effectplatform/listener/CallbackManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .registers 5

    .line 79
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;->this$0:Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;

    iget p0, p0, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter$requireDecidedConfigNonBlocking$1;->$businessId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;->requireDecidedConfig$default(Lcom/ss/ugc/effectplatform/task/ModelConfigArbiter;IZILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
