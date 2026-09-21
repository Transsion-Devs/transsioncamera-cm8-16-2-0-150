.class public final synthetic Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranRemoteCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
