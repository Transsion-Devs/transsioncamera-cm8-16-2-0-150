.class Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;->this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;->this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    iget-object v1, v0, Lcom/transsion/camera/manager/BrightnessStrategy;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 92
    invoke-virtual {v0}, Lcom/transsion/camera/manager/BrightnessStrategy;->getSystemBrightness()I

    move-result v0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$2;->this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    invoke-static {p0, v0}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->-$$Nest$monBrightnessAuto(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;I)V

    :cond_f
    return-void
.end method
