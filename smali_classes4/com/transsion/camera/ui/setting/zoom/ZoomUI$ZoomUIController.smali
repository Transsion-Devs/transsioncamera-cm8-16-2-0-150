.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;
.super Lcom/transsion/camera/ui/setting/BaseRunnableController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomUIController"
.end annotation


# instance fields
.field private diffValue:I

.field private isValueIncreasing:Z

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;


# direct methods
.method static bridge synthetic -$$Nest$fgetdiffValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->diffValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisValueIncreasing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->isValueIncreasing:Z

    return p0
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Landroid/os/Handler;)V
    .registers 3

    .line 2131
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    .line 2132
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/BaseRunnableController;-><init>(Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 2128
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->diffValue:I

    const/4 p1, 0x0

    .line 2129
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->isValueIncreasing:Z

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2127
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)Ljava/lang/Object;
    .registers 1

    .line 2127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 2127
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)Ljava/lang/Object;
    .registers 1

    .line 2127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)Ljava/lang/Object;
    .registers 1

    .line 2127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)Landroid/os/Handler;
    .registers 1

    .line 2127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)V
    .registers 1

    .line 2127
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/BaseRunnableController;->stopControlLoop()V

    return-void
.end method


# virtual methods
.method protected applyNewValue(Ljava/lang/Integer;)V
    .registers 3

    .line 2173
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->-$$Nest$monProgressChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;IZ)V

    return-void
.end method

.method protected bridge synthetic applyNewValue(Ljava/lang/Object;)V
    .registers 2

    .line 2127
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->applyNewValue(Ljava/lang/Integer;)V

    return-void
.end method

.method protected calculateStepParameters(I)V
    .registers 4

    .line 2157
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0xa

    div-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->diffValue:I

    .line 2158
    iget p1, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->originalValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->isValueIncreasing:Z

    return-void
.end method

.method protected getControlRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 2137
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;)V

    return-object v0
.end method

.method protected getCurrentValue()Ljava/lang/Integer;
    .registers 1

    .line 2168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getCurrentValue()Ljava/lang/Object;
    .registers 1

    .line 2127
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->getCurrentValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected shouldContinue()Z
    .registers 2

    .line 2163
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->isRunning:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;->getCurrentValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/BaseRunnableController;->expectedValue:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
