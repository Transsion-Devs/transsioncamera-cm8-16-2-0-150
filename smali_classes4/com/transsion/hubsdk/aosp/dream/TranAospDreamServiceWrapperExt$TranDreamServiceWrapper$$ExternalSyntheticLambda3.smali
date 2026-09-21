.class public final synthetic Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;


# instance fields
.field public final synthetic f$0:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IRemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/os/IRemoteCallback;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->$r8$lambda$GFAjCsCPEjgaeiFqyYOwcHAP-cg(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
