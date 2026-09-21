.class Lcom/ss/android/medialib/AVCEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/AVCEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 114
    const-class p0, Lcom/ss/android/medialib/AVCEncoder;

    monitor-enter p0

    .line 115
    :try_start_3
    # invokes: Lcom/ss/android/medialib/AVCEncoder;->safeGetCodecCount()I
    invoke-static {}, Lcom/ss/android/medialib/AVCEncoder;->access$000()I

    .line 116
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
