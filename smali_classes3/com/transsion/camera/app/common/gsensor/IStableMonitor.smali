.class public interface abstract Lcom/transsion/camera/app/common/gsensor/IStableMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;
    }
.end annotation


# direct methods
.method public static statusToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 33
    const-string p0, "STATUS_WRONG"

    return-object p0

    .line 31
    :cond_b
    const-string p0, "STATUS_STABLE"

    return-object p0

    .line 29
    :cond_e
    const-string p0, "STATUS_UNSTABLE"

    return-object p0

    .line 27
    :cond_11
    const-string p0, "STATUS_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public abstract getLastStatus()I
.end method

.method public abstract init()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unInit()V
.end method
