.class public abstract Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStoreStrategy"
.end annotation


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mSettingKey:Ljava/lang/String;

.field private final mStoreScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mSettingKey:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mStoreScope:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method protected getStoreKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mSettingKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getStoreScope()Ljava/lang/String;
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
