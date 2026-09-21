.class final Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoLock"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .registers 1

    return-void
.end method

.method public lockInterruptibly()V
    .registers 1

    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 664
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryLock()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 4

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public unlock()V
    .registers 1

    return-void
.end method
