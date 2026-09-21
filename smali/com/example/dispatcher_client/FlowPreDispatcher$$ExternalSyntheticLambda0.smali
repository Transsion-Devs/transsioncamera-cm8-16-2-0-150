.class public final synthetic Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/example/dispatcher_client/FlowPreDispatcher;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Lcom/example/dispatcher_client/ClientProcessCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/example/dispatcher_client/FlowPreDispatcher;Landroid/content/Context;Landroid/os/Bundle;Lcom/example/dispatcher_client/ClientProcessCallBack;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/example/dispatcher_client/FlowPreDispatcher;

    iput-object p2, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/example/dispatcher_client/ClientProcessCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/example/dispatcher_client/FlowPreDispatcher;

    iget-object v1, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/example/dispatcher_client/FlowPreDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/example/dispatcher_client/ClientProcessCallBack;

    invoke-static {v0, v1, v2, p0}, Lcom/example/dispatcher_client/FlowPreDispatcher;->$r8$lambda$2Jrjv_0K__w8pbkMrKpJHAjkqSY(Lcom/example/dispatcher_client/FlowPreDispatcher;Landroid/content/Context;Landroid/os/Bundle;Lcom/example/dispatcher_client/ClientProcessCallBack;)V

    return-void
.end method
