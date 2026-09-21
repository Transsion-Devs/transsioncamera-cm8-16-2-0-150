.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayTracker"
.end annotation


# instance fields
.field private mDisplayChanged:Z

.field private mScreenFormType:I


# direct methods
.method static bridge synthetic -$$Nest$mdisplayChanged(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->displayChanged()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdisplayDetect(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->displayDetect(I)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mScreenFormType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;-><init>()V

    return-void
.end method

.method private displayChanged()Z
    .registers 4

    .line 330
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayChanged mDisplayChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    return p0
.end method

.method private displayDetect(I)Z
    .registers 4

    if-nez p1, :cond_6

    .line 318
    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mScreenFormType:I

    if-nez v0, :cond_c

    :cond_6
    if-eqz p1, :cond_12

    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mScreenFormType:I

    if-nez v0, :cond_12

    .line 320
    :cond_c
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mScreenFormType:I

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    goto :goto_15

    :cond_12
    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    .line 325
    :goto_15
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayDetect mDisplayChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$DisplayTracker;->mDisplayChanged:Z

    return p0
.end method
