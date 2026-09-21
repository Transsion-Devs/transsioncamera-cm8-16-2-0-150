.class public interface abstract Lcom/ss/android/vesdk/VEListener$VEEditorAIProcessListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VEEditorAIProcessListener"
.end annotation


# virtual methods
.method public abstract onAIProcessDone(II)V
.end method

.method public abstract onAIProcessError(IIFLjava/lang/String;)V
.end method

.method public abstract onAIProcessProgress(IIF)V
.end method
