.class public Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/util/VEFrameShooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/TERecorder;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/ss/android/vesdk/util/VEFrameShooter;

    invoke-direct {v0}, Lcom/ss/android/vesdk/util/VEFrameShooter;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;

    .line 63
    # setter for: Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/util/VEFrameShooter;->access$002(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/camera/ICameraCapture;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    .line 64
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;

    # setter for: Lcom/ss/android/vesdk/util/VEFrameShooter;->innerRecorder:Lcom/ss/android/vesdk/TERecorder;
    invoke-static {p0, p2}, Lcom/ss/android/vesdk/util/VEFrameShooter;->access$202(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VERecorder;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/ss/android/vesdk/util/VEFrameShooter;

    invoke-direct {v0}, Lcom/ss/android/vesdk/util/VEFrameShooter;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;

    .line 53
    # setter for: Lcom/ss/android/vesdk/util/VEFrameShooter;->capture:Lcom/ss/android/vesdk/camera/ICameraCapture;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/util/VEFrameShooter;->access$002(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/camera/ICameraCapture;)Lcom/ss/android/vesdk/camera/ICameraCapture;

    .line 54
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;

    # setter for: Lcom/ss/android/vesdk/util/VEFrameShooter;->recorder:Lcom/ss/android/vesdk/VERecorder;
    invoke-static {p0, p2}, Lcom/ss/android/vesdk/util/VEFrameShooter;->access$102(Lcom/ss/android/vesdk/util/VEFrameShooter;Lcom/ss/android/vesdk/VERecorder;)Lcom/ss/android/vesdk/VERecorder;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/util/VEFrameShooter;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/util/VEFrameShooter$Builder;->shooter:Lcom/ss/android/vesdk/util/VEFrameShooter;

    return-object p0
.end method
