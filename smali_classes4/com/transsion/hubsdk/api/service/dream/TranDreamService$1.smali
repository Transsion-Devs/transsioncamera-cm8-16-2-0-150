.class Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getTranDreamServiceWrapper(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

.field final synthetic val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;


# direct methods
.method public static synthetic $r8$lambda$fstWUJ1ttdvV23ICFoP_qx-sNnE(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V
    .registers 2

    .line 129
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;->notifyAodAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrySGl-5LH68k_0N_KOyG974Xic(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .registers 5

    .line 95
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;->attach(Landroid/os/IBinder;ZLcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranRemoteCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_14

    .line 95
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    # getter for: Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public detach()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_17

    .line 106
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    # getter for: Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public notifyAodAction(I)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_14

    .line 129
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    # getter for: Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public wakeUp()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    if-eqz v0, :cond_17

    .line 117
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->this$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService;

    # getter for: Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->val$iTranDreamService:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method
