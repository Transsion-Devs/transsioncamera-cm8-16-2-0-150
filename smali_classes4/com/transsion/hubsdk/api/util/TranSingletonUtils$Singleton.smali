.class public abstract Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/util/TranSingletonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()V
    .registers 2

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_16

    .line 12
    monitor-enter p0

    .line 13
    :try_start_5
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_12

    .line 14
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 16
    :cond_12
    :goto_12
    monitor-exit p0

    goto :goto_16

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_10

    throw v0

    .line 18
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
