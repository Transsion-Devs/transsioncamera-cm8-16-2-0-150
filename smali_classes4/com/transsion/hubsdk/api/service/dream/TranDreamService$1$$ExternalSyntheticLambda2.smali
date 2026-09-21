.class public final synthetic Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iput-object p2, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$3:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    iget-boolean v2, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$2:Z

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda2;->f$3:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;->$r8$lambda$yrySGl-5LH68k_0N_KOyG974Xic(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    return-void
.end method
