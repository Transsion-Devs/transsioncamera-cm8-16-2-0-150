.class Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThrottleChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;-><init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V

    return-void
.end method


# virtual methods
.method public onThermalChanged(I)V
    .registers 2

    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$ThermalThrottleChangeListenerImpl;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->onThermalThrottleChangedConfig(I)V

    return-void
.end method
