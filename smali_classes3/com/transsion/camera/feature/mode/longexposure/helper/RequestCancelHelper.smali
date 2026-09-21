.class public Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_REQUEST_CANCEL_IGNORE_STATUS:Ljava/lang/String; = "key_request_cancel_ignore_status"


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public shouldConfirmCancel()Z
    .registers 4

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_request_cancel_ignore_status"

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "off"

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public updateCancelConfirmStatus(Z)V
    .registers 5

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_7

    .line 33
    const-string p1, "on"

    goto :goto_9

    :cond_7
    const-string p1, "off"

    :goto_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    const-string v2, "key_request_cancel_ignore_status"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
