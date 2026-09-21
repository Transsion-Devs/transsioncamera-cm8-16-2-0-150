.class public final synthetic Lcom/transsion/hubsdk/api/app/role/TranRoleManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/app/role/TranRoleManager$ITranRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/app/role/TranRoleManager$ITranRemoteCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/app/role/TranRoleManager$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/role/TranRoleManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/app/role/TranRoleManager$ITranRemoteCallback;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/api/app/role/TranRoleManager;->$r8$lambda$2Pye_pelv0AmQf5OcKWjE64tGUA(Lcom/transsion/hubsdk/api/app/role/TranRoleManager$ITranRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
