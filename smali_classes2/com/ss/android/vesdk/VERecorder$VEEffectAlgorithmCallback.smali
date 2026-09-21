.class public interface abstract Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VEEffectAlgorithmCallback"
.end annotation


# static fields
.field public static final BODY:I = 0x10

.field public static final FACE_DETECT:I = 0x1

.field public static final FACE_TRACK:I = 0x20

.field public static final HAIR:I = 0x4

.field public static final JOINT:I = 0x40

.field public static final MATTING:I = 0x2

.field public static final SLAM:I = 0x8


# virtual methods
.method public abstract onResult(Landroid/util/SparseArray;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;F)V"
        }
    .end annotation
.end method
