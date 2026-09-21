.class public Lcom/bytedance/labcv/core/util/UserData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_VERSION:Ljava/lang/String; = "invalid_fingerprint"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "Makeup_fingerprint"


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/UserData;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .registers 4

    .line 23
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/UserData;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "invalid_fingerprint"

    .line 24
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "Makeup_fingerprint"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 5

    .line 28
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/UserData;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 29
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    const-string v2, "Makeup_fingerprint"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
