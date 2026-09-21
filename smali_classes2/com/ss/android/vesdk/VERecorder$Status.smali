.class public final Lcom/ss/android/vesdk/VERecorder$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final IDLE:I = 0x0

.field public static final INTED:I = 0x1

.field public static final PURE_AUDIO_RECORDING:I = 0x4

.field public static final RECORDING:I = 0x3

.field public static final RUNNING:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
