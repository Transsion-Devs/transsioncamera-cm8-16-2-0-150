.class Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs$1;->this$0:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalChanged(I)V
    .registers 5

    .line 48
    invoke-static {}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThermalChanged temperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs$1;->this$0:Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->-$$Nest$fputmCurrentTemperature(Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;I)V

    return-void
.end method

.method public onThermalThrottleChanged(I)V
    .registers 4

    .line 43
    invoke-static {}, Lcom/transsion/camera/app/common/taps/skilpolicy/BackgroundSkipPolicySpecs;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThermalThrottleChanged temperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
