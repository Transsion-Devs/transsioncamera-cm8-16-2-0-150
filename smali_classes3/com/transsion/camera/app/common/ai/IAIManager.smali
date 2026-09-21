.class public interface abstract Lcom/transsion/camera/app/common/ai/IAIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REQUEST_STATUS_COMPLETED:I = 0x3

.field public static final REQUEST_STATUS_FAILED:I = 0x4

.field public static final REQUEST_STATUS_PROCESSING:I = 0x2

.field public static final REQUEST_STATUS_QUEUING:I = 0x1


# virtual methods
.method public abstract captureLimited()Z
.end method

.method public abstract captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end method

.method public abstract captureWait()Z
.end method

.method public abstract featureSupport(Ljava/lang/String;)Z
.end method

.method public abstract getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;
.end method

.method public abstract getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract limitedCount()I
.end method

.method public abstract refresh()V
.end method

.method public abstract reload()V
.end method

.method public abstract remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end method

.method public abstract removedTemplate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end method

.method public abstract retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
.end method

.method public abstract setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public abstract setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
.end method

.method public abstract terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
.end method
