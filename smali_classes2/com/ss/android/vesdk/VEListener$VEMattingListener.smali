.class public interface abstract Lcom/ss/android/vesdk/VEListener$VEMattingListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VEMattingListener"
.end annotation


# virtual methods
.method public abstract onMattingDoneCallback(F)I
.end method

.method public abstract onMattingErrorCallback(IIFLjava/lang/String;)I
.end method

.method public abstract onMattingProgressCallback(IFFZ)I
.end method

.method public abstract onMattingStartedCallback()I
.end method
