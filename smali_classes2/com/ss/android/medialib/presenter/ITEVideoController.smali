.class public interface abstract Lcom/ss/android/medialib/presenter/ITEVideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;,
        Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;
    }
.end annotation


# virtual methods
.method public abstract pause()V
.end method

.method public abstract restart()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setEnableEffCtrl(Z)V
.end method

.method public abstract setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
.end method

.method public abstract setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
.end method

.method public abstract start()V
.end method
