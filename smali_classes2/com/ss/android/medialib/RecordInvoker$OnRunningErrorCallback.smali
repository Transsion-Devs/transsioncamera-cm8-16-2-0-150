.class public interface abstract Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;
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
    name = "OnRunningErrorCallback"
.end annotation


# static fields
.field public static final EXT_SHOT_SCREEN_FRAME_CAPTURED:I = 0x6e

.field public static final FRAG_HW_ENCODER_ERR:I = -0x259

.field public static final INIT_FRAG_OUTPUT_ERR:I = -0x25a

.field public static final TYPE_SHOT_SCREEN:I = 0x406


# virtual methods
.method public abstract onAccurateInfo(ID)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onInfo(II)V
.end method
