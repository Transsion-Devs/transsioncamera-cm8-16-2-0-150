.class public Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoldWaterMarkLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;)V
    .registers 3

    .line 535
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 536
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 541
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_7

    goto :goto_16

    .line 544
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$mupdateLocationInfo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception p0

    .line 548
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
