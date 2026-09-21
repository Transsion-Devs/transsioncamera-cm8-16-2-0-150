.class Lcom/transsion/camera/app/ui/FullZoomUIItel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUIItel;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->showWideCamera()V

    return-void
.end method
