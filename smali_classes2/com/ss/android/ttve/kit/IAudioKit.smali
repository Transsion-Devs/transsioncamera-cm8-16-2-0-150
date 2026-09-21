.class public interface abstract Lcom/ss/android/ttve/kit/IAudioKit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/kit/IAudioKit$Feature;
    }
.end annotation


# virtual methods
.method public abstract destroy()I
.end method

.method public abstract init()I
.end method

.method public abstract isFeatureSupported(I)Z
.end method

.method public abstract start(Landroid/os/Handler;)I
.end method

.method public abstract stop()I
.end method
