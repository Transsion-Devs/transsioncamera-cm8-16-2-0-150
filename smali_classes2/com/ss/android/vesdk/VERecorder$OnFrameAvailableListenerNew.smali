.class public interface abstract Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerNew;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrameAvailableListenerNew"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FORMAT_I420:I = 0x1

.field public static final FORMAT_NV21:I = 0x3

.field public static final FORMAT_TEXTURE_2D:I = 0xa

.field public static final FORMAT_TEXTURE_OES:I = 0xb


# virtual methods
.method public abstract OnFrameAvailable(Landroid/opengl/EGLContext;IIIIJJ)V
.end method

.method public abstract shouldFrameRendered()Z
.end method
