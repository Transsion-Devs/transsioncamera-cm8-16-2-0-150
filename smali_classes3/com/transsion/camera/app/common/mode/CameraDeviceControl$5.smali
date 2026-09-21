.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->waitDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/Object;)V
    .registers 3

    .line 2375
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2378
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$5;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2380
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
