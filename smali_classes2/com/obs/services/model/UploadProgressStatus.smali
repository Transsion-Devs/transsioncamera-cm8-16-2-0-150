.class public interface abstract Lcom/obs/services/model/UploadProgressStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/model/TaskProgressStatus;


# virtual methods
.method public abstract getAverageSpeed()D
.end method

.method public abstract getInstantaneousSpeed()D
.end method

.method public abstract getTaskStatus(Ljava/lang/String;)Lcom/obs/services/model/ProgressStatus;
.end method

.method public abstract getTaskTable()Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/ProgressStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalSize()J
.end method

.method public abstract getTransferredSize()J
.end method
