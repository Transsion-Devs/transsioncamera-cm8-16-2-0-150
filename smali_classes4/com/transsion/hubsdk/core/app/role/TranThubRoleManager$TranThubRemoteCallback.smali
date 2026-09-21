.class public Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;
.super Lcom/transsion/hubsdk/app/role/ITranRemoteCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranThubRemoteCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/transsion/hubsdk/app/role/ITranRemoteCallback$Stub;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;->mCallback:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/role/TranThubRoleManager$TranThubRemoteCallback;->mCallback:Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;

    if-eqz p0, :cond_7

    .line 127
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/os/TranAospRemoteCallbackExt$ITranRemoteCallback;->onResult(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method
