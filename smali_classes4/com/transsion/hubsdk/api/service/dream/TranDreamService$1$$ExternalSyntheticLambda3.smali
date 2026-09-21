.class public final synthetic Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iput p2, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iget p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->$r8$lambda$fstWUJ1ttdvV23ICFoP_qx-sNnE(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V

    return-void
.end method
