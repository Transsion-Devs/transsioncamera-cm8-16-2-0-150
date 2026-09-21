.class public final synthetic Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;JJI)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    iput-object p2, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$3:J

    iput p7, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    iget-object v1, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$3:J

    iget v6, p0, Lcom/transsion/camera/utils/monitor/WatchDogMonitor$$ExternalSyntheticLambda0;->f$4:I

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->$r8$lambda$-V0GXgkte-O8A5gNt2mCCO74ED8(Lcom/transsion/camera/utils/monitor/WatchDogMonitor;Ljava/lang/String;JJI)V

    return-void
.end method
