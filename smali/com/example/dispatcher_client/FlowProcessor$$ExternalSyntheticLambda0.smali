.class public final synthetic Lcom/example/dispatcher_client/FlowProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/example/dispatcher_client/FlowProcessor;

.field public final synthetic f$1:Lcom/example/dispatcher_client/FlowContext;


# direct methods
.method public synthetic constructor <init>(Lcom/example/dispatcher_client/FlowProcessor;Lcom/example/dispatcher_client/FlowContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/dispatcher_client/FlowProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/example/dispatcher_client/FlowProcessor;

    iput-object p2, p0, Lcom/example/dispatcher_client/FlowProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/example/dispatcher_client/FlowContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/example/dispatcher_client/FlowProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/example/dispatcher_client/FlowProcessor;

    iget-object p0, p0, Lcom/example/dispatcher_client/FlowProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/example/dispatcher_client/FlowContext;

    invoke-static {v0, p0}, Lcom/example/dispatcher_client/FlowProcessor;->$r8$lambda$_Fd8W0RT1iYMrqdbnuoKfYs_CvA(Lcom/example/dispatcher_client/FlowProcessor;Lcom/example/dispatcher_client/FlowContext;)V

    return-void
.end method
