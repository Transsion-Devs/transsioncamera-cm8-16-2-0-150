.class Lcom/transsion/camera/app/ui/FullZoomUIItel$1;
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

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUIItel;Ljava/lang/String;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->mInVideoMode:Z

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmVideRecording(Lcom/transsion/camera/app/ui/FullZoomUIItel;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->val$value:Ljava/lang/String;

    const-string/jumbo v1, "value_storage_sufficient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUIItel$1;->this$0:Lcom/transsion/camera/app/ui/FullZoomUIItel;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->-$$Nest$fgetmTranslateNormalY(Lcom/transsion/camera/app/ui/FullZoomUIItel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUIItel;->translateWideCamera(IZ)V

    :cond_29
    return-void
.end method
