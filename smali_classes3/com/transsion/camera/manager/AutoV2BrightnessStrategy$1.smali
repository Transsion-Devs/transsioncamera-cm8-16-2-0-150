.class Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;-><init>(Lcom/transsion/camera/manager/BrightnessStrategy$BrightnessControl;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;Landroid/os/Handler;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$1;->this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 38
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy$1;->this$0:Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;->-$$Nest$monSystemBrightnessChange(Lcom/transsion/camera/manager/AutoV2BrightnessStrategy;ZLandroid/net/Uri;)V

    return-void
.end method
