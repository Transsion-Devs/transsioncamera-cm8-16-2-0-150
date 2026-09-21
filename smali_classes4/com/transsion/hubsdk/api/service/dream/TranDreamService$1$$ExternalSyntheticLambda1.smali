.class public final synthetic Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;->wakeUp()V

    return-void
.end method
