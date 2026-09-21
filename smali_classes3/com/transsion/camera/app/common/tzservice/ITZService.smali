.class public interface abstract Lcom/transsion/camera/app/common/tzservice/ITZService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;
    }
.end annotation


# virtual methods
.method public abstract getOffPeakModeSupportCfg()[I
.end method

.method public abstract hasTZService()Z
.end method

.method public abstract hasTZService(Z)Z
.end method

.method public abstract onBackgroundStorageInit()V
.end method

.method public abstract onStorageReady()Z
.end method

.method public abstract setAppIOOperationStart(II)V
.end method

.method public abstract setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setScreenState(I)V
.end method

.method public abstract setTZCapConfig(JII)V
.end method

.method public abstract setTZServiceCallback(Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;)V
.end method
