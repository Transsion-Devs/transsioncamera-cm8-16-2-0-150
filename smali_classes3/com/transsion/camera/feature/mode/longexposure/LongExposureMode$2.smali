.class Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmLongExposureCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmStableState(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->setCurrentStableState(I)V

    .line 430
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/longexposure/LongExposureMode;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
