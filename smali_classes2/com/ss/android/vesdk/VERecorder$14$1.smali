.class Lcom/ss/android/vesdk/VERecorder$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder$14;->surfaceChanged(Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VERecorder$14;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder$14;)V
    .registers 2

    .line 3464
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$14$1;->this$1:Lcom/ss/android/vesdk/VERecorder$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .registers 4

    .line 3467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$14$1;->this$1:Lcom/ss/android/vesdk/VERecorder$14;

    iget-wide p0, p0, Lcom/ss/android/vesdk/VERecorder$14;->val$startTime:J

    sub-long/2addr v0, p0

    const/4 p0, 0x0

    const-string p1, "te_record_preview_radio_switch_time"

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void
.end method
