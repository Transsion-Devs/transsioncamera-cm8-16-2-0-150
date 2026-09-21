.class public Lcom/ss/android/vesdk/VERecorder$FrameConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameConfig"
.end annotation


# static fields
.field public static final TYPE_EFFECT_CAPTURE_IMAGE:I = 0x1

.field public static final TYPE_NONE:I


# instance fields
.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
