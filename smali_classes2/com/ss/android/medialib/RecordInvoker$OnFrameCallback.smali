.class public interface abstract Lcom/ss/android/medialib/RecordInvoker$OnFrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/RecordInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameCallback"
.end annotation


# virtual methods
.method public abstract onFrame(ID)V
.end method

.method public abstract onFrame(Ljava/nio/ByteBuffer;IIID)V
.end method

.method public abstract onInit(Landroid/opengl/EGLContext;IIIJ)V
.end method
