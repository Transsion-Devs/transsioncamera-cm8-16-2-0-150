.class public interface abstract Lcom/ss/android/medialib/presenter/AudioMonitorInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MONITOR_TAG:Ljava/lang/String; = "AudioMonitorInterface"


# virtual methods
.method public abstract audioInitError(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioInitSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioReleaseError(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioReleaseSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioStartError(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioStartSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioStopError(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method

.method public abstract audioStopSuccess(Landroid/media/AudioRecord;Ljava/lang/String;)V
.end method
